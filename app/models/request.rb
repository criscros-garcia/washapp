class Request < ApplicationRecord
  belongs_to :client, class_name: 'User'
  belongs_to :partner, class_name: 'User'
end
