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
  let(:base_title) { "Fantom" }

  describe "Home page" do

    it "should have the content 'Fantom Flier'" do
      visit '/static_pages/home'
      expect(page).to have_content('Fantom Flier')
    end
   
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title(base_title)
    end
    it "should not have a custom page title" do
          visit '/static_pages/home'
          expect(page).not_to have_title('| Home')
    end
  end
  
  describe "Help page" do

      it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content('Help')
      end
     
      it "should have the base title" do
            visit '/static_pages/help'
            expect(page).to have_title(base_title)
      end
       it "should not have a custom page title" do
              visit '/static_pages/help'
              expect(page).not_to have_title('| Help')
       end
  end
    
  describe "About page" do

      it "should have the content 'About Us'" do
        visit '/static_pages/about'
        expect(page).to have_content('About Us')
      end
      
      it "should have the base title" do
            visit '/static_pages/about'
            expect(page).to have_title(base_title)
      end
      
      it "should not have a custom page title" do
              visit '/static_pages/about'
              expect(page).not_to have_title('| About Us')
      end
  end 
  
  describe "Contacts page" do

      it "should have the content 'Contacts'" do
        visit '/static_pages/contacts'
        expect(page).to have_content('Contacts')
      end
      
      it "should have the base title" do
            visit '/static_pages/contacts'
            expect(page).to have_title(base_title)
      end
      
      it "should not have a custom page title" do
              visit '/static_pages/contacts'
              expect(page).not_to have_title('| Contacts')
      end
  end 
end
