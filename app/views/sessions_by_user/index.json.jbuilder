json.sessions_by_user do
  json.array! @sessions_by_user do |sessions_by_user|
    json.visitorId sessions_by_user.user.visitorId
    json.duration sessions_by_user.duration
    json.pages do
      json.array! sessions_by_user.events do |event|
        json.url event.url
      end
    end
    json.startTime sessions_by_user.start_time
  end
end
