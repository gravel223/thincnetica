module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    # c версии 2.5 могу вызвать так: base.include InstanceMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    attr_accessor :count

    def instances
      #self.count = self.count || 0
      self.count ||= 0
      self.count
    end
  end

  module InstanceMethods
    private

    def register_instance
      self.class.count = self.class.instances + 1
    end
  end
end
