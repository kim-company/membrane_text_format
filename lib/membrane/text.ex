defmodule Membrane.Text do
  @type t() :: %__MODULE__{
          encoding: :utf8,
        }

  defstruct [encoding: :utf8]
end
