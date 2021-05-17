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

  pages "about" do
    set from: "snippets/about.md"
    set template: "about.html"
    set uri: "/about"
    set var_name: "about"
  end
end
