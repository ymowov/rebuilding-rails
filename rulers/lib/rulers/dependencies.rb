class Object
  def self.const_missing(c)
    @calling_const_missing ||= {}
    str_c = c.to_s

    return nil if @calling_const_missing[str_c]
    require Rulers.to_underscore(c.to_s)
    klass = Object.const_get(c)
    @calling_const_missing[str_c] = 1

    klass if klass
  end
end