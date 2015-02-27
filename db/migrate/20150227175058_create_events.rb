class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :company_id
      t.string :name
    end
  end
end
