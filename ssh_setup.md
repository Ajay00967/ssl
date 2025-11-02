# GitHub SSH Setup Guide:

## Purpose
This guide will help you set up SSH authentication so you can push/pull to our private GitHub repository without errors.

---

## Step 1: Check if you already have an SSH key
Open your terminal and run:
```
ls ~/.ssh
```

If you see a file named `id_ed25519.pub` or `id_rsa.pub`, you already have a key.
If not, generate a new one (Step 2).

---

## Step 2: Generate a new SSH key
Run this command (replace your email address):
```
ssh-keygen -t ed25519 -C "your_github_email@example.com"
```
Press Enter three times to accept the defaults.

---

## Step 3: Add your SSH key to GitHub
Show your public key:
```
cat ~/.ssh/id_ed25519.pub
```
Copy the entire output (starts with `ssh-ed25519 ...`).

Then:
1. Go to **GitHub → Profile → Settings → SSH and GPG keys**
2. Click **New SSH key**
3. Paste your key and give it a name (e.g., "Laptop" or "PC")
4. Save

---

## Step 4: Test your SSH connection
Run:
```
ssh -T git@github.com
```
You should see:
```
Hi <username>! You've successfully authenticated, but GitHub does not provide shell access.
```

If you see that, SSH is working perfectly.

---

## Step 5: Clone the repository (SSH version)
Use this format (ask Ajay for the exact repo name):
```
git clone git@github.com:AjayGautam/your-repo-name.git
```
Then navigate into the project:
```
cd your-repo-name
```

---

## Step 6: Verify you're using SSH
Run:
```
git remote -v
```
You should see something like:
```
origin  git@github.com:AjayGautam/your-repo-name.git (fetch)
origin  git@github.com:AjayGautam/your-repo-name.git (push)
```

If you instead see an HTTPS URL, switch it to SSH:
```
git remote set-url origin git@github.com:AjayGautam/your-repo-name.git
```

---

## Step 7: You're done!
Now you can use Git commands normally:
```
git pull
git add .
git commit -m "Your message"
git push
```

No passwords or tokens needed anymore.