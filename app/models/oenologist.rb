class Oenologist < ApplicationRecord
    has_and_belongs_to_many :magazines
    has_many :scores
    has_and_belongs_to_many :wines
end
