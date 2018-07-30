class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  if Rails.env.test?
    CarrierWave.configure do |config|
      config.enable_processing = false
    end
  else
    process resize_to_limit: [400, 400]
  end

  storage :file

  # アップロードファイルの保存先ディレクトリは上書き可能
  # 下記はデフォルトの保存先  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # アップロード可能な拡張子のリスト
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
