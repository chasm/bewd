class User
  include Mongoid::Document

  field :email
  field :name
  field :is_admin, type: Boolean

end
