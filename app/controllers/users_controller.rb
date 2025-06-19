class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:email, :mot_de_passe, :role)
    end

end
