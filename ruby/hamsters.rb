# MPS 4.3 Jacob Williams and Katie O'Neill

age = nil
input = nil

puts "Hamster name?"
name = gets.chomp
puts "Volume?"
volume = gets.chomp.to_i
puts "Fur color?"
color = gets.chomp
puts "Good candidate for adoption? (y/n)"
candidacy = gets.chomp
  if candidacy == "y"
    candidacy = TRUE
  else
    candidacy = FALSE
  end
puts "Estimated age?"
age = gets.chomp
if age.empty?
  age = nil
end

puts "Meet your hamster. His or her name is #{name}. Your hamster's age is #{age} years old. On a volume scale of 1 to 10 your hamster is a #{volume}. The color of its fur is #{color}. Is your hamster a good candidate for adoption? #{candidacy}."