class Demo < ApplicationRecord
  include Validatable
  has_one :sub_demo

  before_create :greeting_message

  def greeting_message
    puts "Hey! I will run before creating a new record."
  end
end