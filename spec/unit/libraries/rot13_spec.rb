require_relative "../../../libraries/rot13"

describe "Rot13" do

  describe ".encode" do

    it "takes a string and returns the rot13 version" do
      expect(Rot13.encode("wakka")).to eq("jnxxn")
      expect(Rot13.encode("This'll Fool You")).to eq("Guvf'yy Sbby Lbh")
    end

    it "accepts nil and returns nil" do
      expect(Rot13.encode(nil)).to eq(nil)
    end
  end
end
