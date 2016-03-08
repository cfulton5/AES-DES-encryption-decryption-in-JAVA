#! /bin/bash

echo AES demo start

echo encrypt file  UTF-8-demo.txt to UTF-8-demo.encode with AES-256

echo -n "Enter any key to continue "
read var_name



cat UTF-8-demo.txt
echo display the original file before encryption
echo -n "Enter any key to continue "
read var_name

echo encryption started!
echo java AES UTF-8-demo.txt UTF-8-demo.encode 2b7e151628aed2a6abf7158809cf4f3c2b7e151628aed2a6abf7158809cf4f3c 4 14 8 00112233445566778899aabbccddeeff ECB encrypt
echo -n "Enter any key to continue "
read var_name

java AES UTF-8-demo.txt UTF-8-demo.encode 2b7e151628aed2a6abf7158809cf4f3c2b7e151628aed2a6abf7158809cf4f3c 4 14 8 00112233445566778899aabbccddeeff ECB encrypt


echo padding after encrypted file
ls -ltr UTF-8-demo.*
echo -n "Enter any key to continue "
read var_name




cat UTF-8-demo.encode
echo file content encrypted
echo -n "Enter any key to continue "
read var_name


echo decrypt the file
echo java AES UTF-8-demo.encode UTF-8-demo.dec 2b7e151628aed2a6abf7158809cf4f3c2b7e151628aed2a6abf7158809cf4f3c 4 14 8 00112233445566778899aabbccddeeff ECB decrypt
echo -n "Enter any key to continue "
read var_name
java AES UTF-8-demo.encode UTF-8-demo.dec 2b7e151628aed2a6abf7158809cf4f3c2b7e151628aed2a6abf7158809cf4f3c 4 14 8 00112233445566778899aabbccddeeff ECB decrypt



echo display the decrypted file size
ls -ltr UTF-8-demo.*
echo -n "Enter any key to continue "
read var_name


echo display the decrypted file content
cat UTF-8-demo.dec

echo -n "DES demo "
read var_name

echo encrypt filw with DES
echo java DES UTF-8-demo.txt UTF-8-demo.encode ffeeddccbbaa9988 encrypt
echo -n "Enter any key to continue "
read var_name
java DES UTF-8-demo.txt UTF-8-demo.encode ffeeddccbbaa9988 encrypt


cat UTF-8-demo.encode
echo file content after encryption
echo -n "Enter any key to continue "
read var_name


echo decrypt filw with DES
echo java DES UTF-8-demo.encode UTF-8-demo.decode ffeeddccbbaa9988 decrypt
echo -n "Enter any key to continue "
read var_name
java DES UTF-8-demo.encode UTF-8-demo.decode ffeeddccbbaa9988 decrypt


cat UTF-8-demo.decode
echo file content after decryption
echo -n "Enter any key to continue "
read var_name





