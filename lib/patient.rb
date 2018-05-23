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

  def new_appointment
    Appointment.new(patient, self, date)
  end

  def doctors 
    self.appointments.collect {|appointment| appointment.doctor}
  end
end
