class AddPhotoToFlat < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :photo, :string
  end
end
