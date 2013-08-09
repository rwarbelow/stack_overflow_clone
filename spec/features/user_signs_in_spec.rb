require "spec_helper"



feature "user signs in" do

  scenario "User signs in from homepage" do  
    user = sign_in

    page.should have_content user.name
  end

  scenario "User attemps sign in with invalid credentials" do
    sign_in(false)

    page.should have_content "Invalid"
  end
end
