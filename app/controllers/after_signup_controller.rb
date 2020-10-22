class AfterSignupController < Wicked::WizardController
    
    steps :university_details, :interests, :description

    def show
        @user = current_user

        render_wizard
    end

    def update
        @user = current_user

        render_wizard @user
    end

end
