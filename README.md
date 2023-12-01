# Innovative-Resource-Tracking

### Capstone Project

## Download the following

[Xampp](https://www.apachefriends.org/)

[Database](https://github.com/MoisesVeloso/Innovative-Resource-Tracking/tree/main/Database)

[Innovative Resource Tracking](https://github.com/MoisesVeloso/Innovative-Resource-Tracking/archive/refs/heads/main.zip)

## How to install

### Xampp

1. Run the downloaded XAMPP installer.
2. Choose the components you want to install (Apache, MySQL, PHP, etc.).
3. Select the installation directory (usually C:\xampp).
4. Complete the installation process by following the on-screen instructions.


>[!NOTE]  
>AFTER INSTALLING XAMPP, NAVIGATE TO THE **'htdocs'** FOLDER WITHIN XAMPP LOCATED AT **C:\xampp** AND DELETE THE CONTENT OF 'htdocs'.

Move the **Innovative Resource Tracking** that you downloaded to 'htdocs'

### How to use?

Open ***Xampp Control Panel*** and click start **Apache and MySql**

Open any BROWSER (google chrome, microsoft edge, safari, and etc.) and type **localhost/phpmyadmin** to open the **phpMyAdmin** page to import the database that you downloaded.

Open **localhost** and navigate to the __Innovative Resource Tracking__ that you move to 'htdocs'

It will open the login page by default

These are the following Login Information

>[!NOTE]
>### Username
>
>cetuser
>
>cbauser
>
>ccjuser
>
>casuser
>
>chsuser
>
>### Password
>Default Password: ***1111***

>[!IMPORTANT]
>Look for **qrcode.php** and open using notepad or any IDE and change this line of code 
>
>**"Link: 10.0.9.253"**  <sub>double quote not included'
>
>to your IP Address for the form to be accessible to user
>
>### How to check your IP Address?
>Open terminal/CMD and type __"ipconfig"__
>>Look for **IPv4 Address** and copy the address and change the __"10.0.9.253"__ to your IP Address

>[!IMPORTANT]
>**Xampp Control Panel _Apache and MySql_ should running**
>
>**USER MUST BE CONNECTED TO THE SAME NETWORK FOR THE APPLICATION TO WORK**


## Generate Equipment's QR Code

When generating QR Code, the page will reload but the URL in browser will reflect that the QR Code is generated

Open **'htdocs'** and navigate to **'qrcodes'** folder to access the qrcode that is generated

##

>[!NOTE]
>Some QR Code Scanner doenst have the capability identify **links**

## For Student
1. Request equipment by going to **"ipaddress/Innovative-Resource-Tracking/index.php"** and click __Request__ navigation below the **LOGIN** button
2. After completing the request, you can copy the **Reference Number** that is generated, and you can check the status of your request in **Check Request** navigation
3. If your request has been __Approved__ you can proceed to your respective department to scan the QR Code of the equipment and use your **Reference Number** to enter your Information that you provided in __Request Form__

## For User of the System
1. Just go to **"Localhost"** in any browser and enter the credentials base on your department