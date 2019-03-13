Dado("que estou na home do quinto andar") do
  visit 'https://www.quintoandar.com.br/'
end

Quando("efetuo uma busca com filtros") do
  fill_in('LocationName', with: 'São Paulo')
  find_all('div.jss294', text: 'Paulo').first.click
  find('span.sc-bdVaJa', text:'Filtrar').click
  find('#parkingspaces > ul > div > li:nth-child(2) > label').click
  find('#furnished > ul > div > li:nth-child(2) > label').click
  find('#acceptspets > ul > div > li:nth-child(3) > label').click
  find('#app > div > main > section:nth-child(2) > div > div.wx7orw-0.gwGUiw > div > button').click
end

Então("visualizo os filtros foram aplicados") do
  filtros = find_all('#app > div > main > div > div').to_a.map{|i| i.text}
  expect(filtros).to match_array(['1 vagas', 'Mobiliado', 'Não aceita'])
end