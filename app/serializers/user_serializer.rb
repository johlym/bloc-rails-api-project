class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :created_at, :updated_at

  # Customized serialized attributes

  # THERE BE DRAGONS, HERE

end
