class Image < ApplicationRecord
  belongs_to :company

  mount_uploader :image_name, CompanyUploader

end
