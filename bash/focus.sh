#!/bin/bash
NIRVANA_SNOOZE_MINUTES=$1
NIRVANA_SNOOZE_SECONDS=$((NIRVANA_SNOOZE_MINUTES*60))
curl "https://slack.com/api/users.profile.set?token=${SLACK_API_TOKEN}&profile=%7B%20%20%20%20%20%22status_text%22%3A%20%22Wurkin',%20till:%20"$(ruby -e "puts (Time.now + ${NIRVANA_SNOOZE_SECONDS}).strftime('%H:%M')")"%22%2C%20%20%20%20%20%22status_emoji%22%3A%20%22%3Agodmode%3A%22%20%7D"
curl "https://slack.com/api/dnd.setSnooze?token=${SLACK_API_TOKEN}&num_minutes="$NIRVANA_SNOOZE_MINUTES
