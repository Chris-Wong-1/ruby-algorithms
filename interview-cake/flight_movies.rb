# You've built an in-flight entertainment system with on-demand movie streaming.
#
# Users on longer flights like to start a second movie right when their first one ends, but they complain that the plane usually lands before they can see the ending. So you're building a feature for choosing two movies whose total runtimes will equal the exact flight length.
#
# Write a function that takes an integer flight_length (in minutes) and a list of integers movie_lengths (in minutes) and returns a boolean indicating whether there are two numbers in movie_lengths whose sum equals flight_length.
#
# When building your function:
# - Assume your users will watch exactly two movies
# - Don't make your users watch the same movie twice
# - Optimize for runtime over memory

def flight_movies(flight_length, movie_lengths)
  difference = Hash.new
  remaining_time = 0

  movie_lengths.each do |time|
    remaining_time = flight_length - time
    if difference[remaining_time]
      return true
    else
      difference[time] = true
    end
  end
  return false
end

# p flight_movies(145, [60, 45, 90, 85])
# p flight_movies(120, [30, 60, 40])
