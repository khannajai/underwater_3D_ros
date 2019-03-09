# vehicle_msgs/ThrusterFeedback.msg

Header header          # message header

int32[6] throttle      # thrusters throttle feedback (normalized between -100 and 100)
float32[6] current     # thrusters internal current feedback

int32[6] temp          # thrusters temperature feedback (integer precision)
int32[6] status        # thrusters internal status feedback (bitfields)
int32[6] errors        # thrusters communication errors' count
