require "spec_helper"

describe User, :type => :model  do 
    
     it 'should get the member' do 
         
        @user_three = User.new(:name => "Full Name")
        @user = User.new(:name => "whatver ", :id => 1)
        @user_three.getMember(3)
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
        expect(@user_five.getMemberName(3)).to eq("sample_officer")
        
    end
    
    it 'should be able to get the member email' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4)
        @user_five = User.new(:name => "Members Two", :id => 5)
        expect(@user_five.getMemberEmail(3)).to eq("sampleofficer@gmail.com")
    end
    
    it 'should be able to get the member total hours' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4)
        @user_five = User.new(:name => "Members Two", :id => 5)
        expect(@user_five.getMemberTotalHours(3)).to eq(30)
    end
    
    it 'should be able to get the member semester hours' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4)
        @user_five = User.new(:name => "Members Two", :id => 5)
        expect(@user_five.getMemberSemHours(3)).to eq(24)
    end
    
    
    it 'should be able to update ranking if only an officer' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4, :is_officer => 1)
        @user_four.updateRanking(3)
    end
    
    
 
end 