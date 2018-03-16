class Company < ApplicationRecord
  belongs_to :sector
  belongs_to :industry
  belongs_to :state
end
