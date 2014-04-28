class AddResultToApiCall < ActiveRecord::Migration
  def change
    add_column :api_calls, :result, :string
  end
end
