class ChangeCharacterIdToShowId < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :character_id, :show_id
  end
end
