# frozen_string_literal: true

require "rubocop"

require_relative "rubocop/semantics"
require_relative "rubocop/semantics/version"
require_relative "rubocop/semantics/inject"

RuboCop::Semantics::Inject.defaults!

require_relative "rubocop/cop/semantics_cops"
