require 'minitest_helper'
require 'rails/generators'
require 'rails/generators/active_record'
require 'generators/active_record/impressionist_generator'

class ActiveRecordGeneratorTest < Rails::Generators::TestCase
  tests ActiveRecord::Generators::ImpressionistGenerator

  destination File.expand_path('../../../tmp', __FILE__)

  setup :prepare_destination

  test "must copy migration file" do
    run_generator %w{ impressionist:install }
    assert_migration "db/migrate/impressionist_create_impressions.rb"
  end

end
