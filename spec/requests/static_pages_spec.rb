require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App')}
    it { should have_title("Ruby on Rails Tutorial Sample App | Home")}
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact')}
    it { should have_title("Ruby on Rails Tutorial Sample App | Contact")}
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help')}
    it { should have_title("Ruby on Rails Tutorial Sample App | Help")}
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About Us')}
    it { should have_title("Ruby on Rails Tutorial Sample App | About")}
  end


end