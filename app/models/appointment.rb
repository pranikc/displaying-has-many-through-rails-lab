class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def date
        self.appointment_datetime.strftime("%B %e, %Y")
    end

    def time
        self.appointment_datetime.strftime("%H:%M")
    end
end
