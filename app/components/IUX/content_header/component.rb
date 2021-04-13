module IUX
  module ContentHeader
    class Component < ViewComponent::Base
      attr_reader :title

      def initialize(
        title: nil
      )
        @title = title
      end

    end
  end
end
