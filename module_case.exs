defmodule Sample.Case do
  def describe_date(date) do
      case date do
        {1, _, _} -> "Brand new month"
        {25, 12, _} -> "Merry Chirstmas"
        {31, 10, 1517} -> "The reformation is happening"
        {_, month, _} when month <= 12 -> "Just an average month"
        {_, _, _} -> "Invalid Month"
      end
  end
end