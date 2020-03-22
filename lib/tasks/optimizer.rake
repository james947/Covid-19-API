# Should backup heroku db and delete the false tables
task :optimize_database do
    puts "cleaning database ..."
    AllCases.destroy_all
    ActiveCases.destroy_all
    ClosedCases.destroy_all
    CountriesData.destroy_all
    puts "database optimized :)"
end