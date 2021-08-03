class WorkCategory < ActiveHash::Base
  self.data = [
    {id: 1 , name: '--'},
    {id: 2 , name: '洗濯'},
    {id: 3 , name: '部屋掃除'},
    {id: 4 , name: '料理'},
    {id: 5 , name: '片付け'},
    {id: 6 , name: '皿洗い'},
    {id: 7 , name: 'トイレ掃除'},
    {id: 8 , name: '風呂掃除'},
    {id: 9 , name: '玄関掃除'},
    {id: 10 , name: 'その他'}
  ]
end