defmodule Dog do
  def new(name) do
    Animal.start(name, fn name -> "#{name} says: Woof!" end)
  end
end