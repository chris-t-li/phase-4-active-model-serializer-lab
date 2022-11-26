class PostSerializer < ActiveModel::Serializer
  attributes :title, :tags, :content, :short_content
  belongs_to :author
  
  def short_content
    # byebug
    "#{self.object.content[0..39]}..."
  end
end
