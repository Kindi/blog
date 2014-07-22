require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Houssam Yassin"}
  
  describe "Home page" do
    before { visit root_path }
    
    it "should have the content 'blog'" do
      expect(page).to have_content('e')
    end
    
    it "should have the right title" do
      expect(page).to have_title("#{base_title}")
    end
  end
  
  describe "About page" do
    before { visit about_path }
    
    it "should have the content 'about'" do
      expect(page).to have_content('about')
    end
    
    it "should have the right title" do
      expect(page).to have_title("About Me || #{base_title}")
    end
  end
  
  describe "Blog page" do
    before { visit blog_path }
    
    it "should have the content 'blog'" do
      expect(page).to have_content(' ')
    end
    
    it "should have the right title" do
      expect(page).to have_title("Blog || #{base_title}")
    end
  end
  
  describe "Projects page" do
    before { visit projects_path }
    
    it "should have the content 'Projects'" do
      expect(page).to have_content('projects')
    end
    
    it "should have the right title" do
      expect(page).to have_title("Projects || #{base_title}")
    end
  end
      
end

