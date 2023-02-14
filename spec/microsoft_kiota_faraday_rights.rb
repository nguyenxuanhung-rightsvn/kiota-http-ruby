# frozen_string_literal: true
require_relative 'authentication_provider'

RSpec.describe MicrosoftKiotaFaradayRights do
  it "has a version number" do
    expect(MicrosoftKiotaFaradayRights::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  it "can instantiate a request adapter" do
    auth_provider = AuthenticationProvider.new()
    adapter = MicrosoftKiotaFaradayRights::FaradayRequestAdapter.new(auth_provider)
    expect(adapter).to_not be nil
  end
end
