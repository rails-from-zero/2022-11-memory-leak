Honeycomb.configure do |config|
  # Get this via https://ui.honeycomb.io/account after signing up for Honeycomb
  config.write_key = 'YOUR_API_KEY'
  # The name of your app/service is a good choice to start with
  config.service_name = 'my-ruby-app'

  config.notification_events = %w[
    sql.active_record
    render_template.action_view
    render_partial.action_view
    render_collection.action_view
    perform.active_job
    process_action.action_controller
    send_file.action_controller
    send_data.action_controller
    deliver.action_mailer
  ].freeze
end
