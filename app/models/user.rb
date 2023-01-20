class User < Person
  def valid_identifier?
    CpfCnpj.valid_cpf?(identifier)
  end
end
