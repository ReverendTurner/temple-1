class Grade
  include Mongoid::Document
  field :grade, type: String
  field :slot, type: Array
end
