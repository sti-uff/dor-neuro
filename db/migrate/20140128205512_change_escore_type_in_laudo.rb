class ChangeEscoreTypeInLaudo < ActiveRecord::Migration
  def self.up
   change_column :laudos, :escore, :decimal, :precision => 4, :scale => 1
  end

  def self.down
   change_column :laudos, :escore, :integer
  end
end