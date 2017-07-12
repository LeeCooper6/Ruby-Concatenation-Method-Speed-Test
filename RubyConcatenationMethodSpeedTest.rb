# Declare global testing parameters.
# alphabet_test_string is the test string to be concatenated to itself repeatedly.
alphabet_test_string = "The quick brown fox jumps over the lazy dog."
# Iterations determines how many times the test string will be concatenated to itself.
iterations = 1000
# Tests determines how many tests will be run using the same concatenation method.
tests = 100
# NOTE: Multiply iterations by tests. That's how many loops the code will do per concatenation method. There are three concatenation methods. So multiply iterations by tests by 3. That's how many total loops this code will run. Be careful, don't overdo it.

# Declares array of test results per each concatenation method.
plus_results = []
chevron_results = []
interpolation_results=[]

# Displays results of tests.
#   Parameters:
def display_results(results, verbose = false)
  sum = 0
  results.each do |result|
    sum += result
  end
  average = sum / results.length

  puts "Tests Run: #{results.length} tests."
  if verbose
    puts "Results: #{results}"
  end
  puts "Total Time: #{sum * 1000} milliseconds."
  puts "Maximum Time: #{results.max * 1000} milliseconds."
  puts "Minimum Time: #{results.min * 1000} milliseconds."
  puts "Average Time: #{average * 1000} milliseconds."
end

# Tests concatenation using "+" (copies).
tests.times do
  test_string = ""
  begin_time = Time.now
  iterations.times do
    test_string = test_string + " " + alphabet_test_string
  end
  end_time = Time.now
  plus_results.push(end_time - begin_time)
end

# Tests concatenation using "<<" (in-place).
tests.times do
  test_string = ""
  begin_time = Time.now
  iterations.times do
    test_string = test_string << " " << alphabet_test_string
  end
  end_time = Time.now
  chevron_results.push(end_time - begin_time)
end

# Tests concatenation using "#{var}" (interpolation).
tests.times do
  test_string = ""
  begin_time = Time.now
  iterations.times do
    test_string = "#{test_string} #{alphabet_test_string}"
  end
  end_time = Time.now
  interpolation_results.push(end_time - begin_time)
end

# Display all test results.
puts ""
[["Plus Concatenation (a + b)", plus_results], ["Chevron Concatenation (a << b)", chevron_results], ["Interpolation (\#{a} \#{b})", interpolation_results]].each do |results|
  display_results(results[1], false)
  puts ""
end
