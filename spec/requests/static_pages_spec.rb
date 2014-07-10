require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the content 'blog'" do
      visist '/static_pages/home'
      expect(page).to have_content('blog')
    end
  end
end

