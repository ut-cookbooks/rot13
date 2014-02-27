require_relative "../spec_helper"

describe "rot13_vault resource" do
  let(:chef_run) do
    ChefSpec::Runner.new.converge("fixtures::rot13_vault")
  end

  context "for create action" do
    it "sets all the attributes" do
      expect(chef_run).to create_rot13_vault("create-full").with(
        path: "/tmp/vault",
        owner: "frank",
        group: "winners",
        mode: "0400",
        payload: "Whoops",
      )
    end

    it "uses default attribute values" do
      expect(chef_run).to create_rot13_vault("/another/store").with(
        path: "/another/store",
        owner: nil,
        group: nil,
        mode: nil,
        payload: nil,
      )
    end
  end
end
