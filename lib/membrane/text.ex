defmodule Membrane.Text do
  @type t() :: %__MODULE__{
          encoding: :utf8,
          locale: String.t()
        }

  @enforce_keys [:locale]
  defstruct [encoding: :utf8] ++ @enforce_keys
end
