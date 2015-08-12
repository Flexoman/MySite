
class Array
  def to_str
    x = self.to_s.sub('[["', ' ').sub('"]]', ' ')
  end
 end


class  MyAims

def initialize(aim, step, year)
    @aim = aim
    @step = step
    @year = year
end

def show_aims
      return @aim
end

def show_steps
      return @step
end

def show_year
      return @year
end

    @hash = {
        first_name:     "Andriy",
        last_name:     "Horak",
        age:                22,
        education:      "physic",
        hobby:            "football",
        my_story:        "good boy"
    }
    @@greeting = " \n\n\n\n\n\n Hi, I'm #{@hash[:first_name]} #{@hash[:last_name]}. It's my Aims Prog.
            I am #{@hash[:age]}
            Now I study #{@hash[:education]} Department
            My hobby - #{@hash[:hobby]}
            I`m #{@hash[:my_story]} ^_^ \n"

    class <<self
          def greeting
              puts "#{@@greeting}"
              puts "\n"
          end

          def menu1
    "\n\n============= Choose one options ============= \n
            1 - see my aims for all year
            2 - see my steps for all year
            3 - my aims and steps for proper year
            4 - exit \n"
          end

          def menu2
    "\n\n============= Choose one options ============= \n
            1 - another year
            2 - main menu \n"
          end

          def error
            return " Error!!! please choose 1-"
          end
    end
end

year1 = MyAims.new([["end my institute"]] ,  [["good learning"]] ,                        1)
year2 = MyAims.new([["learn c#" ]]  ,             [["have desire"]],                            2)
year3 = MyAims.new([["become rich"]],          [["don`t do nothing"]] ,                   3)
year4 = MyAims.new([["maried"]]  ,                [["good relationship with girl"]] ,     4)
year5 = MyAims.new([["visited japan"]] ,         [["earn money"]] ,                          5)
yearall = [year1,year2,year3,year4,year5]


MyAims.greeting
i = 0
while  i < 3 do
puts MyAims.menu1
j = 0
k = 0
choose = gets.chomp
  case choose
    when "1"
            puts "  My aims for 2016-2020 years :" ,""
            s=0
                    yearall.each do |x|
                      s+=1
                      puts "#{2015+s}"+x.show_aims
                    end
    when "2"
          puts "\n"
          puts "  My steps for 2016-2020 years :" ,""
                s=0
                yearall.each do |x|
                  s+=1
                puts  "#{2015+s}"+x.show_steps
                end
   when "3"
        while  j < 3
        puts " Chose (1-5) for 2016-2020 year "
        chose = gets.chomp
                      case chose
                      when "1","2","3","4","5"
                yearall.each do |y|
                puts " My steps for #{2015+y.show_year} is ---> #{y.show_steps.to_str}  <--- to #{y.show_aims.to_str}" if y.show_year == chose.to_i
                end
                puts MyAims.menu2
                            while  k < 3
                               chise = gets.chomp
                                     case chise
                                     when "1"
                                      break
                                     when "2"
                                      j = 3
                                      break
                                    else puts MyAims.error + "2 :"
                                    end
                              end
                      else puts MyAims.error + "5 :"
                    end
      end
  when "4"
          puts "\n"
          puts "  Bye "
          puts "\n"

          break
        else
          puts MyAims.error + "4 :"
     end
end




