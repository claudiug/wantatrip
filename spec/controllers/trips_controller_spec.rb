require 'spec_helper'

describe TripsController do

  describe 'GET #index' do
    context 'with params[category]'do
      it "populate an array of trips with params categories" do
        #TODO it should return trips with categories
      end

      it "render the index template" do
        get :index
        expect(response).to render_template :index
      end
    end

    context 'with params[location]'do
      it "render the index template" do
        get :index, location: 'Berlin'
        expect(response).to render_template :index
      end

      it "return a list of distance based of params location" do
        #TODO it should return distance metrics for each trip
      end
    end

    context 'with out params' do
      it "render template index" do
        get :index, location: 'Berlin'
        expect(response).to render_template :index
      end

      it "render top trips" do
        #TODO it should return top trips when no categories are provided
      end
    end
  end

  describe "GET #show" do
    it "render the show template" do
      trip = FactoryGirl.create(:trip)
      get :show, id:trip
      expect(response).to render_template :show
    end

    it "assing the result to @trip" do
      trip = FactoryGirl.create(:trip)
      get :show, id:trip
      expect(assigns(:trip)).to eq trip
    end
  end
end
