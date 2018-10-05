class CreateEventOrganizers < ActiveRecord::Migration[5.1]
  def change
    create_table :event_organizers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :logo_image
      t.string :contact
      t.string :slug

      t.timestamps
    end
  end
end
