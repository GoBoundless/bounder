require 'pathname'
require 'fileutils'
require 'listen'
require 'thor'
require 'grit'

module Bounder
  class CLI < Thor
    include Thor::Actions

    def self.source_root
      File.expand_path('../../..', __FILE__)
    end

    desc 'version', 'Show the current version of Spar'

    def version
      require 'bounder/version'
      puts "Bounder Version #{Bounder::VERSION}"
    end

    desc 'clone', 'Clone a boundless repo'

    def clone(repo_name, destination_name=nil)
      run "git clone git@github.com:GoBoundless/#{repo_name}.git #{destination_name || repo_name}"
    end

    desc 'new', 'Create a new branch'

    def new(branch_type, name)
      begin
        repo = Grit::Repo.new(Dir.pwd)
      rescue Grit::InvalidGitRepositoryError
        raise "It doesn't look like you're in a git repo. Woops."
      end
    end

  end
end
