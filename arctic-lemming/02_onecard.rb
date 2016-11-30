require 'squib'

Squib::Deck.new cards: 1, layout: 'economy.yml' do
  background color: 'white'
  rect layout: 'cut' # cut line as defined by TheGameCrafter
  rect layout: 'safe' # safe zone as defined by TheGameCrafter
  text str: 'Robot', layout: 'title'
  text str: 'Draw two cards.', layout: 'description'
  # save_png
  # this was the original command. I do think it misses something
  ### nope, it actually saves stuff on _output ;)
  save_png prefix: '02_card', dir: '.'
  #this command generates the output on the current dir.
end
