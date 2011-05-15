namespace :db do
  desc "Rollback and re-run a migration"
  task :redo => ["rollback", "migrate"] do
  end
end
