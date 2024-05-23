class CreateGigs < ActiveRecord::Migration[7.0]
  def change
    create_table :gigs do |t|
      t.string :position
      t.string :img_url
      t.text :description
      t.string :short_description
      t.string :time_period
      t.text :additional_notes
      t.text :biggest_challenge
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
