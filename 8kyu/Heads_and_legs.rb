#Description
#
#Everybody has probably heard of the animal heads and legs problem from the earlier years at school. It goes:
#
#“A farm contains chickens and cows. There are x legs and y heads. How many chickens and cows are there?”
#
#Where x <= 1000 and y <=1000
#
#Task
#
#Assuming there are no other types of animals, work out how many of each animal are there.
#
#Return a list in Javascript [Heads, Legs] and a tuple in Python (Heads, Legs)
#
#If there are no cases for the amount of legs and heads - return "No solutions".
#
#In the form:
#
#[Heads, Legs] = [72, 200]
#
#VALID - [72, 200] =>             [44 , 28]   
#                             [Chickens, Cows]
#
#INVALID - [72, 201] => "No solutions"
#However, if 0 heads and 0 legs are given always return [0, 0] since zero heads must give zero animals.
#
#There are many different ways to solve this, but they all give the same answer.
#
#You will only be given integers types - however negative values (edge cases) will be given. You can't have negative animals - so return "No solutions".
#
#Happy coding!

def animals(heads, legs)
  return [0, 0] if [heads, legs] == [0,0]
  return "No solutions" if (legs % 2) == 1
  return "No solutions" if heads == 0
  cows, chickens = 0, heads
  until ((chickens * 2)+(cows * 4)) == legs || cows >= 1000 || chickens <= 0 do
    chickens -= 1
    cows += 1
  end
  return "No solutions" if chickens < 0 || ((chickens * 2)+(cows * 4)) != legs
  [chickens, cows] 
end
