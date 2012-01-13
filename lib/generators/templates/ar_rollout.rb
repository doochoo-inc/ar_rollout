ArRollout.configure do |configure|
  # # Here you can define the logic for your own groups
  # # For example, if you have a admin? method for your User class
  # # you can define an :admin group:

  # configure.define_group :admin do |user|
  #   user.admin?
  # end

  # What if you want to add your 3 developers using email to a :dev group?
  # configure.define_group :devs do |user|
  #   ["alice@yourcompany.com", "bob@yourcompany.com"].include? user.email
  # end
end