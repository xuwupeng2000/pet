class Page < ApplicationRecord
  has_many :tags, autosave: true, dependent: :destroy

  validates_presence_of :url, :status_code
end
