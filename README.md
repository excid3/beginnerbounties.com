# [Beginner Bounties](https://beginnerbounties.com)

Help new developers get their first paid work and build their resumes to help them land their first Junior developer job!

## Development

A GitHub fork is a copy of a repository (repo) that sits in your account rather than the account from which you forked the data from. Once you have forked a repo, you own your forked copy. This means that you can edit the contents of your forked repository without impacting the parent repo. Follow [Github instructions](https://docs.github.com/en/get-started/quickstart/fork-a-repo#forking-a-repository) on how to Fork this repository.


To Get up and running on Development Environment, check out to the repo & execute

    $ rvm install "ruby-3.2.1"

Install all dependencies with bundle

    $ bundle install

Setup Database

    $ rake db:create

Run migrations

    $ rake db:migrate --trace

Precompile assets

    $ rake db:migrate --trace



run `bin/rails test:all` to run the tests. You can also run `rails c` for an interactive prompt that will allow you to experiment.