# plugins/my_plugin/app/controllers/my_plugin/custom_data_controller.rb

class MyPluginController < ::ApplicationController
  before_action :ensure_logged_in, only: [:index]

  def index
    render json: { message: "Hello, Bhanwar Singh! This is your custom API.", current_user: current_user }
  end
end
