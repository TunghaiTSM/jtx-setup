# jtx-setup

## Note: 本教學使用東海的vacs虛擬機操作

## 1. 更新repo並安裝git：
打開Ubuntu的虛擬機後，執行下列指令：
```bash
sudo apt update && sudo apt install -y git
```

## 2. 將本repo clone至虛擬機上：
```bash
git clone https://github.com/TunghaiTSM/jtx-setup
```

## 3. 執行腳本:
```bash
cd jtx-setup
make USERNAME={你的github使用者名稱} TOKEN={你的github token}
```
- 取代時記得連同大括號一起拿掉。
- USERNAME是你的使用者名稱，並不是Email
- TOKEN申請的部份請參考: https://shengyu7697.github.io/github-personal-access-token/
- TOKEN要自己收好，不然就只能再申請一個了。

## 4. 登入github並授權phpstorm
上一步結束後會打開phpstorm，所以我們要登入帳號，並授權這個安裝。

## 5. 開啟開發用Web Server
```bash
php artisan serve
npm run dev
```
