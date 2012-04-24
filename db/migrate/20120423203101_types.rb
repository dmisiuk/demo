class Types < ActiveRecord::Migration
  def self.up
    create_table :types do |t|
      t.string :name
    end
    Type.create :name => "IT"
    Type.create :name => "Food"
    Type.create :name => "Auto"
    Type.create :name => "Travel"
    Type.create :name => "Other"
  end

  def self.down
    drop_table :types
  end
end
