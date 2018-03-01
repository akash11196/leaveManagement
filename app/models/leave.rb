class Leave < ApplicationRecord
  belongs_to :user
  enum status: [:applied,:approved,:rejected]

end
