module Features
  module SignInHelper
    def sign_in(valid_password = true)
      user = FactoryGirl.create(:user)

      visit root_path

      click_link "Sign In"

      fill_in "user[email]",    with: user.email
      fill_in "user[password]", with: valid_password ? user.password : "invalidpassword" 
      click_button "Sign In"

      return user
    end
  end
end
