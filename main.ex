defmodule Main do
  def run do
    rex = Dog.new("Rex")
    whiskers = Cat.new("Whiskers")
    
    Animal.speak(rex)
    Animal.speak(whiskers)
    
    # Keep main alive
    Process.flag(:trap_exit, true)
    receive do: (_ -> :ok)
  end
end

Main.run()