class Wine < ApplicationRecord
    has_and_belongs_to_many :strains
    has_many :scores
    has_and_belongs_to_many :oenologists
end
