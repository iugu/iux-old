module IUX
  class ButtonComponent < IUX::Component
    include ActiveModel::Validations

    TYPES = %w[default danger safety warning generic].freeze
    SIZES = %w[normal large small mini].freeze
    ALTERNATES = %w[default secondary outline ghost link].freeze

    attr_reader :size, :type, :url, :alternate, :action, :method

    validates :type, inclusion: { in: TYPES, valid: TYPES.to_sentence, allow_nil: true}
    validates :size, inclusion: { in: SIZES, valid: SIZES.to_sentence, allow_nil: true}
    validates :alternate, inclusion: { in: ALTERNATES, valid: ALTERNATES.to_sentence, allow_nil: true}

    def before_render
      raise errors.full_messages.to_sentence if invalid?
    end

    def initialize(
      size: 'normal',
      type: 'default',
      url: '#',
      alternate: 'default',
      caption: nil,
      action: nil,
      method: 'get'
    )
      @size = size
      @type = type
      @url = url
      @alternate = alternate
      @caption = caption
      @action = action
      @method = method
    end

  end
end