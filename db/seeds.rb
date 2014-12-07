pinboard = Pinboard::Client.new(:token => ENV['PINBOARD_API_TOKEN'])

pinboard.posts.each do |post|
  puts post

  Link.create(
    :link => post.href,
    :description => post.description,
    :read => false,
    :date_saved => post.time,
    :tags => post.tag.join(' ')
  )
end
