require 'bundler/setup'
require 'decco'
require 'rails/version'
require 'action_controller'
require 'action_controller/test_case'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.expect_with(:rspec) { |c| c.syntax = :expect }
  config.order = :random
end

class User; end
class UserDecorator
  def initialize(user, view); end
end

class AltUserDecorator < UserDecorator
end
