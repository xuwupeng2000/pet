class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.references :page, index: true
      t.string :tag_type, index: true
      t.text :tag_content

      t.timestamps
    end
  end
end
