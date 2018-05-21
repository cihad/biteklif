class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.string :file
      t.references :attachmentable, polymorphic: true

      t.timestamps
    end
  end
end
