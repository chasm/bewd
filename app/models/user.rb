class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :email
  field :name
  field :is_admin, type: Boolean

  validates :email, presence: true

end
