$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
   pp nds
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
 grand_total = 0
row_index = 0
while row_index < directors_database.length do
  column_index = 0
  while column_index < directors_database[row_index].length do
    inner_len = directors_database[row_index][column_index].length
    inner_index = 0
    while inner_index < inner_len do
      # Explanation!
      # vm[row][column][spinner]
      # total titles by name - movies -- title for each director 
      titles = []
      titles << directors_database[row_index][column_index][inner_index][:title]
      grand_total = titles.length
      inner_index += 1
    end
    column_index += 1
  end
  row_index += 1
end
 
p grand_total
end
