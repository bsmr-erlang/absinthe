defmodule Absinthe.Language.InlineFragment do

  @type t :: t
  defstruct type_condition: nil, directives: [], selection_set: nil, loc: %{start: nil}

  defimpl Absinthe.Language.Node do
    def children(node) do
      [List.wrap(node.type_condition),
       node.directives,
       List.wrap(node.selection_set)]
      |> Enum.concat
    end
  end

end