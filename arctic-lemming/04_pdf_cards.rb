require 'squib'

data = Squib.csv file: 'cards.csv'

Squib::Deck.new cards: data['name'].size, layout: 'economy.yml' do
  background color: 'white'
  rect layout: 'cut' # cut line as defined by TheGameCrafter
  rect layout: 'safe' # safe zone as defined by TheGameCrafter
  text str: data['name'], layout: 'title'
  text str: data['power'], layout: 'description'
  text str: Time.now, layout: 'credits'
  save_png
  #does this even export anything?
  ## yes it does. It saves the file to _output/
  save_pdf trim: 37.5
   #does this also even do anything as it is?
   #yes!! it saves the pdf to _output/

end
