# frozen_string_literal: true

RSpec.describe RuboCop::Cop::Semantics::VariableName, :config do
  let(:config) { RuboCop::Config.new }

  %w[

    data
    info
    scope
    value

  ].each do |variable_name|
    it "registers an offense when a variable is called `#{variable_name}`" do
      pointers = "^" * variable_name.length

      expect_offense(<<~RUBY)
        #{variable_name} = {name: 'Elijah', age: 40}
        #{pointers} Use a more descriptive variable name.
      RUBY
    end

    it "does not register an offense when a variable describes its contents" do
      expect_no_offenses(<<~RUBY)
        customer = {name: 'Elijah', age: 40}
      RUBY
    end
  end
end
