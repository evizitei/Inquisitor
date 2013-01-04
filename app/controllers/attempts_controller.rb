class AttemptsController < ApplicationController
  before_filter :load_quiz,:only=>[:index,:new,:create,:quiz,:edit,:authenticate,:register]
  before_filter :load_student,:only=>[:new,:create]
  # GET /attempts
  # GET /attempts.xml
  def index
    @attempts = Attempt.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attempts }
    end
  end

  # GET /attempts/1
  # GET /attempts/1.xml
  def show
    @attempt = Attempt.find(params[:id])
    session[:student] = nil
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attempt }
    end
  end

  # GET /attempts/new
  # GET /attempts/new.xml
  def new
    @attempt = Attempt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attempt }
    end
  end

  # GET /attempts/1/edit
  def edit
    @attempt = Attempt.find(params[:id])
  end

  # POST /attempts
  # POST /attempts.xml
  def create
    @attempt = Attempt.to_pass_quiz(@quiz,@student,params[:question])
    StudentMailer.certificate_email(@attempt).deliver if @attempt.passed?
    redirect_to(quiz_attempt_path(@quiz,@attempt), :notice => 'Quiz was completed.')
  end

  # PUT /attempts/1
  # PUT /attempts/1.xml
  def update
    @attempt = Attempt.find(params[:id])

    respond_to do |format|
      if @attempt.update_attributes(params[:attempt])
        format.html { redirect_to(@attempt, :notice => 'Attempt was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attempt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attempts/1
  # DELETE /attempts/1.xml
  def destroy
    @attempt = Attempt.find(params[:id])
    @attempt.destroy

    respond_to do |format|
      format.html { redirect_to(attempts_url) }
      format.xml  { head :ok }
    end
  end
  
  def authenticate
    @error = params[:error]
  end
  
  def register
    student = Student.find_by_formatted_organization_id(params[:student_organization_id])
    if student
      session[:student] = student.id 
      redirect_to new_quiz_attempt_path(@quiz)
    else
      redirect_to authenticate_quiz_attempts_path(@quiz,:error=>"Your Id is invalid")
    end
  end
  
protected
  def load_student
    @student = Student.find_by_id(session[:student])
    redirect_to authenticate_quiz_attempts_path(@quiz) if @student.nil?
  end
end
