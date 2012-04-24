class Campaigns < ActiveRecord::Migration
  def self.up
    create_table :campaigns do |t|
      t.string  :name
      t.integer  :status_id
      t.integer  :type_id
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end

  def self.down
    drop_table :campaigns
  end
end
