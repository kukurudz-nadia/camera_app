class ChangePlayersColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :players, :pob, :string
  end
end
