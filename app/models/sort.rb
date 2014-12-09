class Sort < ActiveRecord::Base
  validates :name, presence: true,
    length: { minimum: 5 }

   mount_uploader :logo, LogoUploader
end
