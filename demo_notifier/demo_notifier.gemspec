# frozen_string_literal: true

require_relative "lib/demo_notifier/version"

Gem::Specification.new do |spec|
  spec.name          = "demo_notifier"
  spec.version       = DemoNotifier::VERSION
  spec.authors       = ["emrancub"]
  spec.email         = ["myself.emranhasan@gmail.com"]

  spec.summary       = gem.description
  spec.description   = %q{demo_notifier numbers adding normalization}
  spec.homepage      = ""
  spec.required_ruby_version = ">= 2.7.3"

  spec.metadata["allowed_push_host"] = "https://github.com/emrancub/gem-demo"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/emrancub/gem-demo"
  spec.metadata["changelog_uri"] = "https://github.com/emrancub/gem-demo"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
