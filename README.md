# github-slack-action

The aim of this action is to posts text message to your slack channel that are linked to a validation status. For example, you migh want to post a green flagged message for a validation text; or a red flagged message for a warning text.

## Inputs

### color

**Required** Changes the color of the border on the left side of this attachment from the default green. Can either be one of good (green), warning (yellow), danger (red), or any hex color code (eg. #439FE0)

### text

**Required** The message that you want to post. Markdown is not supported.

### webhook

**Required** The webhook to your slack channel

### Example

```
- name: Post to slack
  uses: novoda/github-slack-action@master
  with:
    color: danger
    text: This is a danger example text
    webhook: ${{ secrets.SLACK_WEBHOOK_URL }}
```