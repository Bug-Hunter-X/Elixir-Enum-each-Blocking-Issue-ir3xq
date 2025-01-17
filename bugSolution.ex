```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  Task.async(fn ->
    if x == 3 do
      Process.sleep(1000) # Simulate some work
    end
    IO.puts(x)
  end)
end)
```
This solution uses `Task.async` to run the `IO.puts` and the time consuming `Process.sleep` operations concurrently. This prevents any of them from blocking the execution of the loop and producing an inconsistent result.