TOKEN=$(cat ../slack-token)

# Turn on do not disturb on OS X
defaults -currentHost write ~/Library/Preferences/ByHost/com.apple.notificationcenterui doNotDisturb -boolean true
defaults -currentHost write ~/Library/Preferences/ByHost/com.apple.notificationcenterui doNotDisturbDate -date "`date -u +\"%Y-%m-%d %H:%M:%S +000\"`"
killall NotificationCenter

# Set slack status
curl "https://slack.com/api/users.profile.set?token=$TOKEN&profile=%7B%20%20%20%20%20%22status_text%22%3A%20%22Wurkin',%20till:%20"$(ruby -e "puts (Time.now + 1500).strftime('%H:%M')")"%22%2C%20%20%20%20%20%22status_emoji%22%3A%20%22%3Agodmode%3A%22%20%7D"

# Do no disturb slack
curl "https://slack.com/api/dnd.setSnooze?token=$TOKEN&num_minutes=26"
