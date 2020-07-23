class RenameUserConfrimationSentAtToConfirmationSentAt < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :confrimation_sent_at, :confirmation_sent_at
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
