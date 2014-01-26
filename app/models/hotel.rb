class Hotel
  include Mongoid::Document
  embeds_many :comments
  belongs_to :trip
  field :name, type: String
  field :city, type: String
  field :address, type: Array
  field :phone, type: Array
  field :active, type: Boolean, default: false
  field :created_at, type: DateTime
  field :updated_at, type: DateTime
  validates :name, presence: true
  validates :city, presence: true
  validates :name, uniqueness: true
end

class Comment
  include Mongoid::Document
  field :name, type: String
end
