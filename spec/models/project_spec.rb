require 'rails_helper'

describe Project do

  describe "initialization" do
    let(:project) { Project.new }
    let(:task) { Task.new }

    it "considers project without task to be done" do
      expect(project.done?).to be_truthy
    end

    it "knows that a project with an incomplete task is not done" do
      project.tasks << task
      expect(project.done?). to be_falsy
    end
  end
end