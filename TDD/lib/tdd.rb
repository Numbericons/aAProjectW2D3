class Array
    def my_uniq
        result = []
        self.each { |el| result << el unless result.include?(el) }
        result 
    end

    def two_sum
        result = []
        (0...length).each do |i|
            (i+1...length).each do |j|
                result << [i,j] if self[i] + self[j] == 0
            end
        end
        result
    end

    def my_transpose
        result = self.my_deep_dup
        (0...length).each do |i|
            (i+1...length).each do |j|
                result[i][j], result[j][i] = result[j][i], result[i][j]
            end
        end
        result
    end

    def my_deep_dup
        self.map { |el| el.is_a?(Array) ? el.my_deep_dup : el }
    end

    def stock_picker
        max_diff = 0
        res = nil

        (0...length).each do |i|
            (i+1...length).each do |j|
                if self[j] - self[i] > max_diff
                    res = [i,j] 
                    max_diff = self[j] - self[i]
                end
            end
        end
        res
    end
end

class TowersOfHanoi
    
end