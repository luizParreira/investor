defmodule Investor.Web.Router do
  use Investor.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Investor.Web do
    pipe_through :api
  end
end
