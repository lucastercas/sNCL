import Media from require("sncl.components.presentation")

describe("Media Component", () ->
  local media

  before_each(() ->
    media = Media({
      id: "test_media"
    })
  )

  it("should create Media", () ->
    assert.truthy(media)
    assert.truthy(media.id == "test_media")
  )

  it("should have empty properties on creation", () ->
    assert.are.same(media.properties, {})
  )

  it("should add properties", () ->
    media\add_property("right", "100%")
    media\get_property("right")
  )

  it("should error when adding properties that already exists", () ->
    local errProperty
    media\add_property("right", "100%")
    errProperty = () -> media\add_property("right", "100%")
    assert.has_error(errProperty, "Property right already added to test_media")
  )

  it("should error when acessing properties not added", () ->
    local errProperty
    errProperty = () -> media\get_property("left")
    assert.has_error(errProperty, "Media do not have Property left")
  )

  it("should have params, and it should have an id", () ->
    local errId
    errId = -> Media{}
    assert.has_error(errId, "Media Component should have an Id")
  )

  describe("Table to NCL", () ->
    it("should output correct NCL with properties and children", () ->
      local mediaNCL, ncl
      media\add_property("right", "100%")
      mediaNCL = media\to_ncl("")
      ncl = "<media id='test_media'>\n   <property name='right' value='100%'/>\n</media>"
      assert.are_equal(ncl, mediaNCL)
    )
  )

  describe("sNCL to NCL", () ->)
)


