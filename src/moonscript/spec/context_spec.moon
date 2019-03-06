import Media, Context from require("sncl.components.presentation")

describe 'Context Component', () ->
  context = Context({
    id: 'text_context'
  })

  it 'should create component', () ->
    assert.truthy(context)
    assert.truthy(context.id == 'text_context')

  it 'should media as child', () -> 
    media = Media({
      id: 'test_media'
    })
    context\add_children(media)
    assert.truthy(1 == 1)


