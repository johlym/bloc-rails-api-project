class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :created_at, :updated_at

  # Customized serialized attributes

  # THERE BE DRAGONS, HERE

end
