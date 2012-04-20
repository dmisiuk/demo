class Peaples < ActiveRecord::Migration
  def self.up
    create_table :peaples do |t|
      t.string  :name
      t.role    :name
      t.integer :campaign_id
      t.timestamp :created_at
      t.timestamp :updated_at
    end
    
  end

  def self.down
    drop_table :peaples
  end
end
