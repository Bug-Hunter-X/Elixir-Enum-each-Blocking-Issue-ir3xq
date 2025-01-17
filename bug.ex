```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    Process.sleep(1000) # Simulate some work
  end
  IO.puts(x)
end)
```
This code will correctly print 1,2,3,4,5 to the console. However, if we make `Process.sleep` time-consuming, the `IO.puts` might be blocking the execution of the `Enum.each` and could lead to unexpected behavior. 