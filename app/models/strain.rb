class Strain < ApplicationRecord
    has_and_belongs_to_many :wines
    has_many :scores
end
