class Property
  new: (params) =>
    {
      name: @name
      value: @value
    } = params

  to_ncl: (indent="   ") =>
    return "\n#{indent}<#{@@__name\lower()} name='#{@name}' value='#{@value}'/>"

{ :Property }
