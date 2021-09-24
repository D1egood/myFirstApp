require 'rails_helper'
require 'spec_helper'
    

describe "Static pages" do

    subject { page }

      describe "Home page" do
          before { visit home_path }
      it { should have_selector('title', text: full_title('Home')) }
      end

      describe "Help page" do
          before { visit help_path }
      it { should have_selector('title', text: full_title('Help')) }
      end
      
      describe "Contact page" do
          before { visit contact_path }
      it { should have_selector('title', text: full_title('Contact')) }
      end
      
end
