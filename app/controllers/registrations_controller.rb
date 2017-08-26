class RegistrationsController < ApplicationController
    
    def downgrade
        current_user.update_attributes(role: "standard")
        flash[:success] = "Your premium membership subscription has been cancelled."
        redirect_to root_path
    end
    
    protected
    
    def after_sign_up_path_for(resource)
        get '/wikis'
    end
end
