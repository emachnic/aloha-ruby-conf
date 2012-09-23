module Schedule
  class Printer
    def initialize(data)
      @data = data
    end

    def print_schedule
      @data.keys.each do |date|
        print_date(date)
        print_schedule_table(@data[date])
      end
    end

    private
    def print_date(date)
      puts date.strftime("%A, %B %-d, %Y")
    end

    def print_schedule_table(data)
      table = Terminal::Table.new :headings => ["Time", "Track 1", "Track 2"], :rows => data

      puts table.render
    end
  end
end