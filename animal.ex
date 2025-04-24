defmodule Animal do
  def start(name, speak_func) do
    spawn_link(fn ->
      state = %{name: name, speak_func: speak_func}
      loop(state)
    end)
  end

  defp loop(state) do
    receive do
      {:speak, caller} ->
        send(caller, {:ok, state.speak_func.(state.name)})
        loop(state)
      _ -> loop(state)
    end
  end

  def speak(pid) do
    send(pid, {:speak, self()})
    receive do
      {:ok, message} -> IO.puts(message)
    after 1000 -> IO.puts("Timeout error")
    end
  end
end