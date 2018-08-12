class Instaclo < ApplicationRecord
    validates :content, presence: true, length: { in: 1..140 }
end
