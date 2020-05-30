class Strain < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    has_and_belongs_to_many :wines
    has_many :scores
end
