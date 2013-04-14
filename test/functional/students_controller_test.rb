require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { 2: @student.2, address: @student.address, adhd: @student.adhd, allergies: @student.allergies, arrangements: @student.arrangements, autism: @student.autism, city: @student.city, discuss_priv: @student.discuss_priv, dob: @student.dob, dyslexia: @student.dyslexia, email: @student.email, emergency_name: @student.emergency_name, emergency_name: @student.emergency_name, emergency_relationship2: @student.emergency_relationship2, emergency_relationship: @student.emergency_relationship, first_name: @student.first_name, grade: @student.grade, hebrew_name: @student.hebrew_name, home_phone: @student.home_phone, last_name: @student.last_name, medications: @student.medications, ocd: @student.ocd, other: @student.other, other_religion: @student.other_religion, parents_names: @student.parents_names, perceptual: @student.perceptual, phone1: @student.phone1, phone2: @student.phone2, processing_problem: @student.processing_problem, reading_diff: @student.reading_diff, school: @student.school, speech: @student.speech, subdivision: @student.subdivision, visual_aud: @student.visual_aud, zip: @student.zip }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    put :update, id: @student, student: { 2: @student.2, address: @student.address, adhd: @student.adhd, allergies: @student.allergies, arrangements: @student.arrangements, autism: @student.autism, city: @student.city, discuss_priv: @student.discuss_priv, dob: @student.dob, dyslexia: @student.dyslexia, email: @student.email, emergency_name: @student.emergency_name, emergency_name: @student.emergency_name, emergency_relationship2: @student.emergency_relationship2, emergency_relationship: @student.emergency_relationship, first_name: @student.first_name, grade: @student.grade, hebrew_name: @student.hebrew_name, home_phone: @student.home_phone, last_name: @student.last_name, medications: @student.medications, ocd: @student.ocd, other: @student.other, other_religion: @student.other_religion, parents_names: @student.parents_names, perceptual: @student.perceptual, phone1: @student.phone1, phone2: @student.phone2, processing_problem: @student.processing_problem, reading_diff: @student.reading_diff, school: @student.school, speech: @student.speech, subdivision: @student.subdivision, visual_aud: @student.visual_aud, zip: @student.zip }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
