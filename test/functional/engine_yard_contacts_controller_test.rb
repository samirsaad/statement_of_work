require 'test_helper'

class EngineYardContactsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engine_yard_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engine_yard_contact" do
    assert_difference('EngineYardContact.count') do
      post :create, :engine_yard_contact => { }
    end

    assert_redirected_to engine_yard_contact_path(assigns(:engine_yard_contact))
  end

  test "should show engine_yard_contact" do
    get :show, :id => engine_yard_contacts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => engine_yard_contacts(:one).to_param
    assert_response :success
  end

  test "should update engine_yard_contact" do
    put :update, :id => engine_yard_contacts(:one).to_param, :engine_yard_contact => { }
    assert_redirected_to engine_yard_contact_path(assigns(:engine_yard_contact))
  end

  test "should destroy engine_yard_contact" do
    assert_difference('EngineYardContact.count', -1) do
      delete :destroy, :id => engine_yard_contacts(:one).to_param
    end

    assert_redirected_to engine_yard_contacts_path
  end
end
