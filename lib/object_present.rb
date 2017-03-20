class ObjectPresent
  def initialize(object)
    @object = object
  end

  def present?
    if @object.present?
      yield
    else
      nil
    end
  end
end
