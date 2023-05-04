defmodule Membrane.Text do
  @type t() :: %__MODULE__{
          encoding: :utf8,
          language_code: Membrane.Text.Language.code()
        }
  defstruct encoding: :utf8, language_code: nil
end
