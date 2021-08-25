class Question < ApplicationRecord
    validates :title, presence: true, lenght {minimum: 2}
    validates :body, presence: true, lenght {minimum: 2}
end
