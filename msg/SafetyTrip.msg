# A latched trip event broadcast by OffboardManager; subscribers (Navigator, etc.)
# can react immediately and late-joining nodes still get the last state.
builtin_interfaces/Time stamp
string source     # e.g., node name
bool   tripped    # true = tripped/failsafe active; false = cleared/normal
string reason     # short machine-friendly reason, e.g. "excess_tilt", "odom_stale"
