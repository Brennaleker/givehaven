# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  storage :aws
  # Create different versions of your uploaded files:

  # def store_dir
  #  '#{Rails.root}/public/'
  # end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
