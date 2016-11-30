require 'squib'

data = Squib.csv file: 'cards.csv'

Squib::Deck.new cards: data['name'].size, layout: 'economy.yml' do
  background color: 'white'
  rect layout: 'cut' # cut line as defined by TheGameCrafter
  rect layout: 'safe' # safe zone as defined by TheGameCrafter
  text str: data['name'], layout: 'title'
  text str: data['power'], layout: 'description'
  #save_png
  # this was the original command. I do think it misses something
  ### nope, it actually saves stuff on _output ;)
  save_png prefix: '03_card', dir: '.'
  #this command generates the output on the current dir.
end
