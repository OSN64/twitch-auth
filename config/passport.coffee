
 # Passport configuration
 #
 # This is the configuration for your Passport.js setup and it where you'd
 # define the authentication strategies you want your application to employ.
 #
 # Authentication scopes can be set through the `scope` property.
 #
 # For more information on the available providers, check out:
 # http://passportjs.org/guide/providers/

module.exports.passport =

    twitch:
        name: 'twitch'
        protocol: 'oauth2'
        strategy: require('passport-twitch').Strategy
        options:
            clientID: 'xxxx'
            clientSecret: 'xxx'
            callbackURL: "http://example.com/auth/twitch/callback"
            scope: ["user_read", "channel_subscriptions", "channel_commercial"]
