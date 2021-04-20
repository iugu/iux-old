module IUX
  class NumberComponent < IUX::Component
    attr_reader :value, :caption

    def initialize(value: 0, caption: nil)
      @value = value
      @caption = caption
    end

  end
end

