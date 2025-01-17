# lib/my_custom_current_user_provider.rb
module MyCustomCurrentUserProvider

  def current_user
    # Custom logic before or after calling the original method
    # @current_user = User.find(4)
    # @current_user
  end

  def log_on_user(user, session)
    # Completely replace or enhance the behavior of this method
    Rails.logger.info("Logging in user: #{user.username} with custom logic")
    super(user, session)
  end
end
