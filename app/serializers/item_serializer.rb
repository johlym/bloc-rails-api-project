class ItemSerializer < ActiveModel::Serializer
  attributes :id, :entry, :priority, :complete, :list_id, :user_id, :created_at, :updated_at

  # Customized serialized attributes

  # THERE BE DRAGONS, HERE

end
