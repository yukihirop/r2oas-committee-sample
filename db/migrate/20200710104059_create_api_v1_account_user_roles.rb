class CreateApiV1AccountUserRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_account_user_roles do |t|
      t.string :status
      t.string :content

      t.timestamps
    end
  end
end
