class CreateCampgrounds < ActiveRecord::Migration
  def change
    create_table :campgrounds do |t|
      t.belongs_to :park
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
