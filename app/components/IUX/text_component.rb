module IUX
  class TextComponent < IUX::Component
    attr_reader :value, :caption

    def initialize(value: '', caption: nil)
      @value = value
      @caption = caption
    end
    
  end
end


