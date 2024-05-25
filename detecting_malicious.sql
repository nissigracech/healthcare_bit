# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             detecting_malicious
# Server version:       5.0.18-nt
# Server OS:            Win32
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.1 RC1 Revision: 1064
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1;*/
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'detecting_malicious'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "detecting_malicious" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "detecting_malicious";


#
# Table structure for table 'agent'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "agent" (
  "id" int(11) NOT NULL auto_increment,
  "username" text,
  "password" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'agent'
#

/*!40000 ALTER TABLE "agent" DISABLE KEYS;*/
LOCK TABLES "agent" WRITE;
REPLACE INTO "agent" ("id", "username", "password") VALUES
	(1,'OSN','OSN');
UNLOCK TABLES;
/*!40000 ALTER TABLE "agent" ENABLE KEYS;*/


#
# Table structure for table 'behavior'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "behavior" (
  "id" int(11) NOT NULL auto_increment,
  "username" text,
  "type" text,
  "words" text,
  "total" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'behavior'
#

/*!40000 ALTER TABLE "behavior" DISABLE KEYS;*/
LOCK TABLES "behavior" WRITE;
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(1,'Roshan','sexy','[booms]','1');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(2,'Niranjan','brutality','[kill, bomb, kidnap]','3');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(3,'Niranjan','sexy','[fuck]','1');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(4,'Kishore','sexy','[booms]','1');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(5,'Kishore','detestation','[hate, hate]','2');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(6,'Roshan','detestation','[hate]','1');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(7,'Manjunath','sexy','[booms, fuck]','2');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(8,'Manjunath','brutality','[kill]','1');
UNLOCK TABLES;
/*!40000 ALTER TABLE "behavior" ENABLE KEYS;*/


#
# Table structure for table 'comments'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "comments" (
  "id" int(11) NOT NULL auto_increment,
  "sender" text,
  "title" text,
  "commented_user" text,
  "comment" text,
  "dt" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'comments'
#

/*!40000 ALTER TABLE "comments" DISABLE KEYS;*/
LOCK TABLES "comments" WRITE;
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(1,'Niranjan','Kabir_Singh','Roshan','Nothing is there in this film.Only Booms.','25/07/2019   18:40:36');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(2,'Kishore','2019_WC_Cricket','Niranjan','I will Kill you if u post like this post...','26/07/2019   16:20:46');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(3,'Roshan','Samsung_S7','Niranjan','Samsung Company will  Fuck you without warranty.','26/07/2019   16:26:41');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(4,'Kishore','2019_WC_Cricket','Niranjan','Pakistan might have put Bomb on this tournament.','26/07/2019   16:33:14');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(5,'Niranjan','Kabir_Singh','Kishore','I Hate this film..Nothing is there.Only Booms.','26/07/2019   16:39:40');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(6,'Niranjan','Kabir_Singh','Kishore','I Hate this film.','26/07/2019   16:40:17');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(7,'Niranjan','Kabir_Singh','Roshan','I hate this film.','26/07/2019   16:43:20');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(8,'Manjunath','Rolls_Royce','Niranjan','I will Kidnap this car since i cant purchase.','26/07/2019   17:26:34');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(9,'Niranjan','Kabir_Singh','Manjunath','Nothing is there.Only Big Booms.','26/07/2019   17:27:39');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(10,'Roshan','Samsung_S7','Manjunath','This is not good mobile..I will Kill you if u post this mobile','26/07/2019   17:28:22');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(11,'Kishore','2019_WC_Cricket','Manjunath','England Team fuck us in semi final','26/07/2019   17:28:48');
UNLOCK TABLES;
/*!40000 ALTER TABLE "comments" ENABLE KEYS;*/


#
# Table structure for table 'friends'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "friends" (
  "id" int(11) NOT NULL auto_increment,
  "rfrom" text,
  "rto" text,
  "status" text,
  "dt" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'friends'
#

/*!40000 ALTER TABLE "friends" DISABLE KEYS;*/
LOCK TABLES "friends" WRITE;
REPLACE INTO "friends" ("id", "rfrom", "rto", "status", "dt") VALUES
	(1,'Roshan','Niranjan','Accepted','25/07/2019   18:38:50');
REPLACE INTO "friends" ("id", "rfrom", "rto", "status", "dt") VALUES
	(2,'Kishore','Niranjan','Accepted','26/07/2019   15:56:56');
REPLACE INTO "friends" ("id", "rfrom", "rto", "status", "dt") VALUES
	(3,'Manjunath','Niranjan','Accepted','26/07/2019   17:21:39');
REPLACE INTO "friends" ("id", "rfrom", "rto", "status", "dt") VALUES
	(4,'Manjunath','Roshan','Accepted','26/07/2019   17:21:53');
