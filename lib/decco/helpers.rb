module Decco
  module Helpers
    # Decorate, passing view context
    #
    # @param [Mixed] Object to decorate
    # @param [Mixed] Decorator to use
    # @return [Mixed] Decorator
    def d(object, decorator = nil)
      Decco.decorate(object, decorator, self)
    end
  end
end