namespace :posts do
  task :populate_permalinks => :environment do
    Post.find_in_batches(batch_size: 500) do |posts|
      posts.each do |post|
        post.permalink = post.generate_permalink
        post.save
      end
    end
  end
end
