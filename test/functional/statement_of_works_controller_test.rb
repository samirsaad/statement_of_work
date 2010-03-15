require 'test_helper'

class StatementOfWorksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statement_of_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statement_of_work" do
    assert_difference('StatementOfWork.count') do
      post :create, :statement_of_work => { }
    end

    assert_redirected_to statement_of_work_path(assigns(:statement_of_work))
  end

  test "should show statement_of_work" do
    get :show, :id => statement_of_works(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => statement_of_works(:one).to_param
    assert_response :success
  end

  test "should update statement_of_work" do
    put :update, :id => statement_of_works(:one).to_param, :statement_of_work => { }
    assert_redirected_to statement_of_work_path(assigns(:statement_of_work))
  end

  test "should destroy statement_of_work" do
    assert_difference('StatementOfWork.count', -1) do
      delete :destroy, :id => statement_of_works(:one).to_param
    end

    assert_redirected_to statement_of_works_path
  end
end
