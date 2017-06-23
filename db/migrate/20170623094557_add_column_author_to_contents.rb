class AddColumnAuthorToContents < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :author, :string
  end
end
