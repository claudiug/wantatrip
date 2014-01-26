class Trip
  include Mongoid::Document
  embeds_many :comments
  embeds_many :categories
  field :name, type: String
  field :city, type: String
  field :latitude, type: Float
  field :longitute, type: Float
  field :active, type: Boolean, default: true
  field :seo, type: String
  field :description, type: String
  field :created_at, type: DateTime
  field :updated_at, type: DateTime
  validates :name, presence: true
  validates :description, presence: true
  validates :active, presence: true
  validates :seo, presence: true
  validates :city, presence: true
  validates :name, uniqueness: true
end

class Comment
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
end

class Category
  include Mongoid::Document
  field :name, type: String
  validates :name, presence: true
  validates :name, uniqueness: true
end
