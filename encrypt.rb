require "digest"

puts "Введите слово или фразу для шифрования:"

user_input = STDIN.gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
user_choice_method = STDIN.gets.to_i

until user_choice_method.between?(1, 3)
  puts "Выберите 1 или 2"
  user_choice_method = STDIN.gets.to_i
end

puts "Вот что получилось:"
case user_choice_method
when 1 then puts Digest::MD5.hexdigest(user_input)
when 2 then puts Digest::SHA1.hexdigest(user_input)
when 3 then puts Digest::SHA2.hexdigest(user_input)
end
