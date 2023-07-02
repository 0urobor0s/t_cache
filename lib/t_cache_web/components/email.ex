defmodule TCacheWeb.Email do
  import Phoenix.Template, only: [embed_templates: 2]

  embed_templates "email/*.html", suffix: "_html"
  embed_templates "email/*.text", suffix: "_text"
end
