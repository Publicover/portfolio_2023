class DropSkillsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :skills, if_exists: true
  end
end
