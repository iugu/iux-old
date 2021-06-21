module IUX
  class CurrencyComponent < IUX::Component
    attr_reader :value, :caption, :sign
    def initialize(value: 0, caption: nil, sign: nil)
      @value = value
      @caption = caption
      @sign_color = sign_color(sign)
    end

    def sign_color(sign)
      if(sign == "positive")
        color = 'green'
      elsif (sign == "negative")
        color = 'red'
      else
        color = ''
      end
      color
    end
  end
end
