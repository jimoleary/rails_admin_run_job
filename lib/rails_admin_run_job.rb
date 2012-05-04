require "rails_admin_run_job/engine"

module RailsAdminRunJob
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class RunJob < Base
        RailsAdmin::Config::Actions.register(self)
        
        register_instance_option :member do
          true
        end

        register_instance_option :visible? do
          bindings[:object].is_a?(Delayed::Job)
        end

        register_instance_option :controller do
          Proc.new do
            redirect_to main_app.admin_job_execute_path(params[:id])
          end
        end

        register_instance_option :link_icon do
          "icon-repeat"
        end
      end
    end
  end
end

