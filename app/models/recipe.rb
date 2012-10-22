class Recipe < ActiveRecord::Base
  belongs_to :user
  
  before_save :generate_key_if_needed
  
  def to_param
    self.key
  end
  
private
  
  def generate_key_if_needed
    self.key = Key.generate if self.key.blank?
  end
end
