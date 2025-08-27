# Trajectory plan descriptor (published once per plan/update)
std_msgs/Header header

string type             # "min_jerk" | "arc" | "straight"
float64 t0_us           # PX4/odometry clock at plan start (microseconds)
float64 duration        # seconds (can be +inf for straight)
string repeat           # "none" | "loop" | "pingpong"

# Common seed state (world frame)
float64[9] state0       # [x,y,psi, xd,yd,psid, xdd,ydd,psidd]

# For min_jerk (quintic), pack 3x6 coefficients [x,y,psi] rows
float64[18] coeffs      # NaN if not used

# For closed-form primitives
float64 speed           # m/s  (arc/straight)
float64 yaw_rate        # rad/s (arc; 0 for straight)
float64 heading         # rad   (straight; constant heading)
float64 distance        # meters (straight segment; 0 if not used)
