class CreateBrains < ActiveRecord::Migration
  def change
    create_table :brains do |t|

      t.timestamps
    end
  end
end
