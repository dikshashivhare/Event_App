class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :state
      t.string :country
      t.string :venue
      t.float :latitude
      t.float :longitude
      t.string :cover_image
      t.references :event_organizer, foreign_key: true
      t.references :event_category, foreign_key: true
      t.boolean :is_featured
      t.string :slug

      t.timestamps
    end
  end
end
