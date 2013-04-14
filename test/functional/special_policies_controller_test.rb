require 'test_helper'

class SpecialPoliciesControllerTest < ActionController::TestCase
  setup do
    @special_policy = special_policies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_policies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_policy" do
    assert_difference('SpecialPolicy.count') do
      post :create, special_policy: { date: @special_policy.date, grade1: @special_policy.grade1, grade2: @special_policy.grade2, grade3: @special_policy.grade3, parent_signature: @special_policy.parent_signature, student1: @special_policy.student1, student2: @special_policy.student2, student3: @special_policy.student3 }
    end

    assert_redirected_to special_policy_path(assigns(:special_policy))
  end

  test "should show special_policy" do
    get :show, id: @special_policy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_policy
    assert_response :success
  end

  test "should update special_policy" do
    put :update, id: @special_policy, special_policy: { date: @special_policy.date, grade1: @special_policy.grade1, grade2: @special_policy.grade2, grade3: @special_policy.grade3, parent_signature: @special_policy.parent_signature, student1: @special_policy.student1, student2: @special_policy.student2, student3: @special_policy.student3 }
    assert_redirected_to special_policy_path(assigns(:special_policy))
  end

  test "should destroy special_policy" do
    assert_difference('SpecialPolicy.count', -1) do
      delete :destroy, id: @special_policy
    end

    assert_redirected_to special_policies_path
  end
end
