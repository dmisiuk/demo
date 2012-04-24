class Statuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.string  :name
    end
    Status.create :name => "Planned"
    Status.create :name => "Unplanned"
    Status.create :name => "Unknown"
  end

  def self.down
    drop_table :statuses
  end
end
