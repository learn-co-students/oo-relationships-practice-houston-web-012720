class Project

    attr_reader :founder, :goal, :name

    @@all=[]

    def initialize(name, founder, goal)
        @name = name
        @founder = founder
        @goal = goal
        @@all << self
    end



    def pledges
        Pledge.all.select{ |pledge|
            pledge.project == self
        }
    end

    def backers
        pledges.map { |pledge|
            pledge.user
        }.uniq
    end

    def pledges_amount
        am = pledges.sum { |sum = 0, pledge|
            sum = sum + pledge.amount
        }
        if !am
            am = 0
        end
        am
    end

    def print
        puts "#{@name}, founder: #{@founder.name}, goal:$#{@goal}, get:$#{pledges_amount}"
    end

    def self.no_pledges
        @@all.select { |project|
            project.pledges_amount == 0
        }
    end

    def self.above_goal
        @@all.select { |project|
            project.pledges_amount > project.goal
        }
    end

    def self.most_backers
        @@all.max_by { |project|
            project.backers.length
        }
    end

    def self.all
        @@all
    end

    def self.get_random
        @@all.sample
    end

end

# - .no_pledges
#   - returns all projects which have no pledges yet
# - .above_goal
#   - returns all projects which have met or exceeded their pledge goal
# - .most_backers
#   - returns the project with the highest number of backers