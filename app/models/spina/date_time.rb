module Spina
  # DateTime is an extension of the Spina::Date editor which supports time as
  # well. This is useful for things like `published_at` for blog posts etc.
  class DateTime < ::Spina::ApplicationRecord
    self.set_table_name = 'spina_dates'

    attr_accessor :date, :time

    before_filter :set_content_from_attrs
    after_find    :set_attrs_from_content

    private

    def set_content_from_attrs
      years, months, days = @date.split('-')
      hours, minutes, mer = @time.split(/\:|\s/)
      hours += 12 if mer.match(/pm/i)
      self.content = DateTime.new(years, months, days, hours, minutes)
    end

    def set_attrs_from_content
      @date = self.content.strftime('%Y-%m-%d')
      @time = self.content.strftime('%I:%M %p')
    end
  end
end
