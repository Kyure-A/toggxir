defmodule Toggxir do
  @moduledoc """
  Documentation for `Toggxir`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Toggxir.hello()
      :world

  """
  def hello do
    :world
  end

  defmodule Toggxir.User do
    defstruct email: nil, password: nil, token: nil

    def setEmail do
    end

    def setPassword do
    end

    def setToken do
    end
    
    
    def getToken do
      if (email == nil || password == nil) && token == nil  do
	
      end
    end
  end
  
end
