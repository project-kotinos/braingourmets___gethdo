require 'spec_helper'

describe HomeController do
  describe 'GET #index' do
    render_views
    it 'gets home/index with application layout' do
      get :index

      assert_response :success
      expect(response).to render_template 'home/index'
      expect(response).to render_template layout: 'layouts/application'
    end

    # render_views can be removed once this test has been moved to an
    # acceptance test.
    it 'include the JustWorkshops title' do
      get :index

      expect(response.body).to include('Gethdo: Getting your things done.')
    end
  end
end
