require('rspec')
require('task')

describe(Task) do

  before() do
    Task.clear
  end

  describe('#description') do
    it('returns a description for a instance of a Task') do
      test_task = Task.new("Wash the car.")
      expect(test_task.description()).to(eq("Wash the car."))
    end
  end

  describe('#save') do
    it('saves an instance of Task to an array') do
      test_task = Task.new("Fix the windows.")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe('.all') do
    it('starts out empty at first') do
      expect(Task.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties all saved tasks') do
      test_task = Task.new("Mow the lawn.")
      test_task.save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end
end
