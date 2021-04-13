module IUX
  module DataPresenter
    module Currency
      class Component < ViewComponent::Base
        attr_reader :value, :caption

        def initialize(value: 0, caption: nil)
          @value = value
          @caption = caption
        end
      end
    end
  end
end