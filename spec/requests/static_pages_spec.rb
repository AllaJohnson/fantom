# require 'spec_helper'
# 
# describe "StaticPages" do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end
require 'spec_helper'

describe "Static pages" do
  
  subject { page }

  describe "Home page" do
    before { visit root_path }

      it { should have_content('Fantom Flier') }   
      it { should have_title(full_title('')) }        
  end
  
  describe "Help page" do
    before { visit help_path }

      it  { should have_content('Help') }     
      it  { should have_title(full_title('Help')) }             
  end
    
  describe "About page" do
    before { visit about_path }

      it { should have_content('About Us') }      
      it { should have_title(full_title('About Us')) }            
  end 
  
  describe "Contacts page" do
    before { visit contacts_path }
    
      it { should have_content('Contacts') }
      it { should have_title(full_title('Contacts')) }
  end 
end