REPLACE INTO "friends" ("id", "rfrom", "rto", "status", "dt") VALUES
	(5,'Manjunath','Kishore','Accepted','26/07/2019   17:22:03');
UNLOCK TABLES;
/*!40000 ALTER TABLE "friends" ENABLE KEYS;*/


#
# Table structure for table 'login_history'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "login_history" (
  "id" int(11) NOT NULL auto_increment,
  "username" text,
  "login_dt" text,
  "logout_dt" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'login_history'
#

# (No data found.)



#
# Table structure for table 'negative'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "negative" (
  "id" int(11) NOT NULL auto_increment,
  "type" text,
  "word" text,
  "dt" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'negative'
#

/*!40000 ALTER TABLE "negative" DISABLE KEYS;*/
LOCK TABLES "negative" WRITE;
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(1,'sexy','Booms','25/07/2019   18:25:33');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(2,'brutality','Kill','26/07/2019   16:07:18');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(3,'brutality','Bomb','26/07/2019   16:07:27');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(4,'sexy','Fuck','26/07/2019   16:07:40');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(5,'detestation','Hate','26/07/2019   16:08:11');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(6,'detestation','Shameful ','26/07/2019   16:08:49');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(7,'brutality','Kidnap','26/07/2019   17:26:09');
UNLOCK TABLES;
/*!40000 ALTER TABLE "negative" ENABLE KEYS;*/


#
# Table structure for table 'posts'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "posts" (
  "id" int(11) NOT NULL auto_increment,
  "sender" text,
  "img_title" text,
  "image" blob,
  "description" text,
  "message" text,
  "dt" text,
  "cmt" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'posts'
#

# (No data found.)



#
# Table structure for table 'query'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "query" (
  "id" int(11) NOT NULL auto_increment,
  "sender" text,
  "msg" text,
  "dt1" text,
  "reply" text,
  "dt2" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'query'
#

# (No data found.)



#
# Table structure for table 'user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "user" (
  "id" int(11) NOT NULL auto_increment,
  "type" text,
  "username" text,
  "password" text,
  "email" text,
  "mobile" text,
  "dob" text,
  "gender" text,
  "address" text,
  "pincode" text,
  "status" text,
  "image" blob,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'user'
#

