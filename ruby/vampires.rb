# 4.4 Jacob Williams
# Updated 8/31/16 after feedback from Glenna Mowry.

# Initial Survey
employee_count = 0
survey_count = 0

puts "How many employees are we interviewing today?"
employee_count = gets.chomp.to_i
while survey_count < employee_count
  vampire_score = 0
  puts "First, please list all allergies one at a time, each followed by the ENTER key. When finished, type 'done'."
  allergy = nil
  entry = nil
  until entry == "done"
    entry = gets.chomp
    allergy = entry
    if allergy == "sunshine"
      puts "Sunshine allergy alert!"
      puts "Definitely a vampire."
      break
    end
  end
  if allergy != "sunshine"
    puts "What is your name?"
    name = gets.chomp
    puts "How old are you?"
    age = gets.chomp.to_i
    puts "What year were you born?"
    birth_year = gets.chomp.to_i
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
    garlic_pref = gets.chomp
    puts "Would you like to enroll in the company's health insurance? (y/n)"
    insurance = gets.chomp



  #   puts "Hello #{name}, here are the results of your vampire survey:"



  #   # VAMPIRE SCORE CALCULATOR:
  #   # Age:
  #   if (age + birth_year) != Time.now.to_s[0..3].to_i
  #     vampire_score += 1
  #     puts "Age indicates 1 point"
  #   end
  #   # Garlic Preference:
  #   if garlic_pref == "n"
  #     vampire_score += 1
  #     puts "Garlic preference indicates 1 point"
  #   end
  #   # Insurance:
  #   if insurance == "n"
  #     vampire_score += 1
  #     puts "Insurance preference indicates 1 point"
  #   end
  #   # Name:
  #   if name == "Drake Cula"
  #     vampire_score += 4
  #     puts "Name indicates 4 points"
  #   elsif name == "Tu Fang"
  #     vampire_score += 4
  #     puts "Name indicates 4 points"
  #   end
  # end

  # # TALLYING SYSTEM:
  # def vampire_result(vampire_score)
  #   if vampire_score <= 1
  #     puts "Probably not a vampire."
  #   elsif vampire_score == 2
  #     puts "Probably a vampire."
  #   elsif vampire_score == 3
  #     puts "Almost certainly a vampire."
  #   elsif vampire_score >= 4
  #     puts "Definitely a vampire."
  #   else
  #     puts "Results inconclusive."
  #   end
  # end

  # #RESULTS:
  # puts "Your vampire score: #{vampire_score}"
  # vampire_result(vampire_score)

  survey_count += 1
end

# YAY FOR FRIENDSHIP!
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
