
require 'bloc_record/base'

class Entry < BlocRecord::Base

  validates :name, length: { minimum: 2 }, presence: true
  validates :phone_number, :presence => true, :numericality => true               
  validates_format_of :phone_number, with: /\A\d{3}-\d{3}-\d{4}\z/
  validates :email, :presence => true
  validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  def to_s
    "Name: #{name}\nPhone Number: #{phone_number}\nEmail: #{email}"
  end
end
