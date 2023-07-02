defmodule TCache do
  @moduledoc """
  TCache keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def cache do
    apply(TCache.T1, String.to_existing_atom("func"), ["test"])
  end

  def cache_component(template_name) do
    html = apply(TCacheWeb.Email, String.to_existing_atom("#{template_name}_html"), [%{}])
    text = apply(TCacheWeb.Email, String.to_existing_atom("#{template_name}_text"), [%{}])

    {html, text}
  end
end
