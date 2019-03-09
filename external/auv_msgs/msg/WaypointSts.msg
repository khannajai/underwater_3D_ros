# This message acknowledges the active waypoint request 
# (Stay/Body/World/Global) and indicates if the vehicle is in position within
# the requested tolerances. Immediately sent by the pilot in response to each
# waypoint request message, not sent periodically.

Header header

# Common waypoint details
GoalDescriptor goal

# True if currently within waypoint tolerance for all enabled axes.
bool achieved
