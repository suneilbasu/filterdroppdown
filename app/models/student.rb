class Student < ActiveRecord::Base
  belongs_to :tutor

  def self.search(search)
    where("tutor_id LIKE ?","%#{search}%")
  end
end
