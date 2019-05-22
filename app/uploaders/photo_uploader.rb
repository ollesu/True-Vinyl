class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def default_url
    "https://res.cloudinary.com/dtbs7luvc/image/upload/v1558522871/Untitled_design_8_pqw2su.png"
  end
end
