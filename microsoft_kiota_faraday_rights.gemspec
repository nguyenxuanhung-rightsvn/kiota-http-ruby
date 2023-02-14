# frozen_string_literal: true

require_relative "lib/microsoft_kiota_faraday_rights/version"

Gem::Specification.new do |spec|
  spec.name          = "microsoft_kiota_faraday_rights"
  spec.version       = MicrosoftKiotaFaradayRights::VERSION
  spec.authors       = 'Microsoft Corporation'
  spec.email         = 'graphsdkpub+ruby@microsoft.com'
  spec.description   = 'Kiota HttpCore implementation with Faraday'
  spec.summary       = "Microsoft Kiota Faraday - Kiota Ruby http request adapter for running requests"
  spec.homepage      = 'https://microsoft.github.io/kiota/'
  spec.license       = 'MIT'
  spec.metadata      = {
    'bug_tracker_uri' => 'https://github.com/microsoft/kiota-http-ruby/issues',
    'changelog_uri'   => 'https://github.com/microsoft/kiota-http-ruby/blob/main/CHANGELOG.md',
    'homepage_uri'    => spec.homepage,
    'source_code_uri' => 'https://github.com/microsoft/kiota-http-ruby',
    'github_repo'     => 'ssh://github.com/microsoft/kiota-http-ruby'
  }
  spec.required_ruby_version = ">= 2.7.4"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_runtime_dependency 'microsoft_kiota_abstractions', '~> 0.13.0', '>= 0.13.0'
  spec.add_runtime_dependency 'faraday', '>= 0.17.3', '< 3.a'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end
