require 'spec_helper'

describe HomeController do
  describe 'GET #index' do
    render_views
    it 'gets home/index with application layout' do
      get :index

      assert_response :success
      response.should render_template 'home/index'
      response.should render_template layout: 'layouts/application'
    end

    it 'include the JustWorkshops title' do
      get :index

      response.body.should include('Gethdo: Getting your things done.')
    end
  end
end
