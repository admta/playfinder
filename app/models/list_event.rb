class ListEvent < ApplicationRecord
  belongs_to :event
  belongs_to :bucket_list
end
