class AfterSignupController < Wicked::WizardController
    before_action :set_user    
    steps :university_details, :interests, :description

    def show

        render_wizard
    end

    def update
        @professor.update(professor_params)
        render_wizard @professor
    end

    private

    def set_user
        @user = current_user
        @professor = @user.professor || Professor.create(user: @user)
    end

    def professor_params
        params.require(:professor).permit(:university_id)
    end

end
