module IUX
  module Navigation
    class Component < ViewComponent::Base
      include ViewComponent::SlotableV2
      include ActiveModel::Validations
      
      ALIGNMENTS = %w[horizontal vertical].freeze

      attr_reader :alignment, :title
      renders_many :navigation_item, 'NavigationItemComponent'

      validates :alignment, inclusion: { in: ALIGNMENTS, valid: ALIGNMENTS.to_sentence, allow_nil: true}

      def before_render
        raise errors.full_messages.to_sentence if invalid?
      end

      def initialize(
        alignment: 'vertical',
        title: nil
      )
        @alignment = alignment
        @title = title
      end

      class NavigationItemComponent < ViewComponent::Base
        attr_reader :title, :href, :badge, :selected

        def initialize(
          title:,
          href:,
          badge: {},
          selected: nil
        )
          @title = title
          @href = href
          @selected = selected
          @badge = badge
        end

      end
    end
  end
end
