
namespace :app do
namespace :cleanup do

  desc "Run all cleaning jobs"
  task(:all => :environment) do
    Rake::Task['app:cleanup:sessions'].invoke
    Rake::Task['app:cleanup:patchbundles'].invoke
  end
    
  desc "Cleans old sessions"
  task(:sessions => :environment) do
    ActiveRecord::SessionStore::Session.destroy_all(['updated_at < ?', 7.days.ago])
  end
    
  desc "Cleans the patch bundle directory from old entries"
  task(:patchbundles => :environment) do
    require 'patch_bundle'
      
    session_ids = ActiveRecord::SessionStore::Session.all.map(&:session_id)
    PatchBundle.destroy_all(["session_id NOT IN (?)", session_ids])
  end

end
end
