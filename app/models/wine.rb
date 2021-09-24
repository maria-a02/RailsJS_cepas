class Wine < ApplicationRecord
    has_many :assemblies
    has_many :strains, through: :assemblies
    has_many :wine_scores
    has_many :oenologists, through: :wine_scores
    accepts_nested_attributes_for :assemblies, reject_if: :all_blank
    #accepts_nested_attributes_for :wine_scores, reject_if: :all_blank
end
