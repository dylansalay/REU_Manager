module ReuProgram
  class DashboardController < AdminController
    def index

      @sum = Applicant.count
      @countStarted = Applicant.where(state: "Started").count
      @countCompleted = Applicant.where(state: "Completed").count
      @countAccepted = Applicant.where(state: "Accepted").count
      @countRejected = Applicant.where(state: "Rejected").count
      @countWithdrawn = Applicant.where(state: "Withdrawn").count

      # @appStart = Setting.where(name: "Application Start").value
      @values = Setting.first(6)
      @settings = Setting.all
      # @value = Setting.important_field_path('value')
      # @appDeadline = 
      # @notDate = 
      # @programStart = 
      # @programEnd = 
      # @uni = 
      # @dept = 

    end
  end
end
