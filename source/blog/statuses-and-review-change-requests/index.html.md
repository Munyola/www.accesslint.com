---
title: Statuses and Review Change Requests
date: 2017-09-01
tags: changes
---

When you've installed the GitHub App, the next time you open a Pull Request
you'll notice a new "check" status badge for AccessLint. That's our way of
telling you what AccessLint is up to.

![GitHub Pull Request dashboard showing a pending check for AccessLint review](https://accesslint-images.nyc3.digitaloceanspaces.com/blog/accesslint-commit-status-pending.jpg)

GitHub supports failure statuses that you can configure to block delivery of
code. We don't do that. AccessLint will only show you pending and success
statuses, even if you've introduced an issue. We're following a Code Review
model instead of a failing build model, so that you have more flexibility while
still being accountable.

![GitHub Pull Request dashboard showing AccessLint review comments with a success status](https://accesslint-images.nyc3.digitaloceanspaces.com/blog/accesslint-commit-status-success.jpg)

To that end, we've changed the Review from "Comment" to "Request Changes". We
hope this drives it home that you really should fix the issue, but we won't go
so far as to block delivery.
