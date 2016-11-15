class MembersController < ApplicationController
  
  def index
    @members = User.getMembers
  end
  def update 
    status = params["status"]
    user = params["member"]
    if status == "false"
      current_user.updateStatus(user, false)
    else 
      current_user.updateStatus(user, true)
    end
  end
  def delete
    member = params["member"]
    current_user.deleteMember(member)
  end
end
