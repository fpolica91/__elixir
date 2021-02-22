defmodule Sample.Control do
  def day_abbrv(day) do
    cond do
      day == :Monday -> "M"
      day == :Tuesday -> "Tues"
      day == :Wednesday -> "Weds"
      day == :Thursday -> "Thurs"
      day == :Friday -> "Fri"
      day == :Saturday -> "Sat"
      day == :Sunday -> "Sun"
      true -> "Invalid Day"
    end
  end

  def day_abbreviate(:Monday), do: "M"
  def day_abbreviate(:Tuesday), do: "Tues"
  def day_abbreviate(:Wednesday), do: "Weds"
  def day_abbreviate(:Thursday), do: "Thurs"
  def day_abbreviate(:Friday), do: "Fri"
  def day_abbreviate(:Saturday), do: "Sat"
  def day_abbreviate(:Sunday), do: "Sun"
  def day_abbreviate(_), do: "Invalid day"
  
end