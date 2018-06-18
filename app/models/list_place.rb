class ListPlace < ApplicationRecord
  belongs_to :place
  belongs_to :bucket_list
end
