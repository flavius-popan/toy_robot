defmodule ToyRobot.Robot do
  @doc """
  Moves the robot east one space.

  iex> alias ToyRobot.Robot
  ToyRobot.Robot
  iex> robot = %{position: 0}
  %{position: 0}
  iex> robot |> Robot.move_east
  %{position: 1}
  iex> robot |> Robot.move_east |> Robot.move_east |> Robot.move_east
  %{position: 3}
  """
  @spec move_east(map()) :: map()
  def move_east(robot) do
    %{position: robot.position + 1}
  end

  @doc """
  Moves the robot west one space.

  iex> alias ToyRobot.Robot
  ToyRobot.Robot
  iex> robot = %{position: 0}
  %{position: 0}
  iex> robot |> Robot.move_west
  %{position: -1}
  iex> robot |> Robot.move_west |> Robot.move_west |> Robot.move_west
  %{position: -3}
  """
  @spec move_west(map()) :: map()
  def move_west(robot) do
    %{position: robot.position - 1}
  end
end
