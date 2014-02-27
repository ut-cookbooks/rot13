require "serverspec"

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    c.path = "/sbin:/usr/sbin"
  end
end

describe "Rot13" do

  it "encodes a file, leading to pretty secure protection, probably" do
    expect(file("/tmp/thevault").content).to match(%r{- Rnearfg Funpxyrgba})
  end
end
