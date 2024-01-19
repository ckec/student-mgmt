class Student < ApplicationRecord
  has_many :blogs, dependent: :destroy
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects
  
  validates :first_name, :last_name, :email, presence: true
  

  def display_student_age
    if self.date_of_birth.present?
      age = Date.today.year - self.date_of_birth.year
      puts "Age of the student is #{age}"
    else
      puts "Date of birth is not present"
    end
  end

  def validate_student_age
    if self.date_of_birth.present?
      age = Date.today.year - self.date_of_birth.year
      if age < 15
        errors.add(:date_of_birth, "Age of the student should be greater than 15")
      end
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def name_with_email
    "#{full_name} / #{email}"
  end
end