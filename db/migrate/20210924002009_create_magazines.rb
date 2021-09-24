class CreateMagazines < ActiveRecord::Migration[5.2]
  def change
    create_table :magazines do |t|
      t.string :name
      t.boolean :editor
      t.boolean :reviewer
      t.boolean :writer

      t.timestamps
    end
  end
end
