# Used by "mix format".
# See the documentation for Mix.Tasks.Format for a complete list of options.
[
  inputs: [
    "{mix,.formatter}.exs",
    "{config,lib,test}/**/*.{ex,exs}",
    "priv/*/seeds.exs"
  ],
  import_deps: [
    :phoenix,
    :phoenix_live_view,
    :ash,
    :ash_phoenix,
    :ash_authentication_phoenix
  ],
  plugins: [Phoenix.LiveView.HTMLFormatter]
]
