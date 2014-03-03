require "chef/resource/lwrp_base"
require_relative "../../../libraries/rot13"

unless Chef::Resource.const_defined?("Rot13Vault")
  Chef::Resource::LWRPBase.build_from_file(
    "rot13",
    File.join(File.dirname(__FILE__), %w{.. .. .. resources vault.rb}),
    nil
  )
end

describe Chef::Resource::Rot13Vault do

  let(:resource) { described_class.new("/tmp/ohyeah") }

  it "sets the default attribute to path" do
    expect(resource.path).to eq("/tmp/ohyeah")
  end

  it "attribute owner defaults to nil" do
    expect(resource.owner).to be_nil
  end

  it "attribute owner takes a String value" do
    resource.owner("anthony")
    expect(resource.owner).to eq("anthony")
  end

  it "attribute group default to nil" do
    expect(resource.group).to be_nil
  end

  it "attribute group takes a String value" do
    resource.group("winners")
    expect(resource.group).to eq("winners")
  end

  it "attribute mode defaults to nil" do
    expect(resource.mode).to be_nil
  end

  it "attribute mode takes a String value" do
    resource.mode("0755")
    expect(resource.mode).to eq("0755")
  end

  it "attribute mode takes an Integer value" do
    resource.mode(0640)
    expect(resource.mode).to eq(0640)
  end

  it "attribute payload defaults to nil" do
    expect(resource.payload).to be_nil
  end

  it "attribute payload takes a String value" do
    resource.payload("wazzup")
    expect(resource.payload).to eq("wazzup")
  end

  it "action defaults to :create" do
    expect(resource.action).to eq(:create)
  end

  it "#encoded returns the encoded payload" do
    resource.payload("wakka")
    expect(resource.encoded).to eq("jnxxn")
  end
end
