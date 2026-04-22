defmodule Membrane.Text do
  @moduledoc """
  Stream format describing buffers that contain text.

  ## Fields

    * `encoding` - text encoding. Currently only `:utf8` is supported.

    * `sparse` - whether the stream is sparse in time.

      If `false`, buffers are expected to form a contiguous text stream.
      If `true`, buffers may appear only for selected time ranges or events.

    * `timestamped` - whether buffers are expected to carry timing information.

      If `true`, buffers should carry `pts`, and may additionally carry `metadata.to`
      to mark the end of a timed text interval.
      If `false`, buffers are treated as ordered text payloads without timeline placement.
  """

  @type t() :: %__MODULE__{
          encoding: :utf8,
          sparse: boolean(),
          timestamped: boolean()
        }

  defstruct encoding: :utf8,
            sparse: false,
            timestamped: false
end
