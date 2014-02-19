require 'sass'

module Sass::Script::Functions

  # def sqrt(number)
  #   numeric_transformation(number) { |n| Math.sqrt(n) }
  # end
  # Sass::Script::Functions.declare :sqrt, [:number]

  def compare(string1, string2)
    assert_type string1, :String
    assert_type string2, :String
    Sass::Script::Bool.new(string1 == string2)
  end
  Sass::Script::Functions.declare :compare, [:string1, :string2]
  # def filter(filter, list, position=1)
  #   list.to_a.select { |a| a[position] != filter[position] }
  # end

end