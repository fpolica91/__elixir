# Exploring how Enum modules work
# modules: map, filter, reduce


#1.
Enum.each([1,2,3], fn(x) -> IO.puts(x) end)
#2 
sum = Enum.reduce([1,2,3], 0, fn(x, total) -> x + total end)
#3 
Enum.map([1,2,3], fn(x) -> IO.puts(x) end)

defmodule Sample.MyEnum do
  def each([head | tail], function) do
    function.(head)
    each(tail, function)
  end

  def each([], _function), do: nil


  def reduce([head | tail], total, function) do
    new_total = function.(head, total)
    reduce(tail, new_total, function)
  end

  def reduce([], total, _function), do: total

  def map([head | tail], function) do
    [function.(head) | map(tail, function)]
  end
  def map([], _function), do: []
end