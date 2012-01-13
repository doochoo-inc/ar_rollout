require 'rails/generators'
require 'rails/generators/active_record'

class ArRolloutGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  extend ActiveRecord::Generators::Migration

  source_root File.expand_path("../templates", __FILE__)

  desc "This generator creates the initializer file at config/initializers"
  def copy_initializer_file
    copy_file "ar_rollout.rb", "config/initializers/ar_rollout.rb"
    migration_template "migration.rb", "db/migrate/create_ar_rollout"
  end

end


