import Property from require("sncl.components.property")

class PresentationElement
  new: (params) =>
    { id: @id } = params
    assert(@id, "#{@@__name} Component should have an Id")
    @properties = {}
    @children = {}

  add_property: (name, value) =>
    if @properties[name]
      error("Property #{name} already added to #{@id}")
    new_property = Property({name: name, value: value})
    @properties[name] = new_property

  get_property: (name) =>
    assert(@properties[name], "#{@@__name} do not have Property #{name}")
    return @properties[name]

  to_ncl: (indent="   ") =>
    tag = @@__name\lower()
    properties = ""
    for _, property in pairs(@properties)
      properties = properties..property\to_ncl(indent.."   ")
    children = ""
    ncl = "#{indent}<#{tag} id='#{@id}'>#{children}#{properties}\n#{indent}</#{tag}>"
    return ncl


class Context extends PresentationElement
  new: (params) =>
    super(params)
    { refer: @refer } = params

  add_children: (child) =>
    @children[child.id] = child


class Media extends PresentationElement
  new: (params) =>
    super(params)
    {
      src: @src
      _type: @_type
      refer: @refer
      instance: @instance
      descriptor: @descriptor
    } = params

{ :Media, :Context }
