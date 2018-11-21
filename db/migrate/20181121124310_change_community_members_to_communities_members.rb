class ChangeCommunityMembersToCommunitiesMembers < ActiveRecord::Migration[5.1]
  def change
    rename_table "community_members", "communities_members" 
  end
end
