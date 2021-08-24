And(/^login and password are entered$/) do |table|
  table.hashes[0].each do |key, value|
    fill_in key, with: value
  end
end