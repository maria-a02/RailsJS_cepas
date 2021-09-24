class AddOenologistRefToMagazines < ActiveRecord::Migration[5.2]
  def change
    add_reference :magazines, :oenologist, foreign_key: true
  end
end
