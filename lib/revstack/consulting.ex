defmodule Revstack.Consulting do
  use Ash.Domain, otp_app: :revstack, extensions: [AshAdmin.Domain]

  admin do
    show? true
  end

  resources do
    resource Revstack.Consulting.Lead
    resource Revstack.Consulting.EstimateRequest
  end
end
