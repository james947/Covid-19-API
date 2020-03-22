# Should backup heroku db and delete the false tables
task :optimize_database do
    puts "optimizing database..."
    # Dir.chdir(Rails.root.join("data")) { ruby "load-data.rb" }
  end