class CreateLandmarks < ActiveRecord::Migration[4.2]
  def change
    create_table(:landmarks)
    add_column(:landmarks, :name, :string)
    add_column(:landmarks, :figure_id, :integer)
    add_column(:landmarks, :year_completed, :integer)
  end
end
