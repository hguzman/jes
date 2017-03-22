class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::MiniMagick
  # include CarrierWave::MimeTypes


  # Choose what kind of storage to use for this uploader:
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :web, :if => :image? do
    version :icono do
      process resize_to_fill: [62, 62]
    end
    version :thumb do
      process resize_to_fill: [100, 100]
    end
    version :preview do
      process resize_to_fill: [300,300]
    end
    version :full do
      process resize_to_fill: [1024, 768]
    end
  end

  protected

  def image?(new_file)
      new_file.content_type.start_with? 'image'
  end


end
