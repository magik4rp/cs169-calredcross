require "spec_helper"

describe ProfileController, :type => :controller  do 
  
   # before :each do        
    #    @user=create(:user)
   #     sign_in @user
   # end

    it 'should update some details' do 
        @user2 = double("user", {:id => "2", :name => "314", :details => "My name is Steven"})
        @user.stub(:update).with(:details => "updateee")
    end 
    
end 