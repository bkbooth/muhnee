defmodule MuhneeWeb.Router do
  use MuhneeWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", MuhneeWeb do
    pipe_through(:api)

    scope "/v1" do
      resources("/users", UserController, except: [:new, :edit])
    end
  end
end
