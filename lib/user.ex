 defmodule Toggxir.User do
  defstruct email: "", password: "", token: ""

  def setEmail(new_email), do: %Toggxir.User{ email: new_email, password: password, token: token}

  def setPassword(new_password), do: %Toggxir.User{ email: email, password: new_password, token: token}

  def setToken(new_token), do: %Toggxir.User{ email: email, password: password, token: new_token}
  
  def getToken do
    cond do
	## not work 
      Toggxir.User.token != "" ->
	{:ok, "#{token}:api_token"}
      Toggxir.User.email != "" && Toggxir.User.password != "" ->
	{:ok, "#{email}:#{password}"}
      true ->
	{:error, :please_set_token}
    end
  end
  
end
