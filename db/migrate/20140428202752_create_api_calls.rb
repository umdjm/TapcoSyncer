class CreateApiCalls < ActiveRecord::Migration
  def change
    create_table :api_calls do |t|
      t.string :url
      t.datetime :call_time

      t.timestamps
    end
  end
end
