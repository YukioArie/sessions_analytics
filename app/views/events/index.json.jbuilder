json.events do
  json.array! @events do |event|
    json.url event.url
    json.visitorId event.user.visitorId
    json.timestamp event.timestamp
  end
end
