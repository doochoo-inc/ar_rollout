ArRollout.configure do |c|
  c.define_group :admin do |user|
    user.name == "admin"
  end

  c.define_group :radio do |user|
    ["enrico"].include? user.name
  end
end