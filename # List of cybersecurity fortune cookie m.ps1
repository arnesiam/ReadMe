# List of cybersecurity fortune cookie messages
$FortuneMessages = @(
    "Your password is like a toothbrush: Don't share it, change it often, and don't leave it lying around!",
    "Beware of phishing emails! They're like disguised chameleons trying to steal your secrets.",
    "Encryption is like wrapping your data in a digital burrito. Keep it spicy and secure!",
    "Remember, the best hackers are the ones who never existed. Stay mysterious!",
    "Firewall rule updated! Your network now has an invisible force field. Watch out for virtual dragons!",
    "Surf the web like a ninja: silently, swiftly, and with a katana browser extension.",
    "The weakest link in cybersecurity? Probably that one intern who uses 'password123'.",
    "Debugging code is like solving a mystery. Sherlock Holmes would've made a great sysadmin!",
    "Cybersecurity tip: If your password is 'password,' you might as well write it on a post-it and stick it to your monitor.",
    "Two-factor authentication: Because even Batman needs a backup plan."
)

# Select a random message
$RandomIndex = Get-Random -Minimum 0 -Maximum $FortuneMessages.Count
$SelectedMessage = $FortuneMessages[$RandomIndex]

# Display the fortune cookie message
Write-Host "Your cybersecurity fortune: $SelectedMessage" 