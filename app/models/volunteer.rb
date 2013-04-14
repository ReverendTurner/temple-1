class Volunteer
  include Mongoid::Document
  field :name, type: String
  field :phone_number, type: String
  field :email, type: String
  field :student_name1, type: String
  field :student_name2, type: String
  field :student_name3, type: String
  field :grade1, type: String
  field :grade2, type: String
  field :grade3, type: String
  field :day_available, type: String
  field :weekly_shopper, type: Boolean
  field :computer_lab, type: Boolean
  field :fundraising_committee, type: Boolean
  field :office_volunteer, type: Boolean
  field :school_closing_committee, type: Boolean
  field :room_parent, type: Boolean
  field :school_newsletter, type: Boolean
  field :special_event, type: Boolean
  field :hebrew_tutor, type: Boolean
  field :other, type: String
end
