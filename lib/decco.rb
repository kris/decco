require 'decco/version'
require 'decco/helpers'
require 'decco/railtie' if defined?(Rails)

module Decco
  # When no decorates are found, raise DecoratorNotFound
  class DecoratorNotFound < NameError; end

  # Decorate an object
  #
  # @param [Object] Object to decorate
  # @param [Mixed] Decorator to use, default to <Class>Decorator
  # @param [Mixed] View context
  # @return [Mixed]
  def self.decorate(object, decorator = nil, view = nil)
    @_d ||= {}
    @_d[object] ||= builder(object, decorator, view)
  rescue NameError
    raise DecoratorNotFound
  end

  # Get decorator
  #
  # @see .decorate
  # @return [Mixed]
  def self.builder(object, decorator, view)
    decorator || begin
      [object.class.to_s, 'Decorator'].join('').classify.constantize
    end.new(object, view)
  end
end
