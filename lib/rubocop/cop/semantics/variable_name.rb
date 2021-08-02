# frozen_string_literal: true

module RuboCop
  module Cop
    module Semantics
      # Checks for meaningless variable names.
      # A good variable name describes its contents with nouns and adjectives.
      #
      # @example
      #
      #   # bad
      #   data = {name: 'Elijah', age: 40}
      #
      #   # good
      #   customer = {name: 'Elijah', age: 40}
      #
      class VariableName < Base
        MEANINGLESS_NAMES = %i[

          data
          info
          value

        ].freeze

        def on_lvasgn(node)
          variable_name, = *node
          return unless MEANINGLESS_NAMES.include?(variable_name)

          add_offense(node.loc.name, message: "Use a more descriptive variable name.")
        end
      end
    end
  end
end
