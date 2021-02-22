defmodule Sample.Funcs do
 def squaring([]) do nil end

  def squaring(list) do
    Enum.map(list, fn(x) -> x * x end) 
  end
  
  def sum_list([]) do nil end

  def sum_list(list) do 
    Enum.reduce(list, 0, fn(num, acc) -> acc + num end)
  end

  def customize(a, func) do 
    func.(a)
  end
end