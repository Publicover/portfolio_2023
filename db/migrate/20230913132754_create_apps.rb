class CreateApps < ActiveRecord::Migration[7.0]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :img_url
      t.text :description
      t.string :short_description
      t.string :time_period
      t.text :additional_notes
      t.text :biggest_challenge

      t.timestamps
    end
  end
end
