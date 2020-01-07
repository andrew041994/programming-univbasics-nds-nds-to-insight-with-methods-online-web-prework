require 'directors_database'
require "pry"

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  results = {}
  director_counter=0
  while director_counter < nds.size
  movie_counter=0
  total=0
    while movie_counter < nds[director_counter][:movies].size
      # binding.pry
      total+=nds[director_counter][:movies][movie_counter][:worldwide_gross]
      movie_counter+=1
    end
    results[nds[director_counter][:name]] = total
    director_counter+=1
  end
  results
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  pp director_data
  puts director_data
end
