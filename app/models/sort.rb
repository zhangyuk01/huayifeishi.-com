class Sort < ActiveRecord::Base
  has_many :pages
   mount_uploader :logo, LogoUploader
end
