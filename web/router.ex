defmodule Metrix.Router do
  use Metrix.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Metrix do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    resources "/companies", CompanyController
    resources "/projects", ProjectController
    resources "/environments", EnvironmentController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Metrix do
  #   pipe_through :api
  # end
end
