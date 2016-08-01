class Doctor
  attr_reader :name
  attr_accessor :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
    #adds this instance of appointment to the doctor method of the appointment class
  end

  def patients
    @appointments.collect{|appointment| appointment.patient}
  end
end

