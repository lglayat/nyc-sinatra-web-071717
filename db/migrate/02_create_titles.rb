class CreateTitles < ActiveRecord::Migration[4.2]
  def change
    create_table(:titles)
    add_column(:titles, :name, :string)
  end
end
