require 'prime'

class Key
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def very_interesting?
    primes.include?(@value.to_i)
  end

  private

  def primes
    Prime.first(1000)
  end
end
