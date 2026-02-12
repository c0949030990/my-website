@echo off
chcp 65001 >nul
echo.
echo  Valentine - Chay server de quet QR cung WiFi
echo  ============================================
echo.

where python >nul 2>nul
if %errorlevel% equ 0 (
    echo  Dang chay: python -m http.server 8000
    echo  Sau khi chay, mo trinh duyet: http://localhost:8000
    echo  De dien thoai quet duoc: vao CMD/PowerShell go ipconfig, tim "IPv4"
    echo  roi mo: http://[IP-cua-ban]:8000   VD: http://192.168.1.100:8000
    echo.
    start http://localhost:8000
    python -m http.server 8000
    goto :eof
)

where npx >nul 2>nul
if %errorlevel% equ 0 (
    echo  Dang chay: npx serve
    echo  Sau khi chay, mo link hien ra (vd http://localhost:3000)
    echo  De dien thoai quet: dung dia chi IP may + cong (vd http://192.168.1.100:3000)
    echo.
    npx serve
    goto :eof
)

echo  Chua co Python hay Node.js. Chon 1 trong 2:
echo  - Cai Python: https://www.python.org/downloads/
echo  - Cai Node.js: https://nodejs.org/
echo.
pause
