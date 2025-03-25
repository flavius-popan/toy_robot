defmodule ToyRobot.Robot do
  defstruct north: 0, east: 0, facing: :north
  alias ToyRobot.Robot

  @doc """
  Moves the robot forward one space in the direction it is facing.

  iex> alias ToyRobot.Robot
  ToyRobot.Robot
  iex> robot = %Robot{north: 0, facing: :north}
  %Robot{north: 0, facing: :north}
  iex> robot |> Robot.move
  %Robot{north: 1}
  """
  def move(%__MODULE__{facing: facing} = robot) do
    case facing do
      :north -> robot |> move_north
      :east -> robot |> move_east
      :south -> robot |> move_south
      :west -> robot |> move_west
    end
  end

  @doc """
  Turns the robot left.

  iex> alias ToyRobot.Robot
  ToyRobot.Robot
  iex> robot = %Robot{facing: :north}
  %Robot{facing: :north}
  iex> robot |> Robot.turn_left
  %Robot{facing: :west}
  """
  def turn_left(%Robot{facing: facing}) do
    case facing do
      :north -> %Robot{facing: :west}
      :east -> %Robot{facing: :north}
      :south -> %Robot{facing: :east}
      :west -> %Robot{facing: :south}
    end
  end

  @doc """
  Turns the robot right.

  iex> alias ToyRobot.Robot
  ToyRobot.Robot
  iex> robot = %Robot{facing: :north}
  %Robot{facing: :north}
  iex> robot |> Robot.turn_right
  %Robot{facing: :east}
  """
  def turn_right(%Robot{facing: facing}) do
    case facing do
      :north -> %Robot{facing: :east}
      :east -> %Robot{facing: :south}
      :south -> %Robot{facing: :west}
      :west -> %Robot{facing: :north}
    end
  end

  defp move_east(%Robot{} = robot) do
    %Robot{east: robot.east + 1}
  end

  defp move_west(%Robot{} = robot) do
    %Robot{east: robot.east - 1}
  end

  defp move_north(%Robot{} = robot) do
    %Robot{north: robot.north + 1}
  end

  defp move_south(%Robot{} = robot) do
    %Robot{north: robot.north - 1}
  end
end
