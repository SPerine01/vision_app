class CreateVisions < ActiveRecord::Migration
  def change
    create_table :visions do |t|
      t.string :title
      t.text :goal

      t.timestamps null: false
    end
  end
end
