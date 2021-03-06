#!/usr/bin/env bats

@test "say: text, no username, --gnu-style=<>" {
    skip "tests are broken"
    run bash discord.sh --text="text, no username, --gnu-style=<>"
    [ "$status" -eq 0 ]
}

@test "say: text, no username, --gnu-style <>" {
    skip "tests are broken"
    run bash discord.sh --text "text, no username, --gnu-style <>"
    [ "$status" -eq 0 ]
}

@test "say: text, username, --gnu-style varied" {
    skip "tests are broken"
    run bash discord.sh --username "clever name" --text="text, username, --gnu-style varied"
    [ "$status" -eq 0 ]
}

@test "say: text, username, avatar, --gnu-style varied" {
    skip "tests are broken"
    run bash discord.sh --username "Peyton Manning" --text="OMAHA" --avatar-url "https://i.kym-cdn.com/photos/images/newsfeed/001/207/210/b22.jpg"
    [ "$status" -eq 0 ]
}

@test "say: invalid webhook URL (should fail)" {
    skip "tests are broken"
    run bash discord.sh --text "how tf can you even see this?" --webhook-url "https://discordapp.com/api/webhooks/invalid/lol-no"
    [ "$status" -eq 0 ]
}

@test "say: malformed webhook URL (should fail)" {
    skip "tests are broken"
    run bash discord.sh --text "lol" --webhook-url "lol not a webhook"
    [ "$status" -ne 0 ]
    # travis sux
}

