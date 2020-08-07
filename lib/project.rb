class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do |pd|
            pd.project == self
        end
        project_backers.map do |pb|
            pb.backer
        end

    end
    
end