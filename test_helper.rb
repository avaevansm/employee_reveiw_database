require 'bundler/setup'  # => true
require 'active_record'  # => true
require './employee'
require './department'
require './employee_review_migration'


ActiveRecord::Base.establish_connection({
    adapter: 'sqlite3',
    database: 'db.sqlite3'
})

begin
  EmployeeReviewsMigration.migrate(:down)
rescue
end

EmployeeReviewsMigration.migrate(:up)
