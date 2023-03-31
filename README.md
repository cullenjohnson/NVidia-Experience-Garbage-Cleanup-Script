# NVidia GeForce Experience Garbage Cleanup Script

**:bangbang: This script will DELETE files and folders. Run it at your own risk! :bangbang:**

NVidia GeForce Experience leaves drivers on your system FOREVER. You can download and schedule this PowerShell script to delete these files. You will need to run this powershell script with administrative privileges.

## Scheduling with Windows Task Scheduler

Search for "Task Scheduler" in the Windows Start menu and click on it.
![image](https://user-images.githubusercontent.com/2159765/229043549-af0aa763-b42d-4380-9525-907c89baf5e9.png)

Click on "Create a Basic Task..." on the right.
![image](https://user-images.githubusercontent.com/2159765/229043866-d34c2ffc-d45b-48a9-ac77-5532b224986f.png)

Enter whatever name and description you think is appropriate for the task and click Next.
![image](https://user-images.githubusercontent.com/2159765/229044192-1698348e-60fb-4bcd-9378-b0da3acb6414.png)

Choose how often you want the script to run (I chose monthly) and click Next.
![image](https://user-images.githubusercontent.com/2159765/229044618-e8d549b5-d150-42c8-a89f-733c4d530a68.png)

Set up your schedule as desired and click Next.
![image](https://user-images.githubusercontent.com/2159765/229044849-da493230-3f53-4b7c-b33f-2a0c867faa3a.png)
![image](https://user-images.githubusercontent.com/2159765/229045010-0ea1fe2a-6347-414c-a735-bdc00f1706a2.png)
![image](https://user-images.githubusercontent.com/2159765/229045351-1492a8e6-02f0-471b-8888-8615d66af6b2.png)

Choose "Start a program" as the Action and click Next.
![image](https://user-images.githubusercontent.com/2159765/229045431-51cfec90-a439-4a47-ac57-51e5b39609e8.png)

1. Type in `powershell` in the "Program/script" box.
2. Enter the path to the `nvidia-cleanup.ps1` script in the Add arguments (optional) box.
3. Click Next.

![image](https://user-images.githubusercontent.com/2159765/229045882-290f9993-e609-49d6-8c2c-c872c6a344bf.png)

**Check** the "Open the Properties dialog..." checkbox and click "Finish".
![image](https://user-images.githubusercontent.com/2159765/229046531-2b0b6040-d4df-4770-9832-7ba9bc5db3d3.png)

In the Properties dialog, **Check** "Run with highest privileges", then go to the "Settings" tab:
![image](https://user-images.githubusercontent.com/2159765/229047406-302a2aa7-5b68-41c2-a66c-459c222f0a65.png)

In the Settings tab, **Check** "Run task as soon as possible after a scheduled start is missed" and  click OK
![image](https://user-images.githubusercontent.com/2159765/229048016-61f7e658-1655-48ef-9208-50f61b7eba0a.png)

The script should now run when scheduled:
![image](https://user-images.githubusercontent.com/2159765/229048749-87f5521e-256a-4331-9783-7a3c098939bc.png)
