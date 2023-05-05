defmodule Membrane.Text.Language do
  # NOTE: The current list is taken from the AWS transcriber, as we are actually limited by them.
  @codes MapSet.new(
           ~w(af-ZA ar-AE ar-SA zh-CN zh-TW da-DK nl-NL en-AU en-GB en-IN en-IE en-NZ en-AB en-ZA en-US
              en-WL fr-FR fr-CA fa-IR de-DE de-CH he-IL hi-IN id-ID it-IT ja-JP ko-KR ms-MY pt-PT pt-BR
              ru-RU es-ES es-US sv-SE ta-IN te-IN th-TH tr-TR vi-VN)a
         )

  @typedoc "Language code in BCP-47 (currently RFC 5646)."
  @type code :: unquote(Enum.reduce(@codes, &{:|, [], [&1, &2]}))

  def codes(), do: Enum.to_list(@codes)

  def parse!(code) do
    {:ok, code} = parse(code)
    code
  end

  def parse(code) when is_binary(code) do
    code
    |> String.to_atom()
    |> parse()
  end

  def parse(code) when is_atom(code) do
    case MapSet.member?(@codes, code) do
      true -> {:ok, code}
      false -> {:error, :unsupported_language}
    end
  end
end
