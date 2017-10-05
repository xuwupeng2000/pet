class Tag < ApplicationRecord
  belongs_to :page
  validates_presence_of :tag_type

end
