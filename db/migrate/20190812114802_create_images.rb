class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :company_id
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
