# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: '470' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
].freeze

def take_order(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
  print '>'
  selected_index = gets.to_i - 1
  selected_menu = menus[selected_index]
  puts "#{selected_menu[:name]}(#{selected_menu[:price]}円)ですね。"
  selected_index
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
drink_index = take_order(DRINKS)

puts 'フードメニューはいかがですか?'
food_index = take_order(FOODS)

total = DRINKS[drink_index][:price].to_i + FOODS[food_index][:price].to_i
puts "お会計は#{total}円になります。ありがとうございました！"
