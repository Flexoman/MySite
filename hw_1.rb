#MY FIRST SIMPLE PROGRAM

hash = {
:first_name =>  "Andriy",
:last_name =>   "Horak",
:age =>  22,
:education =>  "physic",
:hobby => "football",
:my_story  => "good boy"
}

array_aims=[["   end my institute"],["   learn c++" ],["   become rich"],["   maried"],["   visit japan"]]

array_steps=[["   good learning"],["   have desire"],["   don`t do nothing"],["   good relationship with girl"],["   earn money"]]

ch = "\n\n ",
  "  ======= Choose one options =======",
  "  1 - see my aims for all year",
  "  2 - see my steps for all year",
  "  3 - my aims and steps for proper year",
  "  4 - exit"
chs = " ",
  "  ======= Choose one options =======",
  "  1 - another year",
  "  2 - main menu"

error = " Error!!! please choose 1-"

greeting = "  "," Hi, I'm '#{hash[:first_name]} #{hash[:last_name]}'. It's my Aims Prog.",
    "  I am '#{hash[:age]}'",
    "  Now I study '#{hash[:education]}' Department",
    "  My hobby - '#{hash[:hobby]}'" ,
    "  I`m '#{hash[:my_story]}' ^_^"
puts "\n"
puts greeting
i = 0
while  i < 3 do
puts ch
j = 0
k = 0
choose = gets.chomp
  case choose
  when "1"
    puts "\n"
    puts "  My aims for 2016-2020 years :" ,""
    puts array_aims
  when "2"
    puts "\n"
    puts "  My steps for 2016-2020 years :" ,""
    puts  array_steps
  when "3"
        while  j < 3
        puts " Chose (1-5) for 2016-2020 year "
        chose = gets.chomp
              case chose
              when "1","2","3","4","5"
        puts "\n"
        puts " My steps for #{2015 + chose.to_i} is ---> #{array_steps[chose.to_i-1][0]}  <--- to#{array_aims[chose.to_i-1][0]}"
        puts chs
        while  k < 3
           chise = gets.chomp
           case chise
           when "1"
            break
           when "2"
            j = 3
            break

          else puts error + "2 :"
          end
          end
              else puts error + "5 :"
        end
      end
  when "4"
    puts "\n"
    puts "  Bye "
    puts "\n"

    break
  else
    puts error + "4 :"
     end
end

