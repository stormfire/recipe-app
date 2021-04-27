module ApplicationHelper
    def is_odd_index(index)
        return false unless index
        index%2 != 0
    end
end
