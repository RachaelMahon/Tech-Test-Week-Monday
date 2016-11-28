class Array_Model

attr_reader :array

  class << self
    attr_accessor :store
  end

    def initialize
      @array = []
    end

    def add_key_value_pair_to_hash(k, v)
      @array << {k => v}
    end

  end
