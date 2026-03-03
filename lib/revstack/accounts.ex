defmodule Revstack.Accounts do
  use Ash.Domain, otp_app: :revstack, extensions: [AshAdmin.Domain]

  admin do
    show?(true)
  end

  resources do
    resource Revstack.Accounts.Token
    resource Revstack.Accounts.User
  end
end
