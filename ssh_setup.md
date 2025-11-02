## 🧰 GitHub SSH Setup Guide (One-Time Setup for All Repos)

### 1️⃣ Check for existing SSH keys
```bash
ls -al ~/.ssh
```
If you see `id_ed25519` or `id_rsa`, you already have a key.  
If not, generate one (next step).

---

### 2️⃣ Generate a new SSH key (if needed)
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
When prompted for a file path, press **Enter**.  
You can leave the passphrase empty or add one for extra security.

---

### 3️⃣ Start the SSH agent
```bash
eval "$(ssh-agent -s)"
```

---

### 4️⃣ Add your SSH key to the agent
```bash
ssh-add ~/.ssh/id_ed25519
```

---

### 5️⃣ Copy your SSH public key
```bash
cat ~/.ssh/id_ed25519.pub
```
Copy the output.

---

### 6️⃣ Add key to GitHub
- Go to **GitHub → Settings → SSH and GPG keys → New SSH key**
- Paste the copied key.
- Save.

---

### 7️⃣ Verify SSH connection
```bash
ssh -T git@github.com
```
You should see:
```
Hi <username>! You've successfully authenticated.
```

---

## 🧩 For Your Repository

### Set remote to SSH
If your repo is using HTTPS, switch it:
```bash
git remote set-url origin git@github.com:<username>/<repo>.git
```

Check:
```bash
git remote -v
```

---

## ⚙️ Handling Push Error (first-time only)
If you see:
```
Updates were rejected because the remote contains work that you do not have locally
```
Run:
```bash
git pull --rebase origin main
git push
```
If you’re sure your local repo should overwrite the remote:
```bash
git push -f origin main
```

---

## 💡 Important: One-Time vs Per-Repo Setup

- ✅ SSH key setup (Steps 1–6) → **only once per computer**
- 🔁 Per repo → just ensure your remote uses the SSH format:
  ```
  git@github.com:<username>/<repo>.git
  ```
  Then everything works automatically — no passwords, no tokens, ever.

To clone new repos directly with SSH:
```bash
git clone git@github.com:<username>/<repo>.git
```