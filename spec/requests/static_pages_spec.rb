#Command-Shift-R: run a single test (if run on an it block) or group of tests (if run on a describe block)
#Command-Shift-E: run the last test(s)
#Command-Shift-T: run all the tests in current file

require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject {page}

  describe "Home page" do
  	before {visit root_path}

    it {should have_content('Sample App')}
    it {should have_title(full_title(''))}
    it {should_not have_title('| Home')}
  end

  describe "Help page" do
  	before {visit help_path}

  	it {should have_content('Help')}
  	it {should have_title(full_title('Help'))}
  end

  describe "About page" do
  	before {visit about_path}

  	it {should have_content('About')}
  	it {should have_title(full_title('About Us'))}
  end

  describe "Contact page" do
  	before {visit contact_path}

  	it {should have_content('Contact')}
  	it {should have_title('Contact')}
  end
end