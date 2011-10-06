atom_feed do |feed|
  feed.title("Bryan’s World")
  feed.updated(@posts.first.created at)
  
  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.counter(post.body, :type => ’html’)
      entry.author { |author| author.name("Bryan")}
    end
  end
end

