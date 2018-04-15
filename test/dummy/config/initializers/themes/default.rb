::Spina::Theme.register do |theme|
  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [{
    name:           'text',
    title:          'Text',
    partable_type:  'Spina::Text'
  }, {
    name:           'date',
    title:          'Date',
    partable_type:  'Spina::Date'
  }, {
    name:           'datetime',
    title:          'Date & Time',
    partable_type:  'Spina::DateTime'
  }]

  theme.view_templates = [{
    name:       'homepage',
    title:      'Homepage',
    page_parts: ['text']
  }, {
    name:         'show',
    title:        'Default',
    description:  'A simple page',
    usage:        'Use for your content',
    page_parts:   %w[text date datetime]
  }]

  theme.custom_pages = [{
    name:           'homepage',
    title:          'Homepage',
    deletable:      false,
    view_template:  'homepage'
  }]

  theme.navigations = [{
    name: 'mobile',
    label: 'Mobile'
  }, {
    name: 'main',
    label: 'Main navigation',
    auto_add_pages: true
  }]
end
