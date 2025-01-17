# Elixir Enum.each Blocking Issue

This repository demonstrates a potential blocking issue when using `Enum.each` in Elixir with time-consuming operations within the loop. The issue arises because `IO.puts` might block the execution of the `Enum.each`, leading to unexpected behavior, especially when dealing with long-running processes or I/O operations inside the loop.

The `bug.ex` file contains the problematic code.  The `bugSolution.ex` file shows the solution using `Task.async` to handle the time consuming processes in parallel to avoid blocking issues.