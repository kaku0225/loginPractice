module SessionsHelper
  def current_user
    if session[:user1111].present?
      @user_2222 ||= User.find_by(id: session[:user1111])
    else
      nil
    end
  end
end