require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title("Ruby on Rails Tutorial Sample App | Sign up") }
  end

  describe "profile page" do
    # Replace with code to make a user variable
    before { visit user_path(1) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end
end