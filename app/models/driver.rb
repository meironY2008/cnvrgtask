class Driver < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true

    has_attached_file :image, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: "image/png"

    has_many :driversandcars
    has_and_belongs_to_many :cars, join_table:"driversandcars"
end
