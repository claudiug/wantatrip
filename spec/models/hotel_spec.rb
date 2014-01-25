require 'spec_helper'
describe Hotel do
  it { should have_field(:name).of_type(String) }
  it { should have_field(:address).of_type(Array) }
  it { should have_field(:phone).of_type(Array) }
  it { should have_field(:city).of_type(String) }
  it { should have_field(:active).of_type(Boolean).with_default_value_of(false) }
  it { should be_timestamped_document.with(:created_at) }
  it { should_not be_timestamped_document.with(:updated_at) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:city) }
  it { should validate_uniqueness_of(:name) }
  it { should have_index_for(name: 1) }
  it { should have_index_for(city: 1) }
  it { should embed_many(:comments) }
  it { should belong_to(:trip) }
end
