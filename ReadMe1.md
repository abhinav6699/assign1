What I did and Issues I faced which I was not able to solve

--Brew was already installed in mac
--First installed rbenv to download ruby 3.0.2 and make it global or default version
--Then installed bundle and then went to the folder directory where I cloned the given github repository
--run in terminal bundle install
--run in terminal rails db:migrate
--also went through basic tutorials for rails
1. First challenge(to create a sign up page): made a folder in view and created a file new.html.erb which will be my signup page.
Then went to route and created 2 paths , one was Post 'signup' which will post data in the user table and another Get 'signup' which will get me the page or action I am looking for.
Made a controller where I defined two functions "new" and "create". New will redirect us to the signup html.erb page. Create will post the details posted by the user in view.
Then I made the signup page.
Probelem I am facing- After I am saving the data to create an account, i am redirecting to root_path, but it doesn't does that.
2. Second Challenge(to change profile pic): I went to terminal and ran rails active_storage:install to create a database which will record the files we are submitting. I was able to create this but its not rendering on the home page.

my code where problem is faced: 
go to app/views/shared/profile/_preview.html.erb line 7

<% if @profile.image.attached? %>
<%= image_tag @profile.image,
id: "image-preview", style:"max-width:200px",
class: "shadow-xl rounded-full absolute w-1/2 transform -translate-y-1/2"
%>
<% end %>

3. Third Challenge(Experience and Projects view and edit section): same as signup I created two database for experience and projects and then ran rails db:migrate. I am pushing datas in the database but its not rendering on the browser saying can't find the method "experiences" though i haven't used any word experiences , I have typed experience.

go to app/views/shared/profile/_preview.html.erb line 56

<%= render 'shared/profile/profile_section_card', title: "Experience" do %>
<%= render partial: 'shared/profile/experience', collection: profile.experience %>
<% end %>
<%= render 'shared/profile/profile_section_card', title: "Projects" do %>
<%= render partial: 'shared/profile/projects', collection: profile.projects %>
<% end %>