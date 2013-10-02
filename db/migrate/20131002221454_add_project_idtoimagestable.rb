class AddProjectIdtoimagestable < ActiveRecord::Migration

  def up
  	add_column :images, :project_id, :integer
  end

  def down
  	remove_column :images, :project_id, :integer
  end
end
