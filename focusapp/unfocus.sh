# Turn off do not disturb on OS X
defaults -currentHost write ~/Library/Preferences/ByHost/com.apple.notificationcenterui doNotDisturb -boolean false
killall NotificationCenter

# Delete slack status
curl "https://slack.com/api/users.profile.set?token=<your-slack-token-here>&profile=%7B%20%20%20%20%20%22status_text%22%3A%20%22%22%2C%20%20%20%20%20%22status_emoji%22%3A%20%22%22%20%7D"

# End do not disturb on slack
curl https://slack.com/api/dnd.endDnd?token=<your-slack-token-here>

# Play sound and display notification
afplay /System/Library/Sounds/Glass.aiff
osascript -e 'display notification "Breaktime" with title "Take a Break!"'
