class CreateAeras < ActiveRecord::Migration[6.0]
  def change
    create_table :aeras do |t|

      t.timestamps
    end
  end
end
