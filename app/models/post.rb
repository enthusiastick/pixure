class Post < ActiveRecord::Base
  validates_presence_of :image

  mount_uploader :image, ImageUploader

  def display_title
    if title.nil? || title.empty?
      "Post #{id}"
    else
      title
    end
  end
end
