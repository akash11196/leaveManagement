class UsersController < ApplicationController
	def index
		@users=User.all
	end
	def show
		@userAdmin=UserAdminLeave.find(1)
		@user=User.find(params[:id])
		@leaves=Leave.where(user_id:@user.id)

	end
	def new
		@user=User.new
	end
	def create
	@user = User.new(user_params)
    if @user.save
       log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
	end
	private

    def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
    end
end
