Person.create(name: 'Ahan Takagi', age: 80, mail: 'takagi@bamiyan.com')
Person.create(name: 'Ythe', age: 50, mail: 'ythe@gmial.com')
Person.create(name: 'Yoshii Kazuya', age: 46, mail: 'tyms@yellowmonkey.com')


Questionary.create(title: 'テスト', description: 'テストです。', deadline: DateTime.now)


data = ['red', 'starless', 'starman', 'idiot', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'zero', 'white', 'blue', 'yellow', 'purple', 'orange', 'green', 'cyan', 'magenta']

# sampleメソッドでdata配列からランダムで１つ取り出す。
for i in 1..100 do
  DataPage.create(data: data.sample)
end

