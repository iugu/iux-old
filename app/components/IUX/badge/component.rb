module IUX
  module Badge
    class Component < ViewComponent::Base
      include ActiveModel::Validations

      TYPES = %w[success danger warning default generic information].freeze
      THEMES = %w[normal light dark].freeze
      ALTERNATES = %w[solid outline].freeze

      attr_reader :theme, :type, :alternate

      validates :type, inclusion: { in: TYPES, valid: TYPES.to_sentence, allow_nil: true}
      validates :theme, inclusion: { in: THEMES, valid: THEMES.to_sentence, allow_nil: true}
      validates :alternate, inclusion: { in: ALTERNATES, valid: ALTERNATES.to_sentence, allow_nil: true}

      def before_render
        raise errors.full_messages.to_sentence if invalid?
      end

      def initialize(theme: 'normal',
                    type: 'generic',
                    alternate: 'solid',
                    caption: nil
                  )

        @theme = theme
        @type = type
        @alternate = alternate
        @caption = caption
      end
    end
  end
end
