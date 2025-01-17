# plugins/my_plugin/app/controllers/my_plugin/custom_data_controller.rb

module ::MyPlugin
  class CustomDataController < ::ApplicationController

    def index
      current_user = "#{@current_user&.username}"
      render json: { message: "Hello,This is your custom API.", current_user: current_user }
    end

    def handle_unverified_request
    end

    def check_xhr
    end
  end
end
