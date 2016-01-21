class ChangePollsToPollls < ActiveRecord::Migration
  def change
    rename_table :polls, :pollls
  end
end
