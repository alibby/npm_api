module NpmApi
  class Download

    def self.month_of(start_day, package=nil)
      raise "start_day must be a 'String'. eg, 2017-04-23" unless start_day.is_a?(String)

      d = DateTime.parse(start_day)
      sd = d.beginning_of_month
      ed = d.end_of_month

      path = "downloads/point/#{format_dt(sd)}:#{format_dt(ed)}/#{package}"

      json = Client.get(path)
    end

    def self.last_day(package=nil)
      path = "downloads/point/last-day/#{package}"
      json = Client.get(path)
    end

    def self.last_week(package=nil)
      path = "downloads/point/last-week/#{package}"
      json = Client.get(path)
    end

    def self.last_month(package=nil)
      path = "downloads/point/last-month/#{package}"
      json = Client.get(path)
    end

    private

    def self.format_dt(dt)
      dt.strftime("%Y-%m-%d")
    end

  end
end
