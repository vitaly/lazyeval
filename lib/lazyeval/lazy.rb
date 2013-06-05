module Lazyeval
  class Lazy < (::RUBY_VERSION < '1.9') ? Object : BasicObject
    undef_method(*(instance_methods - %w/__id__ __send__ respond_to? debugger/)) if ::RUBY_VERSION < '1.9'

    def initialize(obj, &block)
      @obj, @block = obj, block
      @args = @done = nil
    end

    def method_missing(*args, &block)
      unless @done
        if !@args && !@block
          @args, @block = args, @block
          return self
        end

        @res = @args ?  @obj.send(*@args, &@block) : @block.call(@obj)
        @done = true
      end

      @res.send(*args, &block)
    end
  end
end
