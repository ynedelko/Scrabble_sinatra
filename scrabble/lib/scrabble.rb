class String
  define_method(:scrabble) do
    score = Hash.new
    score[1] = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]
    score[2] = ["D", "G"]
    score[3] = ["B", "C", "M", "P"]
    score[4] = ["F", "H", "V", "W", "Y"]
    score[5] = ["K"]
    score[8] = ["J", "X"]
    score[10] = ["Q", "Z"]
    score_sum = 0
    each_char do |char|
      score.each do |key, value|
        if value.include?(char.upcase)
          score_sum += key
        end
      end
    end
    score_sum
  end
end

# class String
#   define_method(:scrabble) do
#     score = {"1"=>"A","E","I","O","U","L","N","R","S","T"},{"2"=>"D","G"}
#     score.each do |key, value|
#       key.to_i if value.include?(self)
#     end
#   end
# end
#"d".scrabble
