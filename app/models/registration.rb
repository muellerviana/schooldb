class Registration < ApplicationRecord
    has_and_belongs_to_many :students
    has_and_belongs_to_many :turmas #não sei mesmo como fazer essa intermediária

end