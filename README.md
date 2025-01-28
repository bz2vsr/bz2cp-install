# Installing Battlezone II: Forgotten Enemies

This guide will walk you through installing Battlezone II: Forgotten Enemies on Windows 11, starting with a stock CD-based install. 

All dependencies are downloaded from [bzscrap.org](https://www.bzscrap.org/downloads/) and included in this repo for convenience.

<img width="699" alt="fe-home" src="https://github.com/user-attachments/assets/fbc1f47e-fd03-4f7e-953d-9345a4d6f2d5" />

## Prerequisites

You will need an original Battlezone II: Combat Commander CD-ROM. 

This guide assumes you have run the original installer and now have an **untouched** `C:\Program Files (x86)\Battlezone II` directory. 

I will refer to this directory as your Battlezone root folder.

## Instructions

NOTE: I suggest making copies of your root folder at certain points, in case you ever need to start over.

1. Install Battlezone 2 from CD

2. Make a backup copy of your Battlezone root folder and name it "Battlezone II Stock" 

3. Install the 1.2 patch using `1.2_Patch\BattlezoneIIupdateUS.exe`

4. Run the NO-CD tool, which will remove the need to have CD inserted when running Battlezone.

	a. Copy the contents of `CD-Dependency-Removal\` to your `C:\Program Files (x86)\Battlezone II` folder.

	b. Run cg_bz2uncf.exe as Admin

4. Make a backup copy of your Battlezone folder and name it "Battlezone II 1.2 NO-CD" 

5. Install Forgotten Enemies: 

	a. Run Installer: `FE_Mod\bz2cp_full.exe`

	b. Ensure you select your Battlezone root folder as target destination.

	c. After installation, in your root BZ folder, change the name of "bzone.cfg" to "bzone.cfg.bkp"

	d. Change the name of "FEbzone.cfg" to "bzone.cfg"

	e. Right-click your `bzone.exe` -> Properties ->  **Enable compatibility mode for Windows XP SP3**

6. Launching bzone.exe should now start Forgotten Enemies

## Troubleshooting

If you encounter in-game mouse issues such as mouse input freezes, you are likely using a mouse with a DPI setting that is too high. I suggest lowering your DPI to 250 or lower, or use a regular/older USB mouse.

