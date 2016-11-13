class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Set validation
  validates :name, :email, :major, presence: true
  
  
  # Set default avatar to be /public/images/missing_ava.png
  has_attached_file :avatar, :styles => { :medium => "225x225>", :thumb => "100x100#" }, :default_url => "/images/:style/missing_ava.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # Actions can be done by any member
  def isOfficer
    if self.is_officer == 1
      return true
    else
      return false
    end
  end
  
  def editName(new_name)
    if (new_name.length != 0)
      self.update_attribute(:name, new_name)
    else 
      self.update_attribute(:name, "Error: Put a name longer than one letter")
    end 
  end
  
  def editDescription(new_description)
    self.update_attribute(:description, new_description)
  end
  
  def editAvatar(new_avatar)
    File.open("new_avatar", 'wb') do |f|
      f.write new_avatar
      self.update_attribute(:avatar, f)
    end
    
  end
  
  # Actions only happen iff the current user is an officer
  def updateRanking(id)
    member = User.find(id)
    if self.is_officer == 1
      member.update_attribute(:is_officer, 1)
    end
  end
  
  def updateStatus(id, stat)
    member = User.find(id)
    if self.is_officer == 1 
      member.update_attribute(:status, stat)
    end
  end

  
  # Need modification for the level according to the new sem_hours and total_hours
  def updateSemHours(id, new_sem_hours)
    member = User.where(:email => id)
    if self.is_officer == 1
      member.update_all(:sem_hours => new_sem_hours)
    end
  end
  
  def updateTotalHours(id, new_total_hours)
    member = User.where(:email => id)
    if self.is_officer == 1
      member.update_all(:total_hours => new_total_hours)
    end
  end
end
