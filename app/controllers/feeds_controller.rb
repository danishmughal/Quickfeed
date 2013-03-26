class FeedsController < ApplicationController
	def home
		if current_user 
			@feed = Koala::Facebook::API.new(current_user.oauth_token)
			@graph = Koala::Facebook::API.new(current_user.oauth_token)

			to = Time.now.to_i
			yest = 1.day.ago.to_i
			@news = @feed.fql_query("SELECT post_id, actor_id, target_id, message FROM stream 
				WHERE filter_key in (SELECT filter_key FROM stream_filter WHERE uid = me() AND type = 'newsfeed')")

		end
	end
end
