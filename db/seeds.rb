pinboard = Pinboard::Client.new(:token => ENV['PINBOARD_API_TOKEN'])

pinboard.posts.each do |post|
  puts post

  Link.create(
    :link => post.href,
    :description => post.description,
    :read => false,
    :date_saved => post.time,
    :tags => post.tag.sort.join(' ')
  )

  post.tag.each do |tag|
    t = Tag.find_or_create_by(name: tag)
    t.count = t.count + 1
    t.save
  end
end
