# frozen_string_literal: true

module IUX
  module ViewComponents
    module VERSION
      MAJOR = 0
      MINOR = 0
      PATCH = 35

      STRING = [MAJOR, MINOR, PATCH].join(".")
    end
  end
end

# rubocop:disable Rails/Output
puts IUX::ViewComponents::VERSION::STRING if __FILE__ == $PROGRAM_NAME
# rubocop:enable Rails/Output
