class CreateCokes < ActiveRecord::Migration[7.1]
  def change
    create_table :cokes do |t|

      t.timestamps
    end
  end
end
