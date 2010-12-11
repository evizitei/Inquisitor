require 'spec_helper'

describe AttemptsController do

  def mock_attempt(stubs={})
    (@mock_attempt ||= mock_model(Attempt).as_null_object).tap do |attempt|
      attempt.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all attempts as @attempts" do
      Attempt.stub(:all) { [mock_attempt] }
      get :index
      assigns(:attempts).should eq([mock_attempt])
    end
  end

  describe "GET show" do
    it "assigns the requested attempt as @attempt" do
      Attempt.stub(:find).with("37") { mock_attempt }
      get :show, :id => "37"
      assigns(:attempt).should be(mock_attempt)
    end
  end

  describe "GET new" do
    it "assigns a new attempt as @attempt" do
      Attempt.stub(:new) { mock_attempt }
      get :new
      assigns(:attempt).should be(mock_attempt)
    end
  end

  describe "GET edit" do
    it "assigns the requested attempt as @attempt" do
      Attempt.stub(:find).with("37") { mock_attempt }
      get :edit, :id => "37"
      assigns(:attempt).should be(mock_attempt)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created attempt as @attempt" do
        Attempt.stub(:new).with({'these' => 'params'}) { mock_attempt(:save => true) }
        post :create, :attempt => {'these' => 'params'}
        assigns(:attempt).should be(mock_attempt)
      end

      it "redirects to the created attempt" do
        Attempt.stub(:new) { mock_attempt(:save => true) }
        post :create, :attempt => {}
        response.should redirect_to(attempt_url(mock_attempt))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved attempt as @attempt" do
        Attempt.stub(:new).with({'these' => 'params'}) { mock_attempt(:save => false) }
        post :create, :attempt => {'these' => 'params'}
        assigns(:attempt).should be(mock_attempt)
      end

      it "re-renders the 'new' template" do
        Attempt.stub(:new) { mock_attempt(:save => false) }
        post :create, :attempt => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested attempt" do
        Attempt.should_receive(:find).with("37") { mock_attempt }
        mock_attempt.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :attempt => {'these' => 'params'}
      end

      it "assigns the requested attempt as @attempt" do
        Attempt.stub(:find) { mock_attempt(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:attempt).should be(mock_attempt)
      end

      it "redirects to the attempt" do
        Attempt.stub(:find) { mock_attempt(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(attempt_url(mock_attempt))
      end
    end

    describe "with invalid params" do
      it "assigns the attempt as @attempt" do
        Attempt.stub(:find) { mock_attempt(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:attempt).should be(mock_attempt)
      end

      it "re-renders the 'edit' template" do
        Attempt.stub(:find) { mock_attempt(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested attempt" do
      Attempt.should_receive(:find).with("37") { mock_attempt }
      mock_attempt.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the attempts list" do
      Attempt.stub(:find) { mock_attempt }
      delete :destroy, :id => "1"
      response.should redirect_to(attempts_url)
    end
  end

end
