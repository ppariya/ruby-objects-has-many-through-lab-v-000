class Appointment

  attr_accessor :patient, :doctor, :date
  @@all = []

  def initialize(patient, doctor, date)
    @npatient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end


end
