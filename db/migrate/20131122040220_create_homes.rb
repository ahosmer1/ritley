class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :link
      t.string :hash_code

      t.timestamps
    end
  end
end
