class AddClientRefToApps < ActiveRecord::Migration[7.0]
  def change
    add_reference :apps, :client, foreign_key: true, null: false
  end
end
