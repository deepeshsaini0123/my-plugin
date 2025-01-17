# plugins/my-plugin/lib/my_plugin_application_controller_extension.rb
module MyPluginApplicationControllerExtension
  extend ActiveSupport::Concern

  included do
    # before_action :my_custom_before_action
  end

  private

  def my_custom_before_action
    # Your custom logic for the before_action
    @current_user = User.last
  end
end
