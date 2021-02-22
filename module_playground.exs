defmodule ModulePlayground do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]
  require Integer
    def say_here do
      write_puts "I am at the crib"
    end
    
    def write_puts(param1) do
      puts param1
    end

    def print_is_even(num) do
     puts Integer.is_even(num)
    end
end