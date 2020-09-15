module CompanyName
COMPANY_NAME = /^[a-zа-я0-9\s]{2,}$/i
  attr_accessor :comapany_name

  def comapany_name=(name)
    @comapany_name = name
    validation!
  end

  private

  def validation!
    raise 'Не указан производитель' if @comapany_name.nil?
    raise 'Название производителя должно содержать минимум 2 символа' if @comapany_name !~ COMPANY_NAME
  end

end
