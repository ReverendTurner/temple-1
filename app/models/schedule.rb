class Schedule
  include Mongoid::Document
  field :student1, type: String
  field :student2, type: String
  field :student3, type: String
  field :grade1, type: String
  field :grade2, type: String
  field :grade3, type: String
end
