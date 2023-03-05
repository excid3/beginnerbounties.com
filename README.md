# [Beginner Bounties](https://beginnerbounties.com)

Help new developers get their first paid work and build their resumes to help them land their first Junior developer job!

## Development

1. Follow [Github instructions](https://docs.github.com/en/get-started/quickstart/fork-a-repo#forking-a-repository) on how to Fork this repository.


2. To Get up and running on Development Environment, check out to the repo & execute

        $ rvm install "ruby-3.2.1"

3. Install all dependencies with bundle

        $ bundle install

4. Setup Database and run migrations

        $ rake db:create
        $ rake db:migrate --trace

5. Precompile assets

        $ bundle exec rake assets:precompile

6. Start the web server with

        $ ./bin/dev


run `bin/rails test:all` to run the tests. You can also run `rails c` for an interactive prompt that will allow you to experiment.