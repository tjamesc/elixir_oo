defmodule Cat do
  def new(name) do
    Animal.start(name, fn name -> "#{name} says: Meow!" end)
  end
end