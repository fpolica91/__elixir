defmodule Sample.Enum do
  def first(list) do
   hd(list)
  end

  def first_1([]) do
    nil
  end

  def first_1([head | _]) do
    head
  end
end