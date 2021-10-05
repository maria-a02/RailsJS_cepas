class ApplicationController < ActionController::Base
    before_action :set_wine, only: %i[ show edit update destroy ]

    def not_admin
      redirect_to root_path, alert: "Solo Peter puede ver esta cuestión" and return if !current_user.admin
    end
end
