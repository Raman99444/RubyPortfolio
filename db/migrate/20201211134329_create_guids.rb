class CreateGuids < ActiveRecord::Migration[6.1]
  def change
    create_table :guids do |t|
      t.string :title

      t.timestamps
    end
  end
end
