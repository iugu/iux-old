module IUX
  class AlertComponent < IUX::Component
    include ActiveModel::Validations

    TYPES = %w[success danger help generic info warning].freeze

    attr_reader :title, :type

    validates :type, inclusion: { in: TYPES, valid: TYPES.to_sentence, allow_nil: true}

    def before_render
      raise errors.full_messages.to_sentence if invalid?
    end

    def initialize(
      title: nil,
      type: 'generic'
    )
      @title = title
      @type = type
    end
  end
end
