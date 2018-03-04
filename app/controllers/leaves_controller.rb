class LeavesController < ApplicationController
	def new
		@leave=Leave.new()
	end
	def create
		@leave = Leave.new(leave_params)
		@leave.user_id=current_user.id
		if @leave.save
			 flash[:success] = "Leave Has been applied"
			 @user=User.find(current_user.id)
			 @user.leave_count-=1;
			 @user.update(leave_count:@user.leave_count)
			 redirect_to showLeaves_url
		end
	end
	def edit
		@leave=Leave.find(params[:id])
	end
	def update
		@leave=Leave.find(params[:id])
		@leave.status=params[:status].to_i
		@leave.update(status:@leave.status)
		redirect_to "/leaves"
	end
	def index
		@leaves=Leave.all
	end
	def show
		@leaves=Leave.where(["user_id = ?", current_user.id]) 
	end
	def destroy
	end
	private

    def leave_params
      params.require(:leave).permit(:reason, :leave_date)
    end
end
