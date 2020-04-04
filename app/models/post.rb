class Post <ApplicationRecord
  #  single image post once
  mount_uploader :image, ImageUploader
end
