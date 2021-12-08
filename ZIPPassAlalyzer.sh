#!/bin/bash
echo "@=============================@"
echo "@								@"
echo "@		ZIP PASS ANALYZER		@"
echo "@								@"
echo "@=============================@"
echo "1.Sıkıştırılmış şifreli dosyaların şifresini bul"
read Deneme
if [ "$Deneme" = 1 ]; then
	echo -n "Dizin yolunu giriniz: "
	read Dir_Adress
	echo -n "Hash'in depolanacağı dosya adını belirleyiniz: "
	read File_Name
	echo "Sıkıştırılmış dosya hashleniyor"
	echo "${Dir_Adress} ${File_Name}"
	zip2john ${Dir_Adress} > ${File_Name}
	echo "Hash oluşturuldu."
	echo -n "Hash çözümlensin mi?(e/h): "
	read Value
	if [ "$Value" = e ]; then
		john --format=zip $File_Name
		echo "Hash çözümleme tamamlandı."
	else
		echo "Hashlenen dosya dizin yolu: $Dir_Adress/$File_Name"
	fi
	pwd
elif [ "$Deneme" = 2 ]; then
	echo "Deneme 2 çalıştı"
	id
	who
fi
