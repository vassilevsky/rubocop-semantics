# frozen_string_literal: true

require_relative "lib/rubocop/semantics/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-semantics"
  spec.version       = RuboCop::Semantics::VERSION
  spec.authors       = ["i.vasilevskiy"]
  spec.email         = ["i.vasilevskiy@fun-box.ru"]

  spec.summary       = "Cops that check for meaningless and misleading names in code"
  spec.homepage      = "https://github.com/vassilevsky/rubocop-semantics"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/vassilevsky/rubocop-semantics/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubocop"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
