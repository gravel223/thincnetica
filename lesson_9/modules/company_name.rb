# frozen_string_literal: true

module CompanyName
  NAME_FORMAT = /^[a-zа-я0-9\s]{2,}$/i.freeze

  attr_reader :company_name

  def company_name=(name)
    @company_name = name
    validation!
  end

  private

  def validation!
    raise 'Не указан производитель' if @company_name.nil?
    raise 'Название производителя должно содержать минимум 2 символа' if @company_name !~ NAME_FORMAT
  end
end
