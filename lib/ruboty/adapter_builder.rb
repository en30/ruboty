module Ruboty
  class AdapterBuilder
    def self.adapter_classes
      @adapter_classes ||= []
    end

    attr_reader :robot

    def initialize(robot)
      @robot = robot
    end

    def build
      self.class.adapter_classes.map {|klass| klass.new(robot) }
    end
  end
end
