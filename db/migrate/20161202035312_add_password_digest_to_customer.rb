class AddPasswordDigestToCustomer < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :password_digest, :string
  end
end