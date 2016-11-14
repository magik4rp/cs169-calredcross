class MembersController < ApplicationController
  
  def index
    @members = User.getMembers
  end
end
