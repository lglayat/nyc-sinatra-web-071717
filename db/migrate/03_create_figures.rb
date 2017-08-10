class CreateFigures < ActiveRecord::Migration[4.2]
  def change
    create_table(:figures)
    add_column(:figures, :name, :string)
  end
end
