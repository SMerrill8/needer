class SessionsController < ApplicationController
    def new
    end

    def create
        if user = User.authenticate_by(email: params[:email], password: params[:password])
            login user
            note = "Welcome", user.email
            if user_org = Organization.find_by(id: user.organization_id)
                note = "Welcome to " + user_org.name
            end
            redirect_to root_path, notice: note
        else
            flash[:alert] = "Invalid email or password."
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        logout current_user
        redirect_to root_path, Notice: "You have been logged out."
    end
end
