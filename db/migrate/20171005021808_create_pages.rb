class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :url, null: false, index: true
      t.string :status_code, null: false, index: true

      t.timestamps
    end
  end
end
