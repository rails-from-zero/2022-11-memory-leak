namespace :posts do
  task :populate_permalinks => :environment do
    mem = GetProcessMem.new
    puts mem.kb

    # HeapProfiler.report("/tmp/memory-leak") do
    Post.limit(2000).find_in_batches(batch_size: 500) do |posts|
      posts.each do |post|
        post.permalink = post.generate_permalink
        post.save
      end

      puts mem.kb
    end
    binding.pry
    # end
  end
end
