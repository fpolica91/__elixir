defmodule Sample.Recursion do
  # define default value
  def hello_world(count \\ 0)
  def hello_world(count) when count > 10, do: "Please enter a number smaller than 10"
  # \\ indicates default value is 0 
  def hello_world(count) do
    IO.puts("Hello World")
    if count < 10 do
      new_count = count + 1
      hello_world(new_count)
    end
  end
end

defmodule Sample.MyList do

  # def my_each([head | tail]) do
  #   IO.puts(head)
  #     if tail != [] do
  #       my_each(tail)
  #     end
  # end
  

  # defines function delete_all/2
  #calls delete_all with 3 args to avoid user passing emptylist
  def delete_all(list, element) do
    delete_all(list, element, [])
  end

  # head is the firt element in the list [1,2,3], head = [1], tail = [2,3]
  # if first element is equal to element we want to delete call recursive without head
  def delete_all([head | tail], element, new_list) when head === element do
    delete_all(tail, element, new_list)
  end

  def delete_all([head | tail], element, new_list) do
    delete_all(tail, element, [head | new_list])
  end
  # if list is empty return new_list with elements minus the removed element
  def delete_all([], element, new_list) do
    Enum.reverse(new_list)
  end

  def simple_delete(list, argument) do
    new_list = Enum.filter(list, fn(x) -> x != argument end)
  end

end