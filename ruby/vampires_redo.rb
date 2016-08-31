# 4.4 Jacob Williams
# Updated 8/31/16 after feedback from Glenna Mowry.

# 4.4 Jacob Williams
# Updated 8/31/16 after feedback from Glenna Mowry.

# Initial Survey
employee_count = 0
survey_count = 0

puts "How many employees are we interviewing today?"
employee_count = gets.chomp.to_i
while survey_count < employee_count
  vampireness = ''
  puts "First, please list all allergies one at a time, each followed by the ENTER key. When finished, type 'done'."
  allergy = nil
  entry = nil
  until entry == "done"
    entry = gets.chomp
    allergy = entry
    if allergy == "sunshine"
      puts "Sunshine allergy alert!".upcase
      vampireness = 'Definitely a vampire.'
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
  end
  if allergy != 'sunshine'
    if name == 'Drake Cula' || name == 'Tu Fang'
      vampireness = 'Definitely a vampire.'
    else
      if (age + birth_year) == Time.now.to_s[0..3].to_i && (  garlic_pref == 'y' || insurance == 'y')
        vampireness = 'Probably not a vampire.'
      elsif (age + birth_year) != Time.now.to_s[0..3].to_i && (  garlic_pref == 'n' || insurance == 'n')
        vampireness = 'Probably a vampire.'
      elsif (age + birth_year) != Time.now.to_s[0..3].to_i &&  garlic_pref == 'n' && insurance == 'n'
        vampireness = 'Almost certainly a vampire.'
      else
        vampireness = "Results inconclusive."
      end
    end
  end
  puts "Here are your results: #{vampireness}"
  survey_count += 1
end

# YAY FOR FRIENDSHIP!
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."



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







# Old code, please ignore:
#############################
# puts "How many employees are we interviewing today?"
# emp_num = gets.chomp.to_i

# # Until number of employees goes to zero, repeat process

# while emp_num != 0
#   puts "What is your name?"
#   user_name = gets.chomp.downcase

#   puts "How old are you?"
#   user_age = gets.to_i

# # Verify age is correct when everything goes to zero

#   puts "What year were you born? (yyyy)"
#   user_year = gets.to_i

#   ver_year = Time.now.year - user_year
#   ver_age = ver_year - user_age

#   puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
#   user_gbread = gets.chomp.downcase

#   puts "Would you like to enroll in the company’s health insurance? (y/n)"
#   user_ins = gets.chomp.downcase

# # Ask for allergies until user inputs "done", if at anytime user inputs "sunshine" terminate and go directly to statement provided

#   puts "What are some of your allergies?"
#   user_alrgy = ""
#   until user_alrgy == "done" || user_alrgy == "sunshine"
#     user_alrgy = gets.chomp.downcase
#     if user_alrgy == "sunshine"
#       puts "Probaly a vampire."
#     end
#   end

# # Comparison statements to see if employee is a vampire
#   if user_alrgy != "sunshine"
#     if user_name == "tu fang" || user_name == "drake cula"
#       puts "Definitely a vampire."

#     else
#       if ver_age == 0
#         if user_ins == "y" || user_gbread == "y"
#           puts "Probably not a vampire."
#         end
#       elsif ver_age > 0
#         if user_ins == "y"
#           if user_gbread == "n"
#             puts "Probably a vampire."
#           end
#         elsif user_ins == "n"
#           if user_gbread == "y"
#             puts "Probably a vampire."
#         elsif ver_age != 0 && user_gbread != "y"
#           if user_ins != "y"
#             puts "Almost certrainly a vampire."
#         end
#           end
#         end

#       else
#         puts "Results inconclusive"
#       end
#     end
#   end

#   emp_num = emp_num - 1
# end

# puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."