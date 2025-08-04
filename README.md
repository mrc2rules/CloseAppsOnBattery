
# CloseAppsOnBattery

Automatically closes power-hungry apps when your laptop switches to battery power — helping extend your battery life.

## ⚙️ How It Works

When you unplug your laptop, apps like Discord or Nvidia Broadcast may continue running in the background, draining your battery. This tool sets up a Task Scheduler trigger to automatically close such apps when switching to battery mode.

## 📥 Installation Guide

1. **Download the `files.zip` from [Releases](https://github.com/mrc2rules/CloseAppsOnBattery/releases)**

2. **Extract the ZIP archive** to any folder

3. Open search, type `Task Scheduler`, and open it

4. On the right-hand panel, click **“Import Task…”**
   Then select `CloseAppsOnBattery.xml` from the folder you extracted.

   <img src="https://github.com/user-attachments/assets/61bb810c-f103-4911-ae15-24422b822844" alt="Import Task" width="800"/>

5. In the imported task, go to the **Actions** tab → Select the listed action → Click **Edit**

   <img src="https://github.com/user-attachments/assets/b80b347c-720b-4a12-8d28-c2ebbdfac1d8" alt="Actions Tab" width="500"/>

6. In the `Start in (optional)` field, **paste the file directory path where you extracted the ZIP files**

   <img src="https://github.com/user-attachments/assets/aa1e03b1-419b-4d14-ab31-5a898fb40dde" alt="Start In Directory" width="400"/>

---

## 🛑 Apps Currently Closed by Default

* Discord
* Steam
* Epic Games Launcher
* Nvidia Broadcast

> \[!NOTE]
> More apps will be added in future updates!

---

## ➕ Want to Add More Apps?

You can easily customize the script.

1. Right-click `CloseAppsOnBattery.bat` → Open with **Notepad**
2. Under the existing `taskkill` entries, add a new line in the format:

```bat
taskkill /IM NAMEOFAPP.exe /F
```

For example, to close Chrome:

```bat
taskkill /IM chrome.exe /F
```

> \[!CAUTION]
> Make sure you use the exact process name of the app (`.exe`), or it won’t work.


