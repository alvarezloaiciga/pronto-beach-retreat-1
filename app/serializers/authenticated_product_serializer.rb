class AuthenticatedProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image_url, :created_at, :updated_at

  def image_url
    object.image.url(:medium)
  end
end
