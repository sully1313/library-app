class CreateLibraryUsers < ActiveRecord::Migration
  def change
    create_table :library_users do |t|
      t.references :user
      t.references :library

      t.timestamps null: false
    end
  end
end
