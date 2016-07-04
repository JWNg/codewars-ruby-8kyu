##integer_to_english.rb
#Description:
#
#For a given positive integer convert it into its English representation. All words are lower case and are separated with one space. No trailing spaces are allowed.
#
#To keep it simple, hyphens and the writing of the word 'and' both aren't enforced. (But if you are looking for some extra challenge, such an output will pass the tests.)
#
#Large number reference: http://en.wikipedia.org/wiki/Names_of_large_numbers (U.S., Canada and modern British)
#
#Input range: 1 -> 10**26 (10**16 for JS)
#
#Examples:
#
#int_to_english(1) == 'one'
#
#int_to_english(10) == 'ten'
#
#int_to_english(25161045656) == 'twenty five billion one hundred sixty one million forty five thousand six hundred fifty six'
#or
#
#int_to_english(25161045656) == 'twenty five billion one hundred sixty-one million forty-five thousand six hundred and fifty-six'

# return the English representation of the given number
# int_to_english(1) => 'one'
# INCOMPLETE
 
def int_to_english(number)
  word  = ""
  container = []
  adjusted_length = (number.to_s.split('').length-1)
  position = adjusted_length/3
  remainder = adjusted_length%3
  lib = [["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], 
  ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"],
  ["", "thousand", "million", "billion", "trillion", "quadrillion", "quintillion", "sextillion", "octillion"], 
  ["ten", "eleveen", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eigteen", "ninteen"]]
  
  number.to_s.split('').reverse.each_slice(3){|digit| container << digit}
  
  container.each_with_index do |set, index|
    set.each_with_index do |digit, index2| 
      teen_check = (set[1]+set[0]).to_i unless set[0].nil? || set[1].nil?
      #binding.pry
      if index2 == 0 && teen_check < 20 && teen_check > 9 #if in the teens
        index == 0 && index2 == 0 ? word.prepend(lib[2][index]) : word.prepend(lib[2][index]+ " ")#thousand, million
        word.prepend(lib[3][teen_check%10])           #fifteen, sixteen and etc
        word.prepend("hundred ") unless digit.to_i == 0     #hundred
        word.prepend(lib[0][digit.to_i] + " ") unless digit.to_i == 0
        #binding.pry
        break
      end
      if index2 == 0
        index == 0 ? word.prepend(lib[2][index]) : word.prepend(lib[2][index]+ " ") #thousand, million, billion
        index == 0 ? word.prepend(lib[0][digit.to_i]) : word.prepend(lib[0][digit.to_i] + " ")   #one, five, six
      elsif index2 == 1
        word.prepend(lib[1][digit.to_i] + " ") unless digit.to_i == 0     #fifty, sixty, seventy
      elsif index2 == 2
        word.prepend("hundred ") unless digit.to_i == 0    #hundred
        word.prepend(lib[0][digit.to_i] + " ") unless digit.to_i == 0
      end      
    end
  end  
  word
  #binding.pry  
end
p int_to_english(15)
p int_to_english(1234567890)
#p int_to_english(25,161,045,656)
#(10**3) 555 five hundred fifty five
#(10**6) 555, 555 five hundred fifty five thousand || five hundred fifty five
#(10**9) 555, 555, 555 \\ five hundred fifty five million || five hundred fifty five thousand || five hundred fifty five
# 
# library of increments for position %3 == 0 w%[blank, thousand, million, billion, trillion, quadrillion, quintillion, sextillion, octillion]
# library of increment for position %3 == 1 w%[blank, ninety, eighty, seventy, sixty, fifty, forty, thirty, twenty]

# library of increds for position %1 === 2 w%[ninteen, eigteen, seventeen, sixteen, fifteen, fourteen, thirteen, twelve, eleveen, ten, nine, eight, seven, six, five, four, three, two, one]
