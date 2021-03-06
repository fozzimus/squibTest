require 'squib'

data = Squib.csv file: 'cards.csv'
layouts = ['economy.yml', '_part2_01_factions.yml']

Squib::Deck.new cards: data['name'].size, layout: layouts do
  background color: 'white'
  rect layout: 'cut'
  rect layout: 'safe'
  text str: data['name'], layout: 'title'
  text str: data['power'], layout: 'description'
  text str: Time.now, layout: 'credits'
  svg layout: data['faction'] # that's all we need!! layout does the rest
  save_sheet prefix: '_part2_01_factions_', columns: 4
  save_pdf trim: 37.5
end
