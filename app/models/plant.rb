class Plant < ActiveRecord::Base
  belongs_to :user
  has_many :reminders

  def lifespan
    if self.living
      (Time.now.to_date - self.created_at.to_date).numerator
    else
      (self.died_at.to_date - self.created_at.to_date).numerator
    end
  end

end
