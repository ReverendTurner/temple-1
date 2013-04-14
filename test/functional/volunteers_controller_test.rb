require 'test_helper'

class VolunteersControllerTest < ActionController::TestCase
  setup do
    @volunteer = volunteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer" do
    assert_difference('Volunteer.count') do
      post :create, volunteer: { computer_lab: @volunteer.computer_lab, day_available: @volunteer.day_available, email: @volunteer.email, fundraising_committee: @volunteer.fundraising_committee, grade1: @volunteer.grade1, grade2: @volunteer.grade2, grade3: @volunteer.grade3, hebrew_tutor: @volunteer.hebrew_tutor, name: @volunteer.name, office_volunteer: @volunteer.office_volunteer, other: @volunteer.other, phone_number: @volunteer.phone_number, room_parent: @volunteer.room_parent, school_closing_committee: @volunteer.school_closing_committee, school_newsletter: @volunteer.school_newsletter, special_event: @volunteer.special_event, student_name1: @volunteer.student_name1, student_name2: @volunteer.student_name2, student_name3: @volunteer.student_name3, weekly_shopper: @volunteer.weekly_shopper }
    end

    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should show volunteer" do
    get :show, id: @volunteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volunteer
    assert_response :success
  end

  test "should update volunteer" do
    put :update, id: @volunteer, volunteer: { computer_lab: @volunteer.computer_lab, day_available: @volunteer.day_available, email: @volunteer.email, fundraising_committee: @volunteer.fundraising_committee, grade1: @volunteer.grade1, grade2: @volunteer.grade2, grade3: @volunteer.grade3, hebrew_tutor: @volunteer.hebrew_tutor, name: @volunteer.name, office_volunteer: @volunteer.office_volunteer, other: @volunteer.other, phone_number: @volunteer.phone_number, room_parent: @volunteer.room_parent, school_closing_committee: @volunteer.school_closing_committee, school_newsletter: @volunteer.school_newsletter, special_event: @volunteer.special_event, student_name1: @volunteer.student_name1, student_name2: @volunteer.student_name2, student_name3: @volunteer.student_name3, weekly_shopper: @volunteer.weekly_shopper }
    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should destroy volunteer" do
    assert_difference('Volunteer.count', -1) do
      delete :destroy, id: @volunteer
    end

    assert_redirected_to volunteers_path
  end
end
