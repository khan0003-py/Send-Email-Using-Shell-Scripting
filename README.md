**Step 0: Generate Google Account App Password:**
1. Navigate to your Google Account.
2. Select "Security."
3. Under "Signing in to Google," opt for 2-Step Verification.
4. At the bottom of the page, choose "App passwords."
5. Provide a memorable name and click "Generate."

**Step 1: Install `ssmtp`**
1. `sudo apt-get update`
2. `sudo apt-get install ssmtp`

**Step 2: Create the Script:**
Create a file **`yourFileName.sh`** and open it in a text editor:
```bash
nano yourFileName.sh
```
Copy the code from the provided `send_email.sh` file into the newly created **`yourFileName.sh`** file.

**Step 3: Make the Script Executable**
```bash
chmod +x send_email.sh
```

**Step 4: Run the Script**
```bash
./send_email.sh
```
