class CreateFigureTitles < ActiveRecord::Migration[4.2]
  def change
    create_table(:figure_titles)
    add_column(:figure_titles, :title_id, :integer)
    add_column(:figure_titles, :figure_id, :integer)
  end
end
