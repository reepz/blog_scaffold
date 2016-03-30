class Painting < ActiveRecord::Base
    mount_uploader :my_file, FileUploader
    belongs_to :user
end
