require "spec_helper"

describe User, :type => :model  do 
    
    @user_one = User.new(:id => 6, :name => "Weird Dance", :email => "hi3@gmail.com", :password => "miseryisme", :major => "CS")
    it 'should get the member' do 
         
        @user_three = User.new(:name => "Full Name")
        @user = User.new(:name => "whatver ", :id => 1)
        @user_three.getMember(6)
    end 
    
       
    it 'should be able to identify itself as an officer' do 
        @user_four = User.new(:name => "Members Yo", :is_officer => 1)
        val = @user_four.isOfficer
        if val 
            true  
        end 
    end 
    
    it 'should be able to identify itself as not an officer' do 
        @user_four = User.new(:name => "Members Yo", :is_officer => 0)
        val = @user_four.isOfficer
        if val == false  
            true  
        end 
    end 
    
    it 'should be able to get the member name' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4)
        @user_five = User.new(:name => "Members Two", :id => 5)
        expect(@user_five.getMemberName(6)).to eq("Weird Dance")
        
    end
    
    it 'should be able to get the member email' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4)
        @user_five = User.new(:name => "Members Two", :id => 5)
        expect(@user_five.getMemberEmail(6)).to eq("hi@gmail.com")
    end
    
    it 'should be able to get the member total hours' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4)
        @user_five = User.new(:name => "Members Two", :id => 5)
        expect(@user_five.getMemberTotalHours(6)).to eq(0)
    end
   
    
 
end 