/*!40000 ALTER TABLE "user" DISABLE KEYS;*/
LOCK TABLES "user" WRITE;
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(1,'Music','Niranjan','Niranjan','Niranjan.123@gmail.com','9535866270','05/06/1987','MALE','#7827,4th Cross,Rajajiangar,Bangalore','560021','Authorized','���� JFIF  ` `  �� C 		



	�� C��  � �" ��           	
�� �   } !1AQa"q2���#B��R��$3br�	
%&''()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&''()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? ����( �O1�)
X��J}r�[�~&>�X��ӧ��ǀ�2�Y�ۜn�**O�V��˧i(��v1~6��~�l]Ԕ^ȅ�����̼vPF??�|��s�
��O�$>��ÖdW�	��z�F� O�^�������/���%��T��Wc4r��n%��q� ��sZ_Hv�>���;9��ei8R~�=����~��pV��U{Iw{|�_��3�˫x�R�f����C�Z]\4�}d/�\���n<d�-��?�J�`��� �{� H-��|E|�S�rwl��9r�J)%�z]ώBU� �?�Y��,�)�f�y���Ъ@o�~��O���3���k��9�������K��0yU����5�j�>l��) �8#�W��?U�7s���uO4�B1''?ު�"O������cǩ)>aG^��=����A�+� 4���8Mo��Ww�[7˥�r���/�9ܣ�X`f�N��d��G�
�o5�d����<�z���kҒ�)������`�V��h������K�k�?�kU��ߌ!��''���R\�4�M������0�y5�s����_�d����G"�I u�	Xo���3Ӿk�T� �]�������<�K���bKVӵxղR���2�A��D�v/''����x��=K��qWO���?%���寅V�������O�������B�(��(�����C���jJ�����)�ғW���V?��_� �z~�ھ��%��>!K.����&��qm �
���.�^��?����N����o���\Z���hX�����c<W��c����w7��>����0���o��ea�F�ە9����� �Xk7��˦;��Z�-s�~T�O�T ��� �2�=LuXQW�3� ������ٍh`�O�.U� M����Z���ͧB�� �!./Ō��l�F}�5_V�g�#��K������%�7��[5��R� �=~���X����%� �6�y�}�1YO�׍����o�W���7���2���B�7ѶsӷW���ӓ�Izk��x�[''�]^�<��v>w�<C�ӧ�ְُ�<�0�ɡ�=?�_7� ^a� 	7��SI�Ԩ�׆�{r�ҙ��W�˷���<����֑ርS��D��v���<Os)��H�|ğ��Tu_�Z���4��4���� "���\�����D|@Q^���''���Th�,鳽t�� �I~Ѿ,(��U��^|���k0������AN�o�9���Z$�?[���Q�����/b�I�}7�Y3��K��%�	d~�>�{�O�#��O�?�M�����+�:d�������k�����~����rɢZ�
�$a��UU��ӊ���(cgQ�5m��Er�����A�9�`�֯�/�h�>�N�Om�ڡo�$S�W��g���''���6�OZ������xg�
_m��J��|/�i̛�&t1\��,1��?C��)���z��q"��
���� q����`����Tp�f�֤��S?!
(��Q@T�oƗ��ܲ�D�c8���X���w���0�|¹��:��&� l5>zЃ���O�,�$���YX�$�df�brO�[zz�m��x��}��ҦW#�W�
ݰ� `z��X:�����S��T,�R:==P���q����[�w���8���뗲��A�kk� #�ƾ���>c���Izf�#�e�fjwB7�$T�L��j��ؓ98��F..:tp��b���N�@���a�k
����A���`֭���k��� ''���|�>���>���?�7���_��ȱ�啽��9q5�2��(�ڿ�u���H0(S�|�ך�}� ���w����K�o[Dw2,��1��U���@����H�u=^������?�v�Ú5**���ʲ��ثqxy�A�k���7��_�+��ď.���s� Ү��"�0��މw-���ō�k�ญ��>�`�ҿA�׏�Lo5��Im�)���0\�SM4�{F�?����d�G,];wO���lBXZ��VD������� 8����$��)���?,H(��c
(��
���f���5h#�-��G�
H�1[T˄DT�Cpk*��Jr���k��ҍGN�j.�?���N��� � �� �[Vs� ���2_	��P��R�o3>FbT�X��[K��q�z�m��B��=��Z?���t�V�jCf���U���-�r���ֹ�k�($�èmZ��c-��+ant��1�j����?�eK#�񨥿8ϯ�kS�c�n��$�5��]@@ʻ�[�拻ܩ���M��;�`pC��j�18��z�l3G�_�P����� ���9��
g��>�?Lk�KUf���6Ƶ�Aϛqe��	��}����~���м������ym"qs)�H�${j�}SR��$s������������XW�a���>��_�ԩjkE�8xS���g��W�v?�9����ou�X��~�������_q��_ WJ�U�S�|�γx�Q���de�4vљh�i�?C�|)� ��/<}�Ax;�:]����qCki>e��*C/�M*ȣ��_�_�L��&����|��ْ[�#O7Z��ȸ�.dk���pg�@��y�~���w;V�E����N!B.�^��=�w��+���(��(��&02q��ө''�Nh`x_�u��Q-�Ik�m�ɼ*1��>�����杮$Ȥ��s�GP}=�k��OM�R����4���2H�2�9�<���~�৉G�$���X��e\q� ,���px�~G�<7(�y�i/�.�k�>����FT�_Y�5�z���5U�  �5j=P0��^���NI`@��}}�Z�x�1����cVkC�]3��{�������sK�$�$��.|F�<�g֛�6J�t:� 䁏z����X�dZ���L���}k��|X�b@''����T�;\�x�> �"�6N}k���_�	
�����F�@�hHn5���[��%��.��?g�C���Ņ��''G��H���@�,3�dw���%9�44����W� ��|����� �7�c?nO�+���6k1��6�)|�O�Ԯ�5}V�6	���3�18�S����m�.Xs�@03���\?���?xk�^�C��''�v�k�h��c̷S���V�)e��ٻ����+�*���F��%S���V���(���<(�� (�� ('' �J++������N���{`�Ox�M�ԫʼݏ��|��E|Y�}5no#���q��KV�w����cnrp#���M^V2�c���YRx5ef����R�V����|V�"��Y^/{h��|6&xz��Ot|A�ۈ�� Ae�4��"~��A�qЃ����d�ʰte8+''���`׬���\�7�	n5_�����\�?���F	9w����]�&9?vI%Z3�~/�^�F��/���dE���V��f=V6l$��85�~q�X�����O�Sm�*�z�ٳ�ܯ�0���P�f�oɻ''���X�b����L���(�.I��"?�zU�4�&C��($�t��Z���^����k�DUߖM��''�k��S�+����>��"3W�<Л�NM���rzV������d3���	 ��q�_�?~��i5��VL����^V�D��x�5����+煴[g�𖙩kҰ&9獭 ����P+���\�\�^
r_��,��h��~ɞNgĹF^���E>��?�7g�W������3Ap��%Cc�L��g��[�?ൟ �1���?[֬�-{�cL��6Q7L�:#q�Ԑ5�����������MWX�N�䓋<�0��0q�8''�ǵx��e�8�G���z�@�ο�8��[-o�b=�/��N�<�wg�E''՟�qo���>
����o_�uio[�$\��U��4;]KJ��Դ�؄�\�N�E:�����9�(�.� #9�k����?�`� Z�����׃^m����6��#q������$I~�~����� �������E�TҮq�.9�d��a���<�ɿ|����Ėݔ�F�;��.��b�φK���E69D����}x�i��I��QE�(�� *�Μ%�c�{b��ר�y�$��s�ݨF�����ڷJ��
B�H�&��Fҫ��a�X�3�]�� ��sXx�Gҵ�''R��h�Q0?�C�#���]uĊEf�]�F������U	�R��]V��Mj|k�y~ȟ?goًƾ:��l����t���k�&�q� "��#?�`q�����F�&�l����d�>�3� /,};�k�G���<;�{�^���|E�ͩ\��dV��y�Ǐ]��#n&P�w( ��}� J���/�S&x�su%RMǙ�Z1�t��v��7�c��%�8⽕''ʢ����O"��������NIa�[�~��.�G�!P� � _�''޴�$;�t�1>���JWM4�e]���I''''���]նI�۸�y�Q� Ğ��<*f���S��H@l�$�������_�/������/�w:���d�y0��H���h��A
s�A��@9�r}*�Ѳ+fF`FG^F���''�Z䭗B�%N�T�%f������jkD�%(�4P_�O������k?�x�+�6�kZL�U�2Q�R��#�nS��=�HL�p0A=}���� �U��z��''�Xh������u�o��.{W 	��$���>�׀�_�D��U����h�-�bY���X�pG5������G�5.�宱o�[�4~��f[�w�GG��]��+�`(�M7������Ct�@!�s��󎽿/^٠	(��tV�#��Ow�2hI�ɪ�^Tcދ���?Z̞�k� �����Oz̻��g!B�blΛq�9�k:��r(PKw������\�Y� ��|Z�_��暷ko	h��R(U$��/���>���}���/���d�i߈>"w.���"�6C �Ƥ{���&�vFq_�|5���S��l���d���� ~=�V����;�,��"�\L=;�M.�sT�''�ײr&HҪO ���~�V���h���YA<��q"�8��~�VYBB�hh����%I��u��wS�~Y�u�_�����X�~ҟ�>���צ��.�w�͹� {W�q�2&{������v2�y�H�C�};`���>����{���xO���������ǋt"..R&�������Op$�� W�~+eT�J�JT��w^�K�}�]Q�p�&T�1�J韼4Tkp�O `�4W�:W��,Y���rNq��P�� �{�hٳ������ x�mW��,�^���k�� A5��F����~GU�%�YX���~���b� ?f���R�h�ԯ��vݏ��������%���Ȥ�x�~d���� ���+�o��]��>j�+�0��Ǝ\������4%@,3�[�W���q�NxvS�獼3�-:e޳i:�WC�I#�0x85�JMrd�F͘�gfN?,�?QV�=�K��:���jz�[�:�K;� �$E#Ԓ~�.�?�ۛ�K.�=	��?����f; げ�����?�^����tkxt��>$���i�,	�G0��pn�,����]� ��\�m-m�i����%h���\ͦa;퍌���''��	��IX���n''��~�\7�� ���|_��t-�Q9m��6� �*�_��� �ľ�H��_�>�3��KԬ���C?�������
��k�h?4O�4��+G#��������J$���%%�21�Wf4剧��rWok__�Ƴ��.Uwgo[�2��QY����=Y������rk�+��"����SE���ʴz�@c}ཹ��� �/~��<?��M~��� ��%����i� �q� 3��m� �/��*\O��SM�#8��-� ���o�W��m��sq�����Ҷto�!���ǌ>ie�?g���o�a��k
�ô�包���Je�$��H�=?;�:�˺�=8''�ک�J껊���n|��U�W�O� M��î�O��@2�K҅�������8��� �5|��5-7[�-��:��Ԭ{H�هZ��o��;A~�s�� �~2���B���%W�W?����+X!�{��"�%2<��q��W��#� �p�c��b�O�}ޕa!��5�l!��T�)�C_�_g����X�+��
�7�i��+�!R�ӫ�����ʆr3��x>���`���f�8b&�r�:���3�����c�0Zש%���|9�>�|!���j?�f��,���[i���a�\uP�J���{�to�^0�ݏ�t�?DҬ�#�[8���
��Sϩ5�qp�
��999�����Pk;������`�ֿ#θ�3ͧ�3
ҟ��^�Z#�p�
h�т_��~�B�ĤHF@��OG����,n#8I�IG9�+�;�� ೞ''����Jo���,V[ojpv��Eq�ƿ�_��U�o�:��+��� ���6�� ��?�G3�q���5''�5�x]]�Ńp�8���(���@���Y�^eG5�\E h�vp0�摵 �00���eKw��Mw�c P�\���� �G��u���)�A�O�*��u2�m@�o"�"�1��V�ΣvPd�޿G� �շ�Q'',G���>e�)7m
��S�H��$�Gw�����#$��0 �f\^�$���y���l`�� ��ۻ��<Є��/.�Bd*�#�<��Q��)fP���*���ɬ�n��$�}hHC��)l۹?�f]��''�֍B��=}k��#�`Iw}�FZ˹���Q�ܜ�k6���''&�%��%�e��dVPp\c�I5�F''�j���<y�n翵 ~�|�:���
��-&�h�s�|��V?�v׿�� ��$Zl���e��P�_�q@''����� 8��Ϗ�����y��!�0Fr:�� �޿�o��o�<�i�Ɵc�iZ�F����������G�7?�W�� ����_x�����wgy�/r��R��-d''1���PˌǗ�$pZc���k_�?�φ^"�K����2�*c�2��q�={��ė �2@�4 �30�H����i(�.ORk��_�''�rͷ>�� �[W��~�� ��:�z''�M��+j>�mc�lF���);!�]��T�-�?��닍�rsF�x��1Y7�����U~ĢK���9�e�^�q��L�� s��U��N3��%��$�''�˛Ϙ���nu����f�_�Ǐրsy����۫�N�N��Q��+��AT��b��+�wcӹ�� � Z�,>�?ʣ��pN�w����sڸ/���ׂ�f�
��1׭4�|B�Z�o�''-�L��y (�H�ס~ğ����oP��Ĩ��|5IL�>
YB��_P1���qg�m�f��M�"��@�?d����Ŕ:�I��y�q�#����h��oa��mcei�"�V8� �0{ ���Ě�z\�7!�q����emW^[����)c�Ős��"�� ����o�[�W1���x�?�� �g�	����_H��%f;f��\�n��`{W��� ���Ƌ4�xZ��l/2G~A�؏�������!h7�GX�;m(8��|��s�	�gzҼ"��z �H�#��/�;����y��j�������W2�m��~u�5�^� �gGm-���}ճ�����0z��6��� &�O�>�=���n��.�(�3� \�S��N�h�vH�x''�r=k�O�!O�"�w�o���40\�o��he��4O�� ���������G�þ&������+Y�:�#z����W��O��o�/�׃~ ���>��uՎ-J�-kp���YCyx�Àz��������R�^(`ZE�*P���s�VU��\:���W�[��V�#�
<g�J]/S���c�e��]��� 0~Ϛ�����U�ҡf_��3�օ���uzK��˻�MŎ==3_k?�r��l�m���FJ����� ���s�«;i�B���Zt8E�6vQ?�J�� |b?H�>[;� ;��~x�ٮ��H����?����~V�� �y>2��a���i1\7��:��/�3?��s�1���?i����� G����$�<7�}���16�������?�G���U�,��K�o���e���Q5��
w�� :�ÿ��<��$�O���h����O��^�q���6�8#s0�<W��	i�� �Ѵ�T�w���|����~Pz���+���޴k�ʞ@�:{P�~ƾ�K����Eu�����%��!��G�1	n"  Q���	���&������c",���,y$�x�8�N~Z�!� �u���0��7���޿A?f� ٝ|���<����#�_ր=��W��F �h�"Q@GAE ��');
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(2,'Music','Roshan','Roshan','Roshan.123@gmail.com','9535866270','05/06/1987','MALE','#23,4th Cross,Rajaji nagar,Bangalore','560021','Authorized','���� JFIF  ` `  �� C 	

!*$( %2%(,-/0/#484.7*./.�� C
...................................................��  h h" ��           	
�� �   } !1AQa"q2���#B��R��$3br�	
%&''()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&''()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? �''ߧ� Z�{~��j~�o�� �F�o�� �@�c��� �Q�o�� �O��������V��O;�qƥ�� (�I �!z��� �\�ߍtg��������c��%�~�W>��1�{{,��''��	G��ZH�F{ �G''�T�!����Q�on�JT{ (��tDy�^�=��� NkKE񆁬ܛKA�FL#G&=���W�j�$,O�r�:���Xgh��ed��4���� ֥Ƿ�� ֯��|Sn�4W����-gq��;�r(of>���lu�*�S���-�]�J��#Az� �Ƿ�� ֣ߧ� Z����� �Q���� �P1��������?��P�K�z3�@	���?����g��R���g ��� ��3�5��~S�oJ�����������E��/���� ��x��*��F  t�jZ�9?=s���?5d�̳>��� m�j���U[id��09��U��?[���u��Kt�n��"S�r7��z k��w��<��-��re���i���H�N8<�Զ��s�okZ̀�0k��j�?k:X�yI��Y���l��V5�<�E� �5u�ٮ,.	�%�1��`8zu#����N� #��2P��x��К���#*)��2{zS��LBQK�z(3�hϹ���;썛''�yW�_�-Ү����YA4��,�v�\��A*:��+�o����\C�G�f�A''�5͊���ӆ�e&��O��x�]���4�-��e�k��Uea�p��Oj��	���).����ct	��el�@��>I,|9���T�mg/��nT ����Z=�a��4F����h���vƼ��cՏ�ɭ?5}�3��}�ޏn��2���kxWQ�� H��C� ,�_�� ~�?�)c�����-F�dg2���q�@��S�½Fi��J��ڸ�%Ӽ?�i2��Ž�0� ��RG���U�(�kJ�Wr��K)|���V3�j���-QO\U��8EϹ��� u&�hϿ�� ת�אYZ�sq2�J]ݏ
 �''�@Iq<0��,���,�� =O=+��Iym~I��:g4�b�J�����������蔶4�:`�;���@�w湝KXi|߯� ^��K�ށ����g�u�x���6��8�z����k�||''��d�!���lzo_�g���+�i$�S�RU�O_q�^mXJ>�����d1T��%���� �������G������33�Q��E�k6ݑ��
*�]cRK[C���� *�ON� �V�o���-��-�ű/��x�w{Ȿ!�MF�Oi3:Ff��W� �u��ǰ�1�zS���ϖ��i��pz#��/-n��x��U��=�5o?�?�z�=;Y��sy`���e��q�����@r1�KѵK}R�+�y	G���#<r�إsZUUE��E7>� �� ^��QI�����?����������y�ꀶ:�m��x�?��x_�m�ӟ��%a�C���*���g>*N4d�����~oֲ�.O5�÷�lը�=Mpɶ|�y�F�����P^[���u�6�`r+��c��6�E��M�&�."Y�Z9����=��qR��1�(��S*��x�4��)�o�"��(�%.=������l���ҩ.%�2`}���=�}|�p�,)Sn�5�m�RNSn�o[Ԧ��{�Vq������+�G� �UK���B�*��=h���U9�nOvt��FG�G�^���Y/��X�%�F9V���kĞ��k��(�I�;�I,*{��~��RwG��Փ�}��� ע��>���z+�� ''��� �����kzd��#r��:�w8����ɢYP�`��� �CWJJ���R���/Z��2����Pi"���}���H�BO#T��ڼC_�6��H�h��~������sN�c����;�Td���2��Xo$��b�9��0G�N>����K�7<�i�ޱ��=i�ގBV�y�괳��=�� ,��*�O�]���kVu2�֐��A�� �*�M���Rv�1�⸾�K[X��Hp�?�����C��w� �&�����x3���\`���F���5���_���L)�����rPF:���z)�����V�h�(��ʬ0y���"���2h��9=c��7�D��ʽ t����i�I�����B?BH��M&)S��Fg�*[\� ��� ��� ����j��� �I��QʈT)� )��������(�r�?S]u��klgފ)�K%����0�N�� (�� ��');
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(3,'Music','Kishore','Kishore','Kishore.123@gmail.com','9535866270','05/06/1987','MALE','#787,4th Cross,Rajajiangar,Bangalore','560021','Authorized','���� JFIF   d d  �� Ducky     P  �� Adobe d�   �� � 		

					��  I I ���            	
         	
 s !1AQa"q�2���B#�R��3b�$r��%C4S���cs�5D''���6Tdt���&�	
��EF��V�U(�������eu��������fv��������7GWgw��������8HXhx��������)9IYiy��������*:JZjz�������� m !1AQa"q��2������#BRbr�3$4C��S%�c��s�5�D�T�	
&6E''dtU7��()��󄔤�����eu��������FVfv��������GWgw��������8HXhx��������9IYiy��������*:JZjz����������   ? �{���!��G�L�گ�ϑu]WU�/�o5=N�˺l�7��,�J��݉ff$�jsG��,0&��w=j����юi�''  ��#���''�q� �� ,W���W��fG�p2?!���o��O���m��� �!� �+���i_�O��p2?!���c[����<�Z�������-�ߑߗ0���%��ykIDDQVfv�  I8�G�#���5���?����^�w����CQ:��Ѷ�7�oi���$�b�[i]�v<A���?�����_�}w��O���oE���w��澈�d��������ms{�y{J�Йw1O�Dԡ��� ��?������� ,k������f���V��?��Li�O��8?���H�X�� ��� O/֢ߑ_��� (G���_����̏�~��X���� O/֫m��=�Dߑ?�aZ�#�]v� �>��� 2?!������ W���_���W�8���W����Hȯ�מX� �U�z���T}����� �� �����)�3)ּs����� 󏟗��W�V��N��7H��Iw�_��Z��R�ffbQY�L	�/�������������X~[�մҼ���L�M�1�(�K�>�p=JI; ��F3.�#D����e����z����|o;8��������(h��B+���N�w�3�ؼ�No�&sʾo6м����{���<��ו��"E��ִ�m���/V6���X1Vm�_��qe�ه�o�ÿ���rg���_����8�������H=[��4P�!��ݕL��S��x�e�@�p�o�ُZ��&�����f� �����#�j���� �?�@~E����ҭ��t?�C����v����d� �����2�k��~���D�����)�5�_��R��Y ҭ��4�jRI/jj���N�ٌYg���5��?&|��E��6F�����n�6���ܠޤ���g�����i��$3k�T�-���|��͹������Mƻ3F�N�R��-<�~,��j;��̚r� T�Xܸ�)ggcRH�1��|���F�7�yJ����rk�q��KʗCK� �����ݢ ��^���P����!~9��Q��/1�A��2���SOz��/:���o��7�D�J_Ȯy��C��� �|� ��� ����J��A�� qꏸ>��� �� t^�i��6̧\��s7�S���u�<}o���''��� ��Ԧ��KX��J�^B��5�u��c@�$�{�K���|e��]̌�=�1�����aߛ_�~Qִ����F��Y�[}B�[�<�$m,���3V����|�:��5f��ϋ�X��~����k��O0���Y���VN�M�4+;�[7�VF�/4��0h���dd`>ëP�''Q�dG[����0h�/�1�����ݻ�<�q�{Q�<����jZ��.�#Y<�h�V���
]��)n,HX�4�Rv�Ö q@����6o''S�&Ip���GN�''�u� �o�������9�kg��^R�Ǜm<�y�S���-.���''H�,^��eD�Ҧ�6���92q�Ds���X��#�{߸R�1f''v�''盓��Ei&��&� ���K��7~�U��� ?"��^yc��V��:�!�Q��;c�w?�2����o�N�⿘^K�������/-��%��nG�X��z��^� ⇋隍^���%t����`���tn���^��cj��wP���G��Ha2=@\8�F۝�9���(m��r>o/�5K?˻;�<�����0[�IKC�;�
�D偓�0�c\�qx`��fmDr����|��j^\�HX+��%�ỉcY��y�w�VR�Z��	|��Dd�h��� �\���秵+y�	�-��M^�E-�A�oNU|ju��dB���你�A�o����9�y�f�O���"p+��7~�U�п�D�� -ߖ6� �U�z���T}����� �� ������2�s�T���uv�-� lysP?��1\�x�D� ��O��5�����O''�_�iˬ�E��;Aq��!�Ec�j8���N�����H/���o1�]ySO򟚴=?�+H�����Z�ퟘoc�~�{�=A/���`)$��ɾ ���H����~����c�����@�^��uM_Z��L�Ȇ�ZL�)5����79m��''�Bʑ%�$��"+��w�m��ܪ� �?^�(��}�}�3@՚6�&�mK\HO(⸹�HC~ץ"݁�t�9��D��^�5CS��r����2ˆ��H�''n+�� r*�G�r�o��q���q� �#��U�?�m�����T}����� �� ����/0��@�u���]Ӽ��X�W�ޯw��@�2O;"(�����~L� �B�� �Y~q~ji�E�S�� �ߕ�^��E�.��u5j�����r���{D�t���Ny�*�a3�cԷ�3�yc>���J�{�训^;�%0ꖌ�e��
�SB 
��b��s0���d7�ߏ���"@N�y������X�x�$� �!p�\0$��E:e�8Hعxu�X�� ���?�v�z��>��c}S��5êSU��%�9iV�6{�U�ŏ»˳t�ɖ��;�_Oǹ�vƶc��󮿫��.��3z��J�a�ʽ�\�^M��_pp��2N�n; �� �9��<����� 9� 9�����]� 8��}�a}�yz=o�g�:�ߙe�K�Id�խ}(>��l�� j�;M
�� �!�Q��{b� =��?�E�-���=~g��y��''Κ����YM���䗆�"�co�J$�̷^^�� 8�� 9 �󏿟�Q���rc���y_��F����ɢ�� C�H�v��(�xdx�O��~D�|�c�m�,��in`���rI�X����)��$�e����X6�S����C����h���m�''��#��;1����^b>W�����<�.W˲3��P���G�FMZQ�d���OA������w�w�=0�����}���>Q� ��hZ_������ ��n�֧��}J}o{{�������=6h�5S�(Q^@�����ro���5�L�_.�����{�[�~3� 9#�/qg���]� ���4q�yw�3�6�u��[�b �zѨ�e[��~��� ���4~o%���d���]�|��nv�%*E��k);Q�s��!�y�|����sYmn�im.�a$3#FHx�BUԂ*HȔ���眿B��s�rO�q''�r�r�� �~i���L~d������*��MSM��x�M;F#���CH�C�/�A��hH!�Q�»_�w7�2��� >�� ���?)���y,��:T���\A�R�?���s�C/�Lo"��?��B�m���1�	C?�ZG�n��	�W�~qi��1���C������^m9��	�{Y$���G��MZ��W N������G� 9����c���?)����j�V����f�����h�����R�~�����3E2J�ȱ2G"b�ų\��M��F�1����X;����"
E� 9�� 8�� 9� 9�Oȷ�/��3kZ#�Z�������Z����)%�ڬ��G")G�N���ܼ䈭��m� >�� ��t
)�����;�O��Q��_�AJ��kr�Q���A5� ��U�o��o��7�����?��zv������$��S�z]��]�.���Ey;F� Z|p"���&����9~�v*�Uث�Wb��]��v*�U��');
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(4,'Music','Manjunath','Manjunath','tmksmanju13@gmail.com','9535866270','05/06/1987','MALE','#45,4th Cross,rajajiangar,Bangalore','560021','Authorized','�PNG

   IHDR   y   y   *$~{   cPLTE���   ������rrr������������000�����ʧ��KKK���GGG|||666���aaaRRR���jjj���%%%\\\������WWW===�,�=  !IDATh��[�v�0$P�$������W�X�$Hz�ӗ<X�dI��(��Z������mo��q]]�q�0a�N�r;�vY����=T�j��c�����E#�z4U>%m��_��*7����W�^ſO�����Gz��y��ѓ8��ťG�YL��r�rj����V�.:R�������*������r�-^�X>4�[�A�B��о�	�A�w��{s���M��_c4���	���9���Ś��n?��>�:�����)�¾�=RC�o;L�����"ܴ����њ����:�#�g��Cm���8�3m=�L툿�G��;~oη٭��wq����^��������YwY!~�5b�\;��g6�F�Q�B!^�>pG��ƕʢN^C���*����Rr�\,��m���Ū�H��V_5�7��&d\74i׆Z�τ (#�¬�]d�s� �l�n����4y�ꁵ/�$WC?�|��ؔ%�%5Pߓ��~���*xM?�G�| PoPf~��m��d_r
�`���2F�/�P�+6���#�c�W�!��Q�6O�HQ�g$��M��,mc���A�W�B:+��bK�D}��96lZ�M~SZ� �RBVZ�v�$�(��Y)��s�����h�[�����M{].T1��#9oX��rT��rH��	�D/�<�/ά�&�"c֒Fpw~�$''W�7	R�Rv03l9���L,�w~)5�0�2�������]R͖I|ƙ�M���fV���>2m�@���:M�,��Xn����W�0���q�G��(B{}l#�>��@�4kn�(աs�:�bW���r�$�Ǫ(>��":�̪''�r�bkr��T�*�{>TfEh�,ՇⰻZ8���\F�൝���''�O�0��0�)י�W�P f<���0o)�����D�Hi��3,n1lw�s��Nz��y���j�(��/t�bu�g�`ɳ�P��sCA���z,�{8�m=Î���*�|�m��W�������2���> <������$hF��G�-�cO���ǟ������	$eoc9��TwEO֞9�Wy��>}|�U�K��k���.@��:�$�?�`��cfʟ�v�A�̝�T''�����F�6�3�]aC���im� 5@��v��=[$3���R���g�Tzh=�^�n��Ol�$���Ԛ~n��<?��{
\I�sQ���1���.�,��ٍz^��g8z�<x^���Y�Rv����,�\V9��>r�f�u�����c�,6B*͢�YO0�栜?��{��<�7��X<s����c���;�g��N%����\�>�`�Wͫ�#��x��=j�� ��E��$9�E�>���8r?�[M�8}ý�mJ�K�PR7��p�6	7�N�^�@��Jy��C�Z��c�a��ԁPر�����	�>���F����S�����G �=�ք�#��׻�i�=��7���������[!�Vl�1�O?��M��w��}�(����0~����+C����q�ʼ��7�_%a��U𝲷�s��蚿�Gg��z��K6c�K���DF''H�f    IEND�B`�');
UNLOCK TABLES;
/*!40000 ALTER TABLE "user" ENABLE KEYS;*/
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
