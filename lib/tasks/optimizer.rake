# Should backup heroku db and delete the false tables
task :optimize_database do
    puts "optimizing database... please wait"
    sh "heroku pg:backups:capture --remote production"
    sh "heroku pg:backups:download --remote production"
    puts "optimization done :)"

    puts "cleaning database ..."
    AllCases.destroy_all
    ActiveCases.destroy_all
    ClosedCases.destroy_all
    CountriesData.destroy_all
    puts "database optimized :)"
end