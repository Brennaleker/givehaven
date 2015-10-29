# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # include CarrierWave::MiniMagick
  def cache_dir
    "#{Rails.root}/tmp/uploads"
  end
  
  storage :aws
  # Create different versions of your uploaded files:

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
