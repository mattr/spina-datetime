module Spina
  # DateTime is an extension of the Spina::Date editor which supports time as
  # well. This is useful for things like `published_at` for blog posts etc.
  class DateTime < ::Spina::ApplicationRecord
    # Stores both date and datetime values in the same table; effectively,
    # date just stores the value with midnight.
    self.table_name = 'spina_dates'

    # Separate fields for the form which are mapped to `content`.
    attr_accessor :date, :time

    # Sets the content from the form fields.
    before_save :set_content_from_attrs
    # Sets the form fields from any existing content.
    after_find  :set_attrs_from_content

    private

    def set_content_from_attrs
      years, months, days = @date.split('-')
      hours, minutes, mer = @time.split(/\:|\s/)
      hours += 12 if mer =~ /pm/i
      self.content = ::DateTime.new(years, months, days, hours, minutes)
    end

    def set_attrs_from_content
      @date = self.content.strftime('%Y-%m-%d')
      @time = self.content.strftime('%I:%M %p')
    end
  end
end
