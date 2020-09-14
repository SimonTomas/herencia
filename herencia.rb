class Appointment
    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end

    def location
        @location
    end

    def purpose
        @purpose
    end

    def hour
        @hour
    end

    def min
        @min
    end
end

class MonthlyAppointment < Appointment
    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day
    end

    def day
        @day
    end

    def occurs_on?(day)
        @day == day ? true : false
    end

    def to_s
        "Reunión mensual en #{@location} sobre #{@purpose} el día #{@day} a la(s) #{@hour}:#{@min}."
    end
end

class DailyAppointment < Appointment

    def occurs_on?(hour,min)
        @hour == hour && @min == min ? true : false
    end

    def to_s
        "Reunión diaria en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{@min}."
    end
end

class OneTimeAppointment < Appointment
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def day
        @day
    end

    def month
        @month
    end

    def year
        @year
    end

    def occurs_on?(day, month, year)
        @day == day && @month == month && @year == year ? true : false
    end

    def to_s
        "Reunión única en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{year} a la(s) #{@hour}:#{@min}."
    end
end