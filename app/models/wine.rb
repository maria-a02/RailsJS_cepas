class Wine < ApplicationRecord
    has_many :assemblies
    has_many :strains, through: :assemblies

    accepts_nested_attributes_for :assemblies, reject_if: :all_blank
end
