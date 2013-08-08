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

  describe "validates" do  
    it "presence of name" do
      user.name = ""
      expect(user).to_not be_valid
    end

    it "presence of email" do
      user.email = ""
      expect(user).to_not be_valid
    end

    it "presence of password" do
      user.password = ""
      expect(user).to_not be_valid
    end

    it "uniquesness of email" do
      first_user = User.new(name: "First User",   email: "first_user_email@example.com", password: "first_user_password") 
      user_with_same_email = User.new(name: "Second User", email: "first_user_email@example.com", password: "second_user_password") 
      first_user.save
      expect( user_with_same_email ).to_not be_valid
    end
  end
end
