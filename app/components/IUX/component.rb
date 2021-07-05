# frozen_string_literal: true
require "view_component/version"
require "securerandom"

module IUX
  # @private
  class Component < ViewComponent::Base
    include ViewComponent::SlotableV2
  end
end
