task :change_password => :environment do
  User.first.update_attribute(:password => "09876201287ali", :password_confirmation => "09876201287ali")
end

