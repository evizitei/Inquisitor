module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'
    when /the quiz index page/
      quizzes_path
    when /the student index page/
      students_path
    when /the question index page for "Respiratory Protection"/
      quiz_questions_path(Quiz.find_by_name("Respiratory Protection"))
    when /the quiz start page for "Respiratory Protection"/
      authenticate_quiz_attempts_path(Quiz.find_by_name("Respiratory Protection"))
    when /the quiz taking page for "Respiratory Protection"/
      new_quiz_attempt_path(Quiz.find_by_name("Respiratory Protection"))
      

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
