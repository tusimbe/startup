module WelcomeHelper
  def isWelcome?
    params[:controller] == "welcome"
  end
end
