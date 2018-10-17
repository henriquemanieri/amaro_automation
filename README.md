# Amaro Automation

Follow the instructions below, to run front-end and back-end automation.

## Prerequisites

```
Ruby 2.4.2
Chromedriver 2.40
Bundler
```

## Get start

Install all frameworks and gems running:

```
bundle install
```
Then use the commands below, to run the automation:

```
Front-End:
cucumber -t @login

cucumber -t @active_user

cucumber -t @inactive_user


Back-End:
cucumber -t @login

cucumber -t @active_user

cucumber -t @inactive_user
```
