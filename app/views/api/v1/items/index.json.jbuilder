if @items.present?
  json.status 'SUCCESS'
  json.message 'loaded the item'
  json.data do
    json.items do
      json.array!(@items) do |item|
        json.extract! item, :id, :title, :description, :price, :created_at, :updated_at
        json.image rails_blob_url(item.item_image) if item.item_image.attached?
      end
    end
  end
end