class MainDiary < ApplicationRecord
    validates :today, presence: true, uniqueness: true
    validates :diary, presence: true
end
