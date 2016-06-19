#Finish the uefaEuro2016() function so it return string just like in the examples below:
#
#uefaEuro2016(['Germany', 'Ukraine'],[2, 0]) // "At match Germany - Ukraine, Germany won!"
#uefaEuro2016(['Belgium', 'Italy'],[0, 2]) // "At match Belgium - Italy, Italy won!"
#uefaEuro2016(['Portugal', 'Iceland'],[1, 1]) // "At match Portugal - Iceland, teams played draw."

def uefa_euro_2016(teams, scores)
  string = "At match #{teams[0]} - #{teams[1]}, "
  return (p string + "teams played draw.") if scores[0] == scores[1]
  scores[0] > scores[1] ? (p string + "#{teams[0]} won!") : (p string + "#{teams[1]} won!") 
end
