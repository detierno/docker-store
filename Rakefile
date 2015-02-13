require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

begin
  #require 'rake/testtask'
  require 'rspec/core/rake_task'

  namespace 'test' do
    test_files             = FileList['spec/**/*_spec.rb']
    integration_test_files = FileList['spec/**/*_feature_spec.rb']
    unit_test_files        = test_files - integration_test_files
    #integration_test_files = FileList['spec/**/*_integration_spec.rb']
    #unit_test_files        = test_files - integration_test_files

    desc "Run all tests"
    RSpec::Core::RakeTask.new('full') do |t|
      t.pattern = test_files
      t.verbose = false
    end

    desc "Run unit tests"
    RSpec::Core::RakeTask.new('unit') do |t|
      t.pattern = unit_test_files
      t.verbose = false
    end

    desc "Run integration tests"
    RSpec::Core::RakeTask.new('integration') do |t|
      t.pattern = integration_test_files
      t.verbose = false
    end
  end

  desc "Run all tests"
  task 'test' => %w[test:full]
  task 'default' => 'test'

rescue LoadError
end

