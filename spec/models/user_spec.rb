require "spec_helper"

describe User, :type => :model  do 
    
    it 'should get the member' do 
        id_num = User.find_by_email("sampleofficer@gmail.com")
        id_num2 = id_num.id
        @user_three = User.new(:name => "Full Name")
        @user = User.new(:name => "whatver ", :id => 1)
        @user_three.getMember(id_num2)
    end 
 
end 