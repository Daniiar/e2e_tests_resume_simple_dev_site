And(/^main information fields are filled$/) do |table|
  table.hashes[0].each do |key, value|
    fill_in key, with: value
  end
end

And(/^education is added$/) do |table|
  table.hashes[0].each do |key, value|
    case key
    when 'Уровень образования'
      find('label', text: key).find(:xpath,  '..').click()
      find('.v-list-item__title', text: value).click()
    when 'Название учебного заведения'
      find('label', text: key).find(:xpath,  '..').click()
      find('input[placeholder="Выберите учебное заведение"]').set(value)
    else
      fill_in key, with: value
    end
  end
end

And(/^additional education is added$/) do |table|
  table.hashes[0].each do |key, value|
    fill_in key, with: value
    sleep(1)
  end
end

And(/^job is added$/) do |table|
  table.hashes[0].each do |key, value|
    case key
    when 'Должность'
      find('input[placeholder="Выберите должность"]').set(value)
      find('.v-list-item__title', text: value).click()
    when 'Обязанности', 'Задачи', 'Навыки'
      find('label', text: key).find(:xpath, '..').click
      find('.v-list-item__title', text: value).click()
      sleep(1)
      find('div[role="listbox"]').send_keys(:escape)
    else
      fill_in key, with: value
    end
  end
end

And(/^some information is displayed$/) do |table|
  table.hashes[0].values.each do |value|
    assert_text(value)
  end
end