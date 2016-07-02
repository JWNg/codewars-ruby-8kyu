#is_my_friend_cheating?
#A friend of mine takes a sequence of numbers from 1 to n (where n > 0).
#Within that sequence, he chooses two numbers, a and b.
#He says that the product of a and b should be equal to the sum of all numbers in the sequence, excluding a and b.
#Given a number n, could you tell me the numbers he excluded from the sequence?
#The function takes the parameter: n (don't worry, n is always strictly greater than 0 and small enough so we shouldn't have overflow) and returns an array of the form:
#
#[(a, b), ...] or [[a, b], ...] or {{a, b}, ...} or or [{a, b}, ...]
#with all (a, b) which are the possible removed numbers in the sequence 1 to n.
#
#[(a, b), ...] or [[a, b], ...] or {{a, b}, ...} or ...will be sorted in increasing order of the "a".
#
#It happens that there are several possible (a, b). The function returns an empty array if no possible numbers are found which will prove that my friend has not told the truth!
#
#Examples:
#
#removNb(26) should return [(15, 21), (21, 15)]
#removNb(100) should return []


def removNb(n)
  solution_container = []
  sum = (n * (n+1))/2.0
  for a in 1..n do
    for b in 1..(n-1) do
      sum_less_a_and_b = sum - (a + b)
      next if (a*b) != sum_less_a_and_b 
      solution_container << [a,b]
    end
  end 
  solution_container
end
