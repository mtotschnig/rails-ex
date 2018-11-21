class CreateCommunityMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :community_members do |t|
      t.integer :member_id
      t.integer :community_id
    end
  end
end
