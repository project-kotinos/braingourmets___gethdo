require 'test_helper'

# Test case.

class HomeControllerTest < ActionController::TestCase
  test 'index gets home/index with application layout' do
    get :index
    assert_response :success

    assert_template 'home/index'
    assert_template layout: 'layouts/application'
  end

  test 'index has Gethdo title' do
    get :index

    assert_select 'title', 'Gethdo'
  end
end
