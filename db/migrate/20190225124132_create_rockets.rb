class CreateRockets < ActiveRecord::Migration[5.2]
  def change
    create_table :rockets do |t|
      t.string :name
      t.string :parts

      t.timestamps
    end
  end
end
