require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:event) { FactoryGirl.create(:event) }

  it "should be valid" do
    expect(event).to be_valid
  end

  it "should be invalid without name" do 
    event.name = ""
    expect(event).not_to be_valid
  end

  it "should be invalid without content" do
    event.content = ""
    expect(event).not_to be_valid
  end
  
end
