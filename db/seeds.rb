puts 'Populando alunos'

10.times do
  Aluno.create(
    nome: Faker.name,
    rga: '2019.1907.004-4',
    situacao: :ativo,
    curso: "Sistemas de informação",
    registrado_em: DateTime.now
  )
end
