class Goal < ApplicationRecord
    validates :title, presence: true
    validates :date, presence: true
end
