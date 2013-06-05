class Object
  def lazy(&block)
    Lazyeval::Lazy.new(self, &block)
  end
end
