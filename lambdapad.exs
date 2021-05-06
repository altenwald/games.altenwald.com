import Lambdapad

blog do
  source cards: "cards/**/*.md"

  pages "cards" do
    set from: :cards
    set template: "cards.html"
    set index: true
    set paginated: fn(_cards, config) ->
      config["blog"]["items_per_page"] || 12
    end
    set uri: fn
      (1, _content) -> "/"
      (index, _content) -> "/page/#{index}"
    end
    set var_name: "cards"
  end
end
