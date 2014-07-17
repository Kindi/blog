require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Houssam Yassin"}
  
  describe "Home page" do
    before { visit '/static_pages/home' }
    
    it "should have the content 'blog'" do
      expect(page).to have_content('blog')
    end
    
    it "should have the right title" do
      expect(page).to have_title("#{base_title}")
    end
  end
  
  describe "About page" do
    before { visit '/static_pages/about' }
    
    it "should have the content 'about'" do
      expect(page).to have_content('about')
    end
    
    it "should have the right title" do
      expect(page).to have_title("About Me || #{base_title}")
    end
  end
  
  describe "Blog page" do
    before { visit '/static_pages/blog' }
    
    it "should have the content 'blog'" do
      expect(page).to have_content('blog')
    end
    
    it "should have the right title" do
      expect(page).to have_title("Blog || #{base_title}")
    end
  end
  
  describe "Projects page" do
    before { visit '/static_pages/projects'}
    
    it "should have the content 'Projects'" do
      expect(page).to have_content('projects')
    end
    
    it "should have the right title" do
      expect(page).to have_title("Projects || #{base_title}")
    end
  end
      
end

