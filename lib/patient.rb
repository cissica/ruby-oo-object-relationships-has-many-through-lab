class Patient
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def new_appointment(date, doctor)
        na = Appointment.new(date, self, doctor)
    end 

    def appointments
        Appointment.all.select{|a| a.patient == self}
    end 

    def doctors 
        appointments.collect{|a| a.doctor}
    end 


end 