class UserAdminLeavesController < ApplicationController
def edit
@userAdminLeave=UserAdminLeave.find(1)

end
def update
	#@leave=leave_count_params
	@userAdminLeave=UserAdminLeave.find(params[:id])
	leave=params[:user_admin_leave]
	tempLeave=leave[:leave_count].to_i-@userAdminLeave.leave_count.to_i
	@users=User.all
	@users.each do |user|
		user.update(leave_count:user[:leave_count]+tempLeave)
	end
	@userAdminLeave.update(leave_count:leave[:leave_count])
	redirect_to "/leaves"
end
private

    
end
