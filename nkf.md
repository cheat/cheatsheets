# To check the file's charactor code:
nkf -g <file>

# To convert charactor code to UTF-8:
nkf -w --overwrite <file>

# To convert charactor code to EUC-JP:
nkf -e --overwrite <file>

# To convert charactor code to Shift-JIS:
nkf -s --overwrite <file>

# To convert charactor code to ISO-2022-JP:
nkf -j --overwrite <file>

# To convert newline to LF:
nkf -Lu --overwrite <file>

# To convert newline to CRLF:
nkf -Lw --overwrite <file>

# To convert newline to CR:
nkf -Lm --overwrite <file>

# To MIME encode:
echo テスト | nkf -WwMQ

# To MIME decode:
echo "=E3=83=86=E3=82=B9=E3=83=88" | nkf -WwmQ
