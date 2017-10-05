require 'rails_helper'

RSpec.describe Api::V1::PagesController, type: :controller do
  render_views

  describe "GET #index" do
    before :all do
      3.times do
        page = create(:page, :with_tags)
      end
    end

    it 'should display pages with tags' do
      get :index

      expect(response.status).to eq 200
    end

  end

  describe "POST #create" do
    context 'with valid url' do
      it "should return 200"  do
        post :create, params: {url: 'https://github.com/'}
        expect(response.status).to eq 200
      end

      it "should create page object"  do
        expect{
          post :create, params: {url: 'https://github.com/'}
        }.to change{Page.count}.by(1)
      end

      it "should create page with proper attributes"  do
        post :create, params: {url: 'https://github.com/'}
        hash = JSON.parse( response.body )
        expect(hash['page']['url']).to match /github/
        expect(hash['page']['status_code']).to eq '200'
      end

      it "should create tags objects"  do
        expect{
          post :create, params: {url: 'https://github.com/'}
        }.to change{Tag.count}
      end
    end

    context 'with invalid url' do
      it "should raise error"  do
        post :create, params: {url: 'not-url'}
        #(Errno::ECONNREFUSED) is handled by controller
        expect(response.status).to eq 400
      end
    end
  end

end
