require "spec_helper"

describe User, :type => :model  do 
    
  #   @disposable_one1 = User.create!(:id => 16, :name => "Weird Dance", :email => "hi313@gmail.com", :password => "miseryisme", :major => "CS")
     
 #   @disposable_one = User.create!(:id => 17, :name => "Weird Dance", :email => "hi314@gmail.com", :password => "miseryisme", :major => "CS")
 
   @disposable_one1 = User.create!(:id => 12, :name => "Weird Dance", :email => "hi31aaaa@gmail.com", :password => "miseryisme", :major => "CS")
    @disposable_one = User.create!(:id => 11, :name => "Weird Dance", :email => "hi31aaaa@gmail.com", :password => "miseryisme", :major => "CS")
    
    @user_one = User.create!(:id => 10, :name => "Weird Dance", :email => "hi3@gmail.com", :password => "miseryisme", :major => "CS")
    it 'should get the member' do 
         
        @user_three = User.new(:name => "Full Name")
        @user = User.new(:name => "whatver ", :id => 1)
        @user_three.getMember(10)
    end 
     it 'should get the member' do 
         
        @user_three = User.new(:name => "Full Name")
        @user = User.new(:name => "whatver ", :id => 1)
        @user_three.getMember(10)
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
        expect(@user_five.getMemberName(10)).to eq("Weird Dance")
        
    end
    
    it 'should be able to get the member email' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4)
        @user_five = User.new(:name => "Members Two", :id => 5)
        expect(@user_five.getMemberEmail(10)).to eq("hi3@gmail.com")
    end
    
    it 'should be able to get the member total hours' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4)
        @user_five = User.new(:name => "Members Two", :id => 5)
        expect(@user_five.getMemberTotalHours(10)).to eq(0)
    end
    
    it 'should be able to get the member semester hours' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4)
        @user_five = User.new(:name => "Members Two", :id => 5)
        expect(@user_five.getMemberSemHours(10)).to eq(0)
    end
    
    
    it 'should be able to update ranking if only an officer' do 
        
        @user_four = User.new(:name => "Members Yo", :id => 4, :is_officer => 1)
        @user_four.updateRanking(10)
    end
     
    it 'should be able to update status if an officer' do 
        @user_four = User.new(:name => "Members Yo", :id => 27, :is_officer => 1)
        @user_four.updateRanking(10)
    end
    
    it 'should be able to update semester hours if an officer (happy path)' do 
        @user_four = User.new(:name => "Members Yo", :id => 26, :is_officer => 1)
        @user_four.updateSemHours(10, 12)
    end
    
    it 'should be able to update semester hours if an officer (sad path)' do 
        @user_four = User.new(:name => "Members Yo", :id => 25, :is_officer => 1)
        @user_four.updateSemHours(10, "12")
    end
        
    it 'should be able to update total hours if an officer (sad path)' do 
        @user_four = User.new(:name => "Members Yo", :id => 24, :is_officer => 1, :email => "random6")
        @user_four.updateTotalHours(10, 12)
    end
    
    it 'should be able to delete another member only if officer (happy path)' do 
        @user_four = User.new(:name => "Members Yo", :id => 23, :is_officer => 1, :email => "random5")
        @user_four.deleteMember(11)
    end 
    
    it 'should be able to delete another member only if officer (sad path)' do 
        @user_four = User.new(:name => "Members Yo", :id => 22, :is_officer => 0, :email => "random4")
        @user_four.deleteMember(12)
    end 
    
        
    it 'should be able to edit name only if correct name (sad path)' do 
        @user_four = User.new(:name => "Members Yo", :id => 21, :is_officer => 0, :email => "random2")
        @user_four.editName("")
    end 
   
            
    it 'should be able to edit name only if correct name (happy path)' do 
        @user_five = User.new(:name => "Members Yo", :id => 20, :is_officer => 0, :email => "random3")
        @user_five.editName("Naomi")
    end 
    
    it 'should be able to edit description' do 
        @user_six = User.new(:name => "Members Yo", :id => 19, :is_officer => 0, :email => "random")
        @user_six.editDescription("Naomi one")
    end 
    
end 