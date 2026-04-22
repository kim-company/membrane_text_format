# Membrane Text Format
Plugin for describing buffers that contain text.

`Membrane.Text` supports the following stream-level properties:

- `encoding` - text encoding, currently `:utf8`
- `sparse` - whether buffers cover the whole timeline or only selected ranges/events
- `timestamped` - whether buffers are expected to carry `pts` and optionally `metadata.to`
