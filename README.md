# Azure pod manager

For a task in my job I needed to often to login inside azure pod 
containers and I needed to execute several commands every time 
which was slow. I created this simple azure pod manager bat script, and 
I am publishing here with home it to be useful for someone with 
similar problem in the future. 

## How it works? 

The script logins in azure and lists available pods for the specified 
cluster then asks you to specify which pod to connect to. When you choose 
a pod it connects and the console remains opened. You can execute shell
commands in this pod. You need just to double-click on `AzurePodManager.bat` file.

### What do you need to set up? 

You need to set up the following variables: 
- cluster_name
- subscription_id
- resource_group_name
- resource_name
  