class Oenologist < ApplicationRecord
    has_many :magazines
    has_many :wine_scores
    has_many :wines, through: :wine_scores
end
