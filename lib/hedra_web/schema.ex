defmodule HedraWeb.Schema do
  use Absinthe.Schema

  @desc "User object"
  object :user do
    field(:id, :id)
    field(:email, :string)
    field(:firstname, :string)
    field(:lastname, :string)
  end

  @users %{
    "1" => %{id: 1, email: "test1@example.com", firstname: "John", lastname: "Tester"},
    "2" => %{id: 2, email: "test2@example.com", firstname: "Jane", lastname: "Tester"}
  }

  query do
    field :user, :user do
      arg(:id, non_null(:id))

      resolve(fn %{id: user_id}, _ ->
        {:ok, @users[user_id]}
      end)
    end
  end
end
