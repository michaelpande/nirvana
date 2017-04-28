#!/bin/bash
# Remove status
curl "https://slack.com/api/users.profile.set?token=${SLACK_API_TOKEN}&profile=%7B%20%20%20%20%20%22status_text%22%3A%20%22%22%2C%20%20%20%20%20%22status_emoji%22%3A%20%22%22%20%7D"
# Turn off do not disturb
curl https://slack.com/api/dnd.endDnd?token=${SLACK_API_TOKEN}
