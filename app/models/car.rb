class Car < ApplicationRecord
  belongs_to :user
  enum size: [:small, :medium, :large, :extralarge]

 after_initialize do
    self.size ||= :medium if new_record?
  end

end
