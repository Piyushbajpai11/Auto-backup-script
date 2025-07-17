# 🗂️ Automated Backup Script

This Bash script compresses a specified folder, names the backup file using a timestamp, stores it in a `backups/` folder, logs the action, and pushes the backup to a private GitHub repository.

---

## 🔧 Features

- 📦 Compresses any directory using `tar` and `gzip`
- ⏰ Timestamps each backup
- 📁 Stores backups in a dedicated `backups/` folder
- 📝 Logs all backups in `backup.log`
- ☁️ Pushes backups automatically to GitHub using Git

---

## 📂 Project Structure

```bash
backup-script/
├── backup.sh # Main automation script
├── backup.log # Logs of each backup
├── backups/ # Compressed backups go here
└── README.md # Project documentation
```

## 🚀 How to Use

```bash
./backup.sh /absolute/path/to/folder
```

## 🗓️ Future Plans

- ⏰ Add automatic daily/weekly backups using cron
- 📥 Restore backups from archive
- 📧 Email notification on successful/failed backups

## 💻 Requirements

- Bash (Linux or WSL)
- Git (connected to a private GitHub repo)
- Internet connection for pushing to GitHub

## 📜 License

This script is open for learning and educational use.
