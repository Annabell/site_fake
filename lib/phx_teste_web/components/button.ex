defmodule Button do
  use Surface.Component

  prop label, :string
  prop click, :event, required: true
  prop kind, :string, default: "is-info"

  slot default

  def render(assigns) do
    ~F"""
    <button type="button" class={"button", @kind} :on-click={@click}>
      <#slot>{@label}</#slot>
    </button>
    """
  end
end
