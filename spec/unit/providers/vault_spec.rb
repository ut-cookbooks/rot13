require_relative '../spec_helper'

describe "rot13_vault provider" do
  let(:chef_run) do
    ChefSpec::Runner.new(step_into: ["rot13_vault"]).
      converge("fixtures::rot13_vault")
  end

  context "for create action" do
    it "creates a file with the encrypted payload, so secret" do
      expect(chef_run).to create_file("/tmp/vault").with(
        owner: "frank",
        group: "winners",
        mode: "0400",
        content: "Jubbcf",
      )
    end
  end
end
