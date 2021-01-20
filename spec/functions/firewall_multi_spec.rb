require "spec_helper"

describe "firewall_multi" do

  context "when given a wrong number of arguments" do
    it "should fail" do
      expect {
        subject.execute({}, {})
      }.to raise_error ArgumentError, /expects 1 argument, got 2/
    end
  end

  context "correctly parses a hash" do
    input = {
      "00100 accept inbound ssh" => {
        "action" => "accept",
        "source" => ["1.1.1.1/24", "2.2.2.2/24"],
        "dport"  => 22,
      },
    }

    output = {
      "00100 accept inbound ssh from 1.1.1.1/24" => {
        "action" => "accept",
        "source" => "1.1.1.1/24",
        "dport"  => 22,
      },
      "00100 accept inbound ssh from 2.2.2.2/24" => {
        "action" => "accept",
        "source" => "2.2.2.2/24",
        "dport"  => 22,
      },
    }

    it "should convert hash into expected format" do
      expect(subject.execute(input)).to eq output
    end
  end

  context "handles nil" do
    input = {
      "00100 accept inbound ssh" => {
        "action" => "accept",
        "source" => nil,
        "dport"  => 22,
      },
    }

    output = {
      "00100 accept inbound ssh" => {
        "action" => "accept",
        "dport"  => 22,
      }
    }

    it "should convert hash into expected format" do
      expect(subject.execute(input)).to eq output
    end
  end
end

