# frozen_string_literal: true
require "view_component/version"

module IUX
  # @private
  class Component < ViewComponent::Base
    include ViewComponent::SlotableV2
  end
end
