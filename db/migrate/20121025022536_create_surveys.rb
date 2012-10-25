class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.text :question1
      t.string :question2

      t.timestamps
    end
  end
end
