module IUX
  class DataPresenterComponent < IUX::Component
      attr_reader :value, :type, :theme, :presenter, :alternate, :caption, :url, :method, :action

      def initialize(value: '', type: 'default', theme: '', presenter: '', alternate: 'normal', caption: nil, url: '#', method: 'get', action: nil)
        @presenter = presenter
        @value = value
        @theme = theme
        @type = type
        @alternate = alternate
        @caption = caption
        @url = url
        @method = method
        @action = action
      end

      def presenter
        case @presenter
        when 'currency'
          render(IUX::CurrencyComponent.new(value: @value, caption: @caption))
        when 'date'
          render(IUX::DateComponent.new(value: @value, caption: @caption))
        when 'number'
          render(IUX::NumberComponent.new(value: @value, caption: @caption))
        when 'badge'
          render(IUX::BadgeComponent.new(type: @type)) { @value }
        when 'button'
          render(IUX::ButtonComponent.new(type: @type, alternate: @alternate, size: 'mini', url: @url, method: @method, action: @action)) { @value }
        when 'link'
          render(IUX::ButtonComponent.new(type: 'default', caption: @caption, alternate: 'link', size: 'normal', url: @url)) { @value }  
        when 'text'
          render(IUX::TextComponent.new(value: @value, caption: @caption)) 
        end
      end
    end
  end

