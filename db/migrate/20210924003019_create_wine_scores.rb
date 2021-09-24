class CreateWineScores < ActiveRecord::Migration[5.2]
  def change
    create_table :wine_scores do |t|
      t.integer :score
      t.references :wine, foreign_key: true
      t.references :oenologist, foreign_key: true

      t.timestamps
    end
  end
end
