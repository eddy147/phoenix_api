defmodule PhoenixApiWeb.Router do
  use PhoenixApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixApiWeb do
    pipe_through :api
    resources "/businesses", BusinessController, except: [:new, :edit]
  end

  pipeline :browser do
    plug(:accepts, ["html"])
  end

  scope "/", PhoenixApiWeb do
    pipe_through :browser
    get "/", DefaultController, :index
  end
end
