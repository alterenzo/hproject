# H

## Usage

1. Install dependencies with `bundle`
2. Start the postgresql service with `brew services start postgresql`
3. Create the database with `rails db:create`
4. Run the migrations with `rails db:migrate`
5. Launch the server with `bundle exec rails s`

### Product Owner Q/A

Q: Who should be able to leave comments? Should this limited to authenticated users
A: Yes, only authenticated users should be able to leave comments

Q: Should it be possible to delete projects?
A: At this moment we can consider it out of scope.

Q: What kind of projects are we talking about?
A: A project should revolve around purchasing a house, so the state transitions should reflect that.




    

