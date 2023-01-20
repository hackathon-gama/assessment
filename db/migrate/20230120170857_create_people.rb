class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :identifier, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
