```elixir
list = []

result = Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
end)
IO.puts result #Output: 0

list = [1, 2, 3, 4, 5]
result = Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc
  end
end)
IO.puts result #Output: 9

#Improved version handling empty list
list = [1,2,3,4,5]
result = if Enum.empty?(list), do: 0, else: Enum.reduce(list,0, fn x, acc -> if x > 3, do: acc + x, else: acc end)
IO.puts result #Output: 9

list = []
result = if Enum.empty?(list), do: 0, else: Enum.reduce(list,0, fn x, acc -> if x > 3, do: acc + x, else: acc end)
IO.puts result #Output: 0
```