class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def default_url
    "https://res.cloudinary.com/dtbs7luvc/image/upload/v1558457653/631929649c_nl6l4h.svg"
  end
end
