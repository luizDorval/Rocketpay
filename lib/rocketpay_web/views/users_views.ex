defmodule RocketpayWeb.UsersView do
  alias Rocketpay.{Account, User}

  def render("create.json", %{user: %User{account: %Account{id: account_id, balance: balance}, id: user_id, name: name, nickname: nickname}}) do
    %{
      message: "User created",
      user: %{
        id: user_id,
        name: name,
        nickname: nickname,
        account: %{
          id: account_id,
          balance: balance
        }
      }
    }
  end
end
