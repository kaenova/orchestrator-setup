# #!/bin/sh

# # Setup installer
# STEP=1
# DEFAULT_STEP=1
# print_step_name() {
#   echo ""
#   echo "STEP $STEP/$DEFAULT_STEP: $1"
#   echo "============================================================"
#   STEP=$((STEP + 1))
# }

# # All needed inputs
# echo "Enter Database Username:"
# read username
# echo "Enter Database Password:"
# read password
# echo "Total Database Instances (More Info: https://dev.mysql.com/doc/mysql-operator/en/):"
# read instances
# echo "Total Database Routers (More Info: https://dev.mysql.com/doc/mysql-operator/en/):"
# read routers

# # Check username, password, instances and routers
# if [ -z "$username" -a -z "$password" -a -z "$instances" -a -z "$routers"]; then
#   echo "Username, password, instances, and routers is required"
#   exit 1
# fi

# # Encode username and password to base64 for creating secrets
# username=$(echo -n $username | base64)
# password=$(echo -n $password | base64)



