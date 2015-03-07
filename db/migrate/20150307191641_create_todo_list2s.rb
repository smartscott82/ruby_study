class CreateTodoList2s < ActiveRecord::Migration
  def change
    create_table :todo_list2s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
