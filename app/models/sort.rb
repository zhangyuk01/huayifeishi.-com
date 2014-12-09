class Sort < ActiveRecord::Base
  has_many :pages
  validates :name, presence: true,
    length: { minimum: 5 }

   mount_uploader :logo, LogoUploader
end
