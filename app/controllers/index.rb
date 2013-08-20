get '/' do
  erb :index
end

get '/commits' do
	@user = Github.new
  @commits = @user.repos.commits.all  'danillawafer', 'twitter1'
  erb :commit_info
end

get '/avatars' do
	@user = Github.new
	@following = @user.users.followers.following 'Vise890'
	erb :avatars
end

get '/gists' do
	@user = Github.new
	@gists = @user.gists.list user: 'fabianuribe'
	p @gists
	erb :gists
end
