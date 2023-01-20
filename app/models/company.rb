class Company < Person
  def valid_identifier?
    CpfCnpj.valid_cnpj?(identifier)
  end
end
