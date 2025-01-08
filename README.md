# Elixir Enum.reduce Silent Failure

This repository demonstrates a subtle bug in Elixir's `Enum.reduce` function when used with an empty list.  The provided code attempts to sum elements greater than 3; however, it silently fails without raising an error if the input list is empty.  The solution demonstrates how to handle this edge case gracefully.

## Bug
The `bug.exs` file contains the erroneous code, which fails to handle the scenario where the input list is empty.  This could lead to unexpected behavior in a larger application if not properly accounted for.

## Solution
The `bugSolution.exs` file demonstrates a corrected version that explicitly handles the empty list case, preventing silent failure.