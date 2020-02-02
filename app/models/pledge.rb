class Pledge

    attr_reader :user, :project, :amount

    @@all=[]

    def initialize(user, project, amount)
        @user = user
        @project = project
        @amount = amount
        @@all << self
    end

    def print
        puts "#{@user.name} donated $#{@amount} to #{@project.name}"
    end

    def self.all
        @@all
    end
end