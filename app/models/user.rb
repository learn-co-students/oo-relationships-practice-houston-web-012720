class User

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def projects
        Project.all.select{ |project|
            project.founder == self
        }
    end

    def print
        puts @name
    end

    def pledges
        Pledge.all.select { |pledge|
            pledge.user == self
        }
    end

    def urs_highest_pledge
        pledges.max_by { |pledge|
            pledge.amount
        }
    end

    def create_project
        Project.new(rand_instance_name, self, rand(1000..1000000))
    end

    def donate
        Pledge.new(self,Project.get_random, rand(1..1000))
    end



    def self.multi_pledger
        @@all.select { |user|
            user.pledges.length > 1
        }
    end

    def self.project_creator
        @@all.select { |user|
            user.projects.length > 0
        }
    end
    
    def self.highest_pledge
        @@all.max_by{ |user|
            
            if user.urs_highest_pledge
                user.urs_highest_pledge.amount
            else 
                0
            end
            
        }
    end

    def self.all
        @@all
    end

    def self.generate
        User.new(rand_name)
    end

    def self.get_random
        @@all.sample
    end

end


# - .highest_pledge
#   - returns the user who has made the highest pledge
# - .multi_pledger
#   - returns all users who have pledged to multiple projects
# - .project_creator
#   - returns all users who have created a project