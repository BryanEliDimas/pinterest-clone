class Pin < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader # called this because I ran: rails g uploader Image
  validates :image, presence: true
end
