class LinkSerializer < ActiveModel::Serializer
  attributes :id, :link, :description, :read, :date_saved, :tags, :created_at, :updated_at
end
