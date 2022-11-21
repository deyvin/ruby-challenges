require 'rspec/autorun'

def not_called_up(players, called_up)
  players - called_up
end

def was_not_cup_album(players, called_up)
  called_up - players
end

describe "called_up" do
  let(:players) do
    [
      'Alisson', 'Ederson', 'Danilo', 'Alex Sandro',
      'Millitão', 'Marquinhos', 'Thiago Silva',
      'Fred', 'Paquetá', 'Fabinho',
      'Casemiro', 'Philippe Coutinho', 
      'Vinicius Jr', 'Richarlison',
      'Gabriel Jesus', 'Antony',
      'Neymar', 'Raphinha'
    ]
  end

  let(:called_up) do
    [
      'Alisson', 'Weverton', 'Ederson',
      'Danilo', 'Thiago Silva', 'Marquinhos',
      'Alex Sandro', 'Dani Alves', 'Millitão',
      'Alex Telles', 'Bremer', 'Casemiro',
      'Paquetá', 'Fred', 'Fabinho',
      'Bruno Guimarães', 'Éverton Ribeiro',
      'Richarlison', 'Neymar', 'Raphinha',
      'Gabriel Jesus', 'Antony', 'Vinicius Jr',
      'Rodrygo', 'Pedro', 'Gabriel Martinelli'
    ]
  end

  it "Player who was no called up" do
    result = not_called_up(players, called_up)
    expect(result).to eq(['Philippe Coutinho']) 
  end

  it "Players who was not in the cup album" do
    result = was_not_cup_album(players, called_up)
    expect(result).to eq([
      'Weverton', 
      'Dani Alves', 
      'Alex Telles', 
      'Bremer', 
      'Bruno Guimarães', 
      'Éverton Ribeiro', 
      'Rodrygo', 
      'Pedro', 
      'Gabriel Martinelli'
    ])
  end
  
  
end
