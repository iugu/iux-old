module IUX
  module DataPresenter
    module Text
      class Component < ViewComponent::Base
        attr_reader :value, :caption

        def initialize(value: '', caption: nil)
          @value = value
          @caption = caption
        end
      end
    end
  end
end
