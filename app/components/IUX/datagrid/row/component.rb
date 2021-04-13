module IUX
  module Datagrid
    module Row
      class Component < ViewComponent::Base
        include ViewComponent::SlotableV2

        renders_many :blocks, 'BlocksComponent'

        class BlocksComponent < ViewComponent::Base
          attr_reader :presenter
  
          def initialize(
            presenter: ''
          )
            @presenter = presenter
          end

          def call
            if @presenter.instance_of? IUX::DataPresenter::Component
              render(@presenter)
            else
              @presenter
            end
          end
        end

      end
    end
  end
end