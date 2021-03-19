class Car < ApplicationRecord
    validates :title, presence: true
    validates :color, acceptance:{ accept: ["red","yellow","blue"]}
    
    self.inheritance_column = :_type_disabled

    has_attached_file :image, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: "image/png"

    has_many :driversandcars
    has_and_belongs_to_many :drivers, join_table:"driversandcars"
    
end
