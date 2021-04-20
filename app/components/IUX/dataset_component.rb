module IUX
  class DatasetComponent < IUX::Component
    include ViewComponent::SlotableV2

    renders_many :header, 'HeaderComponent'

    class HeaderComponent < ViewComponent::Base
      attr_reader :title, :alignment, :width

      def initialize(
        title: '',
        alignment: '',
        width: 'auto'
      )
        @title = title
        @alignment = alignment
        @width = width
      end

      def call
        content_tag :th, @title, { class: @alignment , width: @width }
      end
    end
  end
end
