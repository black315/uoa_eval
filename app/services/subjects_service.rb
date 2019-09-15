module SubjectsService

  require "date"

  module_function

  def getPeriodList()
    currentDate = Date.today
    currentPeriod = currentDate.year - 1992
    periodList = []
    for period in 1...currentPeriod+1
      periodList.push(currentPeriod - period + 1)
    end
    periodList
  end

end