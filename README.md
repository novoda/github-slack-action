# github-slack-action

The aim of this action is to posts text message to your slack channel that are linked to a validation status. For example, you might want to post a green flagged message for a validation text; or a red flagged message for a warning text.

![Good message](https://github.com/novoda/github-slack-action/blob/master/resources/positive-example.png)

![Danger message](https://github.com/novoda/github-slack-action/blob/master/resources/negative-example.png)

You can also mention users by providing the necessary information described in the **mentionPairs** parameters description

## Inputs

### color

**Required** Changes the color of the border on the left side of this attachment from the default green. Can either be one of good (green), warning (yellow), danger (red), or any hex color code (eg. #439FE0)

### text

**Required** The message that you want to post. Markdown is not supported.

### webhook

**Required** The webhook to your slack channel, never use a URL directly as Slack will automatically remove it. Use your Github secrets.

### mentionPairs

Provide a list of githubUsername::slackMemberId space separated

> ferran::U0111 clara::U0121

When this field is populated then all githubUsername's that appear in the **text** field will be mentioned in slack

###

### Example

```
- name: Post to slack
  uses: novoda/github-slack-action@master
  with:
    color: danger
    text: This is a danger example text for ferran
    webhook: ${{ secrets.SLACK_WEBHOOK_URL }}
    mentionPairs: ferran::U0111 clara::U0121
```
