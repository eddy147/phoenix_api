defmodule PhoenixApiWeb.DefaultController do
    use PhoenixApiWeb, :controller

    def index(conn, _params) do
        text conn, "PhoenixApi!"
    end
end