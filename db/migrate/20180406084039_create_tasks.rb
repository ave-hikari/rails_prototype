class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :task_name, :null => false
      t.datetime :term_at, :null => false
      t.datetime :created_at, default: -> { 'NOW()' }
      t.datetime :updated_at, default: -> { 'NOW()' }
      t.boolean :disp_flag, default:false
      t.boolean :delete_flag, default:false
    end
  end
end
