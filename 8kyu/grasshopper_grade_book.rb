#Description:
#
#Grade book
#
#Complete the function so that it finds the mean of the three scores passed to it and returns the letter value associated with that grade.
#
#Numerical Score	Letter Grade
#90 <= score <= 100	'A'
#80 <= score < 90	'B'
#70 <= score < 80	'C'
#60 <= score < 70	'D'
#0 <= score < 60	'F'
#Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.

def get_grade(s1, s2, s3)
  case avg = (s1.to_f + s2.to_f + s3.to_f)/3.0
  when 90..100
    "A"
  when 80..90
    "B"
  when 70..80
    "C"
  when 60..70
    "D"
  else 
   "F"
  end   
end
