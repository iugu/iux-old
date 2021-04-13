module IUX
  module DataPresenter
    class Component < ViewComponent::Base
      attr_reader :value, :type, :theme, :presenter, :alternate, :caption, :url

      def initialize(value: '', type: 'default', theme: '', presenter: '', alternate: 'normal', caption: nil, url: '#')
        @presenter = presenter
        @value = value
        @theme = theme
        @type = type
        @alternate = alternate
        @caption = caption
        @url = url
      end

      def presenter
        case @presenter
        when 'currency'
          render(Currency::Component.new(value: @value, caption: @caption))
        when 'date'
          render(Date::Component.new(value: @value, caption: @caption))
        when 'number'
          render(Number::Component.new(value: @value, caption: @caption))
        when 'badge'
          render(IUX::Badge::Component.new(type: @type, theme: @theme, alternate: @alternate, caption: @caption)) { @value }
        when 'button'
          render(IUX::Button::Component.new(type: 'default', alternate: 'secondary', size: 'mini', url: @url)) { @value }
        when 'link'
          render(IUX::Button::Component.new(type: 'default', caption: @caption, alternate: 'link', size: 'normal', url: @url)) { @value }  
        when 'text'
          render(Text::Component.new(value: @value, caption: @caption))
        end
      end
    end
  end
end
