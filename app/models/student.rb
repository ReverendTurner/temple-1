class Student
  include Mongoid::Document
  field :last_name, type: String
  field :first_name, type: String
  field :hebrew_name, type: String
  field :dob, type: Date
  field :grade, type: String
  field :school, type: String
  field :address, type: String
  field :city, type: String
  field :zip, type: String
  field :subdivision, type: String
  field :home_phone, type: String
  field :parents_names, type: String
  field :email, type: String
  field :phone1, type: String
  field :phone2, type: String
  field :emergency_name, type: String
  field :emergency_name2, type: String
  field :emergency_relationship, type: String
  field :emergency_relationship2, type: String
  field :medications, type: Array
  field :allergies, type: Array
  field :arrangements, type: String
  field :other_religion, type: String
  field :adhd, type: String
  field :perceptual, type: Boolean
  field :processing_problem, type: Boolean
  field :visual_aud, type: Boolean
  field :speech, type: Boolean
  field :reading_diff, type: Boolean
  field :dyslexia, type: Boolean
  field :autism, type: Boolean
  field :ocd, type: Boolean
  field :other, type: String
  field :discuss_priv, type: Boolean
end
