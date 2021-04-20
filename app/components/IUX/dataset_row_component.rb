module IUX
  class DatasetRowComponent < IUX::Component
    include ViewComponent::SlotableV2

    renders_many :cells, 'CellsComponent'

    class CellsComponent < ViewComponent::Base
      attr_reader :presenter

      def initialize(
        presenter: ''
      )
        @presenter = presenter
      end

      def call
        if @presenter.instance_of? IUX::DataPresenterComponent
          render(@presenter)
        else
          @presenter
        end
      end
    end
  end
end