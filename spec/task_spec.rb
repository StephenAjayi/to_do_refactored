require('rspec')
require('task')

describe(Task) do
  describe('#description') do
    it('returns a description for a instance of a task') do
      test_task = Task.new("Wash the car.")
      expect(test_task.description()).to(eq("Wash the car."))
    end
  end
end
