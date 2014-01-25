require 'spec_helper'
describe Restaurant do
  it { should have_field(:name).of_type(String) }
  it { should have_field(:address).of_type(Array) }
  it { should have_field(:phone).of_type(Array) }
  it { should have_field(:city).of_type(String) }
  it { should have_field(:active).of_type(Boolean).with_default_value_of(false) }
  it { should have_field(:created_at).of_type(DateTime) }
  it { should have_field(:updated_at).of_type(DateTime) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:city) }
  it { should validate_uniqueness_of(:name) }
  it { should embed_many(:comments) }
  it { should belong_to(:trip) }
end
