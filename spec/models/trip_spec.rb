require 'spec_helper'
describe Trip do
  it { should have_field(:name).of_type(String) }
  it { should have_field(:city).of_type(String) }
  it { should have_field(:latitude).of_type(Float) }
  it { should have_field(:longitute).of_type(Float) }
  it { should have_field(:active).of_type(Boolean).with_default_value_of(true) }
  it { should have_field(:seo).of_type(String) }
  it { should have_field(:description).of_type(String) }
  it { should have_field(:created_at).of_type(DateTime) }
  it { should have_field(:updated_at).of_type(DateTime) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:active) }
  it { should validate_presence_of(:seo) }
  it { should validate_presence_of(:description) }
  it { should validate_uniqueness_of(:name) }
  it { should embed_many(:comments) }
  it { should embed_many(:categories) }
end
