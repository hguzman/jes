class Resume < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end
