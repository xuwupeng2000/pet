class Page < ApplicationRecord
  has_many :tags, :dependent => :destroy
  validates_presence_of :url, :status_code
end
