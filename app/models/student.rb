class Student < ActiveRecord::Base
  belongs_to :tutor

  def self.search(search)
    where("tutor_id LIKE ?","%#{search :tutor_id}%")
  end
end
