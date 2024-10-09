# frozen_string_literal: true

require_relative "lib/irb/theme/tokyonight/version"

Gem::Specification.new do |spec|
  spec.name = "irb-theme-tokyonight"
  spec.version = Irb::Theme::Tokyonight::VERSION
  spec.authors = ["Vitaly Slobodin"]
  spec.email = ["vitaliy.slobodin@gmail.com"]

  spec.summary = "The color scheme for Reline"
  spec.homepage = "https://github.com/vitallium/irb-theme-tokyonight"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/vitallium/irb-theme-tokyonight"
  spec.metadata["changelog_uri"] = "https://github.com/vitallium/irb-theme-tokyonight/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ .git .github Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "irb", "~> 1.14"
  spec.add_runtime_dependency "reline", "~> 0.5"

  spec.add_development_dependency "standard", "~> 1.41"
  spec.add_development_dependency "repl_type_completor", "~> 0.1"
end
