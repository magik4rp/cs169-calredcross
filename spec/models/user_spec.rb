require "spec_helper"

describe User, :type => :model  do 
    
    @user_one = User.create!(:id => 6, :name => "Weird Dance", :email => "hi@gmail.com", :password => "miseryisme", :major => "CS")
    it 'should get the member' do 
        
        id_num = User.find_by_email("sampleofficer@gmail.com")
        id_num2 = id_num.id
        @user_three = User.new(:name => "Full Name")
        @user = User.new(:name => "whatver ", :id => 1)
        @user_three.getMember(6)
    end 
 
end 