require 'rails_helper'

describe Blogpost do
  
  before do
    @blogpost = Blogpost.new(title: "This is a Title", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum quam nec elit feugiat, ut sodales dui varius. Mauris in vehicula lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac tortor turpis. Mauris vitae rhoncus nibh. Morbi interdum fringilla orci, non suscipit lectus sagittis ut. Suspendisse turpis quam, consequat quis semper ac, fermentum et nibh. Duis dignissim suscipit nibh in euismod.")
  end
  
  subject { @blogpost }
  
  it { should respond_to(:title) }
  it { should respond_to(:content) }
  
  it { should be_valid }
  
  describe "when title is not present" do
    before { @blogpost.title = " " }
    it { should_not be_valid }
  end
  
  describe "when content is not present" do
    before { @blogpost.content = " "}
    it { should_not be_valid }
  end
  
  describe "when title is too long" do
    before { @blogpost.title = "a" * 51 }
    it { should_not be_valid }
  end
  
end
