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
    decorator = builder(object) unless decorator

    @_d ||= {}
    @_d[object] ||= decorator.new(object, view)
  rescue NameError
    raise DecoratorNotFound
  end

  # Get decorator
  #
  # @param [Mixed] Object to infer decorator
  # @return [Mixed]
  def self.builder(object)
    [object.class.to_s, 'Decorator'].join('').classify.constantize
  end
end
