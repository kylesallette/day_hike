class Trip < ApplicationRecord
has_many :trails

def average_length
 average(:length)
end

def total_length
 sum(:length)
end

end
