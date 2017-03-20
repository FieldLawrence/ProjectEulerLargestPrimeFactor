class PrimeFactor
  require 'prime'
  given_number_to_factor = 600851475143
  current_number = 2
  largest_factor = 1
  factorization_array = []
  prime_array = []

  # Determine the square root of the given number to find the prime factors in order to make the program run faster
  # Based on Number Theory
  square_root_given_number = Math.sqrt(given_number_to_factor)

  # While loop in order to find the factors of the given number less than the square root
  # These numbers are put into an array for future manipulation
  while current_number < square_root_given_number
    largest_factor = current_number if given_number_to_factor % current_number == 0
    if largest_factor != factorization_array.last || factorization_array == []
    factorization_array.push(largest_factor)
    end
    current_number += 1
  end
puts " #{factorization_array} "

  # This loop determines which of the factors are prime
  i=0
  while i < factorization_array.length
    if Prime.prime?(factorization_array[i])
      prime_array.push(factorization_array[i])
    end
    i += 1
  end

  largest_prime = prime_array.last
  print " Largest Prime Factor of #{given_number_to_factor} is : #{largest_prime}"
end