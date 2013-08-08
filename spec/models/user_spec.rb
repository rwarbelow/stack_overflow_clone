require 'spec_helper'

describe User do
  let(:user) {
    User.new(
      name: "Example User",
      email: "exampleuser@example.com",
      password: "password"
    )
  }

  describe "create user with attributes" do 
    it "has name" do 
      expect(user.name).to eq("Example User")
    end
    it "has email" do 
      expect(user.email).to eq("exampleuser@example.com")
    end
    it "has password" do 
      expect(user.password).to eq("password")
    end
  end
end
