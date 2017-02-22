class Partner < PushType::Node
  has_child_nodes false
  unexpose!

  field :link, :string
  field :image_id, :asset

  validates :image_id, presence: true

  def image_url
    image.file.url
  end
end
