class Discussion < ApplicationRecord
    validates(:title, presence: true, uniqueness: true)
end
