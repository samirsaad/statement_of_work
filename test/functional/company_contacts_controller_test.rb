require 'test_helper'

class CompanyContactsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_contact" do
    assert_difference('CompanyContact.count') do
      post :create, :company_contact => { }
    end

    assert_redirected_to company_contact_path(assigns(:company_contact))
  end

  test "should show company_contact" do
    get :show, :id => company_contacts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => company_contacts(:one).to_param
    assert_response :success
  end

  test "should update company_contact" do
    put :update, :id => company_contacts(:one).to_param, :company_contact => { }
    assert_redirected_to company_contact_path(assigns(:company_contact))
  end

  test "should destroy company_contact" do
    assert_difference('CompanyContact.count', -1) do
      delete :destroy, :id => company_contacts(:one).to_param
    end

    assert_redirected_to company_contacts_path
  end
end
