# Should backup heroku db and delete the false tables
task :db_backup do
    puts "backing up database... please wait"
    sh "heroku pg:backups:capture --remote production"
    sh "heroku pg:backups:download --remote production"
    puts "backup done :)"
end