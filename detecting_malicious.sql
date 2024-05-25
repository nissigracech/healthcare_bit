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
	(1,'Music','Niranjan','Niranjan','Niranjan.123@gmail.com','9535866270','05/06/1987','MALE','#7827,4th Cross,Rajajiangar,Bangalore','560021','Authorized','ÿØÿà JFIF  ` `  ÿÛ C 		



	ÿÛ CÿÀ  ¿ •" ÿÄ           	
ÿÄ µ   } !1AQa"q2‘¡#B±ÁRÑð$3br‚	
%&''()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ        	
ÿÄ µ  w !1AQaq"2B‘¡±Á	#3RðbrÑ
$4á%ñ&''()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ   ? ýü¢Š( ¦O1„)
X“ŒJ}rÓ[ƒ~&>–XµôÓ§’ÀÇ€í2ÆYˆÛœnÎ**O–V½•Ë§i(Þ×v1~6þÔ~øl]Ô”^È…¢²·ýåÌ¼vPF??|‹ñsþ
‰âOÏ$>³‡Ã–dW	®œz’Fû Oû^¿éß øŸ¤/ˆâÔ%Ô×Tùæ–Wc4r’“n%•ºqÏ ŒsZ_Hv‚>™äŠü;9ãìei8R~Î=—Åóä~Á•pV‡½U{Iw{|—_™ëž3øË«xãRûf±©Þê—CþZ]\4Ä}d/á\½ïŒ€˜Èn<d±-ùç?‡Jó»¯`“¿ÿ ¬{ï H-ø|E|ÖS“rwlúê9rŠJ)%èz]ÏŽBU õ?ãY‡,í”)ÏfÅy†¥ãÐª@oü~¹íOÇÀä3•þökã9Ž©¥ÐôýKâ³0yU×ÐóÏ5Ïjž>lŸÞ) ô8#ùW—êž?U‰7sýêçuO4ˆB1''?ÞªŽ"O¨¾®–ˆõcÇ©)>aG^à±ö=±ô÷¯Aø+ÿ 4ø£û8Mo‡üWw¦[7Ë¥êrµõ³/÷9Ü£ÙX`f¾N¿ñdÒäGü
±o5ÙdÜœž‡<zïÂãkÒ’)¸µÙØãÅ`©V‹…h¦¼ÕÏÞØKþkà?ÚkU²ðßŒ!µð''¯•R\™4ýMÇüð™‚àŸî0ìy5÷s‰¨ëí_ÉdºÜÑÜG"¹I u‘	Xo÷¦3Ó¾kúTÿ ‚]þÔÇöÄý‰<ãK‡ûbKVÓµxÕ²RöÙÌ2·A€åD€v/''©ý£ƒx’¾=K‹ÖqWOºóó?%â¾¥å¯…V„šìü¼½O ¨¢Šû£ãBŠ( Š( £ºÎÀCÁÏèjJŠñ‘Ê)ÎÒ“W€¿ðV?Ùã_ÿ ‚z~ÙÚ¾·á¡%¯„>!K.±¦“ë&•äqm è
ÈÌÀ.×^€ò?þÕþñNšõç‡o®éì\ZÉÁÉhX¬‘ó÷˜c<WîícàþÐw7¾ñ>§ëº¸0µ½ÒoÏÞea†FÉÛ•9ÂŠüåø÷ÿ ýXk7‡ÃË¦;ÑéZä-sŽ~T¹OT âì Ï2ü=LuXQW3ÿ ƒ®ûŸ·äÙh`éOí.Uÿ M¶±óÔZ®‘âÍ§Bñ‡…õ ã!./ÅŒÇÛlÁF}5_Vøgã#ø´K»˜›¤–Ò%Â7ÐÆ[5ÎüRÿ ‚=~Ñß®X¿¿á%´ “6yî}‚1YOÐ×ê³ÇÆo‡WŽ“ü7ø« 2ñ»þ½BÜ7Ñ¶sÓ·W‰þ¬Ó“ÑIzkúÌx‚[''ý]^Õ<âëv>w‡<Cé–Ó§óÙÖ°ï<â0ÄÉ¡ë¸=?â_7ÿ ^aÿ 	7ÅÍSIñÔ¨Æ×†ý{r¿Ò™µñ§W›Ë·‡âµÑ<½ó“ùÖ‘áˆ­S—ÜDø‚vÙ„ß<Os)Ùá¿H |ÄŸ ÛTu_‡Zö’¯4›½4Óðƒÿ "íÇã\õ·ìýûD|@Q^øá¨Ç''ÍûÝTh·,é³½tžÿ ‚I~Ñ¾,(ëð—U²Ž^|Ûû»k0º³†þšêŽANÞoð9¥ÎZ$Ž?[¾´ÒQÌúž™æ/bºIÆ}7ÆY3íœÖKêâ%‘	d~Œ>í{ÅOø#ÆOƒ?üMã·„ôÝ+Ã:dº•Ìªý¦à¬k¸ª€¸Ü~µóörÉ¢Zî
$aÈÎUUËéÓŠ”îì(cgQµ5m»öEr¯µ±‘ëAô9¿`àÖ¯Ž/¨h¿>ÝNÙOm¯Ú¡oº$SÛW°Ýg¯ñÛ''ñ¢âè6àOZû·þ±ñûxgþ
_m¦‰J§‰|/¨iÌ›°&t1\ƒø,1ïžØ?CÂÑÌ)¾îßz±áq"ö¸
‘¶Êÿ qý¤›‰`ö÷÷§Tp°fåÖ¤¯ÚS?!
(¢˜Q@T×oÆ—£ÜÜ²îDÒc8Îš·X£øw¬²œ0µ|Â¹±•:šÝ&ÿ l5>zÐƒêÒüO,¯$º¸–YXÉ$ÎdfõbrOë[zz³mÚÛxôÎ}«Ò¦W#øWù
Ý°¹ `z×àX:œÞôž¯SöœT,¹R:==P•Âáq–Íù[ÖwÀª8¡ˆüë—²ºÚA­kkà #Æ¾·ˆå>c‡¹ÑIzf€#°eãµfjwB7Ó$TÚLõüjÕØ“98®üF..:tp¼¯b–£ÎNù@Ïüôaýk
ýú‚ÌAíÁþ`Ö­üÀÎkðŒ³ ''üý|¦>ª“»>èù?þ7â§ð—ü_â¤ÑÈ±µå•½‚¯9q5ä2ŽÙ(íÚ¿ u´²ŽH0(SÏ|ç×šý}ÿ ƒ¼w‘ûéœKâo[Dw2,¼ì1Ž™Uü«ò@ð¶±ã†‹HÓu=^ä‚ï•¤“?¼vŽÃšÂ…5**ýÛüÊ²å¨íØ«qxyÏAýkëïø7ÝÞ_ø+×ÂÄ.«°îs€ Ò®Çó"¾0ñ¥Þ‰w-õµÅìk¹à¸¢’>ø`ÀÒ¿Aà×ÁLo5¦†Imü)áû¡0\¬SM4ñ‚{F¸?ðëÇÐd¸G,];wOîÔñ³lBXZ—þVDÖøóƒÇòÿ 8©©†$Œƒ)õúÚ?,H(¢Šc
(¢€
Åøfú‡5h#É-¬G©
HŽ1[TË„DT€Cpk*ô•Jr¦þÒkïÐÒGN¤j.?¹ÜùN½ªã ¨ ç¯ÿ ­[Vs„ †‰â­2_	øÇPÓæR­o3>FbTþXüª[KýÊqzþm„¥B«¥=ã£õZ?ÄýîtãVœjCf¯÷Uµß´-ïr£“ÓÖ¹‹kÌ($æ®Ã¨mZö¨c-Ôò+ant¨á1ýj¼·ùÏ?­eK#×ñ¨¥¿8Ï¯½kSæc‘nòï$ç5¨]@@Ê»Ø[üæ‹»Ü©çúÖMåØ;`pCÁÏjò18›îz¸l3GÆ_ðPÏØ×Äÿ ·Ÿí9à
g¹Ð>ø?LkýKUfßÝÏ6ÆµAÏ›qeÉà	Àê}—á×Á~Íþ·Ð¼£ÛèÖöñym"qs)ÃHã–${jô}SRŒÌ$sŒ‚ÀñŒãŒàž•Àø³XWÁaÓëÉ>§®_¬Ô©jkEº8xS÷¥«gåüWÂv?¼9¬ÛÙÃou¬Xâé¢~ÐÁˆû¿›_qÁ¤_ WJøUñSâ|ðÎ³xQ·ÐídeÂ4vÑ™höiÀ?Cø|)ÿ  Ö/<}ûAx;Ã:]½Åþ«qCki>eÃÉ*C/ûM*È£Üí_¿_ðLïÙ&ÏöýŠ|ðÞÙ’[­#O7ZœÉÈ¸Ô.dk‹·Ïpg’@¾ˆyÅ~³Áøw;V—EùŸšñN!B.”^²‚=èw¢Š+ôáŠ( Š( ›&02q“ùÓ©''øNh`x_íuà‰Q-üIk‘m×É¼*1ò“ò¹>ÇþžÜøæ®$È¤ƒÆsÎGP}=½kìíOM‡R°–Öâ4šÞä2HŒ2®9¾<øßð~ûà§‰G”$¸ÐïXýše\qÿ ,ÜçïpxÍ~GÇ<7(ÕyŽi/‰.kú>§éÜŸFTÖ_Yê¾5Õz®…È5UÚ  þ5j=P0§ã^¦ø•NI`@ã†ä}}çZ°x…1Ãó¯ÎcVkCï]3®†{þµú˜Ž¿sKâ$ç$õ¨.|F˜<ŒgÖ›­6J¡t:¨ äzÄÕõ¤XÎdZÅÔüL­¶}k–Õ|X•b@''ƒœäÒTå;\¾xÁ> ñ"ª6N}k•†Ú_ê	
«•¶·¶Fê@ühHn5»°¾[˜%‡Ì.õë?g½Câ–ÒÅ…°’''G½ØH·ÈÆ@ã,3œdwæ»ðÔ%9ª44ÞÈâÄW„ êÖ|±Ž­Ÿÿ Á7¿c?nOø+§Œ¾6k1»ü6ø)|šO‡Ô®è5}V¶6	ûÑÃ3Ï18âSþŸÙèm„.XsÇ@03Àã°í\?ìÛû?xkö^øC¤ø''Âv‹k¤hèÙcÌ·S»šâVþ)e‘™Ù»³ƒŠï+ú*ËãƒÃF‚Ý%SñÓñ˜‰VéÓÐ(¢Šô<(¢Š (¢Š ('' ŸJ++Ä¤–ö˜‰NâØÎ{`ÐOxÞM•Ô«Ê¼ÝóÍ|ßûE|Y¾}5no#’óÃqš”KVÜwÉ¤cnrp#ÖõýM^V2³c’¸ëYRx5efŠÊÀ†R™VÉïô®|VŽ"›¥Y^/{hþó|6&xz±­Otî–|AàÛˆí’ÿ AeÔ4ó•"~ù°AqÐƒŸÀæ°‰d·Ê°te8+''ÈÀú`×¬øëö\ñ7Ã	n5_†Ššžœ\Ï?„®åF	9w±™ŽØ]&9?vI%Z3•~/Œ^ñF¾š/ŠàñdEýŸâV°¼f=V6l$þÍ85ù~qÀXÊ­„‹­O¼SmŠ*ízíÙ³ôÜ¯‹0Õí²P—fôoÉ»''ùùÆX©bû¼çëL“Äí(À.Iôæ½"?ƒzUê4–&Cí ñ($ôtÉÇZŠóá^›¤©–k¤DUß–Mƒó''†kàêSä—+‹¿õó>®ž"3Wæ<Ð›íNM©ª½rzV®‘ðòòþd3¡ØÝ	 ûúqš_ˆ?~ü±i5èVLƒˆÞí^Vã DÜÌxè5ó‡ÆÏø+ç…´[g²ð–™©kÒ°&9ç­ Îð‘æõP+êòâ\ò\¹^
r_Ì×,¬åhü¯~ÉžNgÄ¹F^¯‹ÄE>Éó?º7gÕWúîðúÐË3Apöã%CcŸLŽœg“[Ÿ?àµŸ ¼1­Úø?[Ö¬ü-{»cLŠ×6Q7LË:#qÔ5ø»ñÓöËø‹ñÁ§MWX“NÓä“‹<ù0‚0qÉ8''©Çµxœ¾eš8‚Gœä¶zý@ÂŸÄÎ¿§8èõ[-ob=ù/‚šNÚ<£wgÑE''ÕŸqo‰³¬>
—ºžòo_ûuio[¿$\ÞñU‡Š4;]KJ¹´Ô´ûØ„Ð\ÚN“E:žŒ¬¤«9­(å.À #9Îkùœý€?àª`ÿ ZÛèú„º×ƒ^m÷Þ¼“6³©#q‡ƒäËÇƒ$I~û~Ä·¯Ãÿ ÛÃá˜ñ‚õûE¶TÒ®qî“.9ŽdôôaÁ§Å<É¿|Ÿ´¢ßÄ–Ý”×Fú;´Ï.Íéb½Ï†K§ùáE69D„ŒŽ}xìiÕñIž°QEÀ(¢Š *¥Îœ%Éc{b­Ñ×¨ y´$äðsÇÝ¨F‚‰ÀçÚ·JƒÔ
BŠH‡&†»FÒ«ë•ÈaéXþ3ø]áÿ ˆšsXxƒGÒµ«''R¡h—Q0?ÂCç#Øñí]uÄŠEfÞ]íFÂðÝôÏéU	ÊRƒ³]V‚’Mj|kûy~ÈŸ?goÙ‹Æ¾:¶ðlþ‡¥ÊtÄÑõkí&½q² "¶™#?¼`q·ø½­üFñ&¯lëÄåÄd˜>£3† /,};’kõGþøÔ<;ð{Á^Šà‰|E¨Í©\ÆýdV¸ûy’Ç]†¿#n&P€w( œð}ÿ Jþ©ð—/©S&xÜsu%RMÇ™óZ1´t½ív¤ú7écóÞ%Å8â½•''Ê¢µ¶š¿O"¥ü¥œ±˜®ÂNIaè[ï~µ.ðG!Pí ÿ _Ç''Þ´ï$;Ötü1>µúJWM4¤e]ÛíÈI''''ÜúÖ]Õ¶IíŠÛ¸’yÍQž Äž•Ç<*f±¨×SêÔH@l•$€ÞÕè²çí_ã/Øëâþã/êw:¥¬¡dy0ßÄHÝËühØžA
s€Aâî­@9Îr}*œÑ²+fF`FG^FúÁö''§Zä­—B¤%N¤T£%fž©®ÏËþjkD£%(»4P_ðOÛÇÂ·ÇÀk?øx‹+ø6ÛkZL‡UÞ2Q‡RË#ànSœ=èHLp0A=}ëù‘ÿ ‚UþÝz§ì''ûXhšô·’¯„u—o‰í·.{W 	ñÎ$‰ö¸>›×€ù_éD¿ƒU²‚êÚh®-îbY£•å‘X¬pG5ü«â¼‹£Gø5.áå®±o«[ú4~“f[£wñGGçæ]¢Š+á`(¦M7’›Š³œšCtª@!†s”óŽ½¿/^Ù 	(¨á¸tVä#ÏçOwØ2hIÀÉªÓ^TcÞ‹›°€?ZÌž÷k€ –æ÷¨ÇOzÌ»º²g!B±blÎ›q–9ük:êð•r(PKwÈô¡«¦˜\üYÿ ‚ê|Zˆ_·•æš·ko	h¶šR(U$ËÏ/˜´Ã>¸•ñ}Äüô/ÚïâdŸißˆ>"w.§â¹"6C Æ¤{ü«Ì&›vFq_Ý|5ú–S†Âlã§ëdåø·ÿ ~=˜Vö¸š•;¶,³ç"ª\L=;ÒM.ÞsTî''à×²r&HÒªO ÷¤–~µVâãŽýh°îÂYA<Š©q"ã8¤’~µVYBBòhh¤û„¥%I””uÚÀwSÔ~Yúuí_ÐçüéûXÜ~ÒŸ°>•£ê×¦óÄ.Ãw®Í¹ä… {WÏqä2&{˜‰ïüêËv2ÇyŠHÏC‚};`ƒŒ’>¸ôÃþ{ø¥®xOö¹ñ‡¢²¿»ðÇ‹t"..R&Ö×öÒ„‚´Op$…À Wæ~+eTñ™J—JTššw^’KÕ}ö]QïpÞ&Tñª1ÕJéŸ¼4Tkp¬O `ã¯4Wò:WØý,Y‚”ËrNqŠþPþÿ Á{¿hÙ³ö¯øâÿ xÎmWÁž,ñ^§«kÅõ A5ìóF©ù­~GUÌ%ðYXªãú~ý¬übÿ ?fˆšüRùhžÔ¯¢“vÝ¤¬§ó¿ˆ›“%„’ªÈ¤®xéœ~dÐô‰ûÿ ÁÞ¾+Ïo¥ü]ðçˆ>jòª+ê0§öÆŽ\ðÀÉóÐ¿4%@,3ú[ðWö­øqûNxvSáç¼3ã-:eÞ³i:„WCáI#¨0x85üJMrdˆFÍ˜ƒgfN?,ã?QV¼=ãKÁÌ:ž…ªjz©[Í:îK;… ä$E#Ô’~•.ã?¸Û›’K.°=	çò?€¬¹î‰f; ã’£ñ¿“€?ð^ÏÚ×ötkxtŸ>$ñ—Ëiþ,	¯G0þéšpnû,¢¾¯ø]ÿ ƒü\Ñm-m¼iðËÀ¾%hÛÜØ\Í¦a;íŒ‹Ÿ©''ðÍ	¾ÃIXþƒ¯n''ªŸ~å\7Æÿ Ÿ‡¿|_¯–t-÷Q9m£÷6ï ç·*á_“Þÿ ƒÄ¾ÞH«â_ƒ>Ò3Á“KÔ¬ïÃýC?®òÓþÓðŸþ
‡¢k¾h?4Oˆ4«Í+G#²²´°‘¾ÎòJ$ž©¶%%ä®21ÜWf4å‰§ÎÑrWok__ÀÆ³’§.Uwgo[›2ÎáQY‹€ –=YÓõªÒÜrkë+ïø"·ÇäÜSEðÌÑÊ´zô@c}à½¹¬×ÿ ‚/~Ðð<?áóŸM~Øãÿ ¯í%ÆÙ¿ßiÿ àqÿ 3òìœmÿ …/¹Ÿ*\OÁªSM»#8¯¯-ÿ àˆ¿o‰Wµðm‘Æsq­ä¯—ŸÒ¶toø!ÄùÀÇŒ>ie¸?gšê÷oàaŒ¦k
¼Ã´ÕåŒ…¼›úJeÃ$ÇËHÒ=?;Ï:ÇËº¡=8''éÚ©ÝJê»Š”Œœn|¨þUúWáOø M¾Ã®üO¼º@2ÃKÒ…ª“éóÊçÏ8êÞÿ ‚5|ðžÉ5-7[ñ-Â©:ÆçÔ¬{HéÙ‡ZùÜo‹ü;A~êsªÿ »~2åüBã¥ñ%WþW?Úâîú+X!–{™Î"Š%2<¿î…qöûW²ü#ÿ ‚pücøÜb“Oð}Þ•a!ùï5²l!¼Tƒ)öC_±_g¿‡ßâXü+àŸ
è7ÙiÇ+½!RïÓ«³œÖýÕÊ†r3–ç’x>£ÇÔ`û×ÂfÞ8b&¹rÜ:œß3û•—âÏcÂ0Z×©%§ã¯è|9û>Á|!à³j?×fñì,¬¬‹[iÙþéa‰\uPŸJûƒö{Ótoƒ^0ðÝ‡t­?DÒ¬¯#Š[8ÄÃ¬
¨²SÏ©5ŸqpÊ
™999çüúæ³ßPk;„•‡Ãœ`ƒÖ¿#Î¸—3Í§í3
ÒŸ–Ñ^‘Z#ép˜
hòÑ‚_ŸÞ~ˆB„Ä¤HF@è¥OG»þÔÑ,n#8IàIG9á”+Ã;ÿ à³ž''“ÁßðJoú”,V[ojpvœ´EqŸÆ¿_´àU‡oþ:õý+úýÿ ƒõ6Òÿ àŽ?ÙG3øqàëŒ–5''ò5üx]]€Åƒpç8ôíý(ü—œ@¨žó½YÒ^eG5—\E hÉvp0Øæ‘µ ª00ÀõÍeKw…ÔMw¸c P«\‰ÌÁ¹ Gòþu÷÷ü)¢AâOø*þu2ïm@Ôo"±"è1–V¯Î£vPdçÞ¿Gÿ àÕ·ÁQ'',GÔÈö>eµ)7m
‹×SúH»Ô$šGw‘—ƒ–#$÷è0 Åf\^–$Þùþy¤–ãl`œÿ ‰¬Û»ž¸<Ð„´Ð/.žBd*§#å<Ï¥Q¹¿)fPÇå˜ù*›““É¬ùnö¹$ä}hHC®î³)lÛ¹?f]Þí''ŸÖB÷®=}kîð±#š`Iw}’FZË¹»äóQÜÜœžk6æäî''&€%¸»%ŽeÞÎdVPp\céI5éF''Ïj±Ë<yànç¿µ ~‡|¿:Áï
ÌÇ-&‘hÌsž|•õV?ì½v×¿³ÿ …¤$ZlëýÖeþ”PÍ_ðq@''þÙñÀó£ 8äãÏð÷äŽ¯ã¦yÎÄ!²0Fr:çÿ ¯Þ¿¼o‹–oˆ<©išÆŸcªiZŒFÚîÎòž˜ØÈèÜG­7?ðWø ÷ƒôÏ_x§à”ö¾wgy¼/rßèRœð-d''1ýÇÜPËŒÇ—¸$pZcÎØêk_Ç?µÏ†^"—K×ôÛÍ2ö*cž2»ðq•={ƒŠÄ— 2@õ4 ­30ÆH¦ùêi( .ORkô‹þ_''ürÍ·>Ôÿ Þ[Wæå~‚ÿ Á³:üz''üM‰Ø+j>ÔmcçlFø÷á);!Å]ŸÒT÷-Ž?©¬ë‹¬rsF¥xŠè1Y7¤±ÉÇãU~Ä¢K»°¹9ÍeÞ^òq×ëL¾¼ søÖUÅñN3øÒ%Õé$ç''ñ¬Ë›Ï˜ñúÓnu˜ü¿­fÜ_üÇÖ€syÉãõ¬Û«ÎNëN¸»Q¸±+ééŸAT€’b¡+ÎwcÓ¹ü¨ ÿ Zç,>¹?Ê£ÜÇpNÐw…äôëŽsÚ¸/¿´×‚¿f
Ûêž1×­4ƒ|BØZ«oµ''-áL¼®y (ÆHŒ×¡~ÄŸ²¿ÄÛoP·ñ‡Ä¨®þ|5IL¶>
YBøŸ_P1š”èqgÜm¡f‘ÈMò"‡Š@º?dÁìïáÅ”:”I“¦yäqÈ#Ž¿­ßhµð¶‘oa¦ÁmceiŠ"…V8” ª0{ °¢€Äšëz\7!ºqÐâ¾ý³emW^[–µ„²)c¸ÅsžÇ"¾ÿ ªšž‹o¬[´W1¬Šýxæ€?œÿ Úgþ	ãŠ¡’_H‚þ%f;fŒ–\ç•n«ø`{WÁßÿ à“ºÆ‹4ÓxZð¢¹l/2G~AßØÇ×úÌø—û!h7ŽGXÔ;m(8÷Í|Ïñsþ	±gzÒ¼"íäz þHþ#üñ/Â;ö¶ñ‘y¦Èj»¦èœúàŽ¼W2Ñmîú~uý5ü^ÿ ‚gGm-¼öú}Õ³üªŽŽ0z©â¾6øíÿ &ðO‹>Ó=’ønõá.›(3ÿ \òS©ÏNÝhñvHÌx''£r=këOø!O‹"ðwüoáÌó40\êoùhe³ž4OÅÙ ¸®ßâçü—ÇÞG—Ã¾&ÐõÈÏåÝ+YÊ:õ#z±÷ÈúWŠøOà¿ÄoØ/ã×ƒ~ ê¾·º>×ìuÕŽ-J—-kp“ˆ÷YCyxÎÃ€z”¤®Š‹³¹ýRÞ^(`ZEó*P‘ƒ‚sùVUå÷\:ü®ðWü[ðóV³#Ä
<g£J]/S¶ÔÔc¶eç¹í]ž•ÿ 0~ÏšºžÃâœU¸Ò¡f_û÷3Ö…°™úuzKçó¬Ë»åMÅŽ==3_k?ðrìñl¬m×Ç…FJ¦¨ñé ®Åðs‡Â«;iŸBøãýZt8E»6vQ?ßJËÿ |b?Hæ¹>[;« ;€Ä~x¬Ù®òÊH‚‚Œ¬?˜Çãï’~VÛÿ Áy>2þÐa×á¿Âi1\7’—:ž¸/š3ï•‡?÷Ís¾1²ý¬?i¸¥‡Æÿ G…ô©ð$Ó<7‹}ëýß16°Ÿ™‡± Ñ?ÚGöãøUû,ÙÜKãoèöÛe¿³’Q5ü¼
w†î :×Ã¿à³þ<øá$úOÁŸŸh³®ÅñOˆ‘^æqŸ¿®6®8#s0ã<Wð£þ	iáÿ ËÑ´TÔwåü¾|»ÉÎî~Pzôçšú+Á°»Þ´k˜Êž@Ž:{P†~Æ¾“Kø¿¼Eu©øÇâÓ%ñ³!ººGÆ1	n"  QÀÈÎ	ö¿ö&ñÝüö–†c",‘ªî,y$‚xý8í€N~Zø!ÿ íu¸µ—0€¿7ÞŸÏÞ¿A?fÿ Ù|¦ÛÉ<ŠÉŒÏ#·_Ö€=ÞÆW¹¶F çh©"Q@GAE ÿÙ');
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(2,'Music','Roshan','Roshan','Roshan.123@gmail.com','9535866270','05/06/1987','MALE','#23,4th Cross,Rajaji nagar,Bangalore','560021','Authorized','ÿØÿà JFIF  ` `  ÿÛ C 	

!*$( %2%(,-/0/#484.7*./.ÿÛ C
...................................................ÿÀ  h h" ÿÄ           	
ÿÄ µ   } !1AQa"q2‘¡#B±ÁRÑð$3br‚	
%&''()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ        	
ÿÄ µ  w !1AQaq"2B‘¡±Á	#3RðbrÑ
$4á%ñ&''()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ   ? ú''ß§ÿ ZŒ{~Ÿýj~ßoÓÿ ­FßoÓÿ ­@ÆcÛôÿ ëQoÓÿ ­OÛíúõª½åÄV–òO;¬qÆ¥™› (’I ö!zÓÿ ­\Õßtg’Ö§½¹ïÅcÜö%€~¤W>®þ1Ý{{,¶Þ''ýÑ	G¿þZHÃF{ ÆG''ŒTþ!¶³·¶QÅonƒJT{ (®ˆtDyú^±=ÚÈÿ NkKEñ†¬Ü›KAéFL#G&=•”øW…jž$,Oïr—:ì†òÖXgh¦Žed•¨4öç·éÿ Ö¥Ç·éÿ Ö¯ðçŒ|Sn«4W«¬Àƒ-gq¤¬;ùr(of>µì¾Öluý*ßSÓåó-ç]ÊJà‚#AzŠ ÓÇ·éÿ Ö£ß§ÿ ZŸ·Ûôÿ ëQ·Ûôÿ ëP1íúõ¨§íöý?úÔPÑKŸz3ï@	Çùä?µ¶šg†ÖRŸÚ×g þÝ ÈÆ3ò¡5ëÌ~SÏoJù³ö¼’ßÄÚ…ˆE†à/ÔìÏéŠ ¥ªx˜Ù*¢®F  tÆjZû9?=sš«±?5d½Ì³>Õ‰è mÝjÌçïU[id¸˜09ÙóUïø?[ñ¤šu«KtÄn"Sür7ð¯êz këáw†¬<…ï-’ñre–à®×iˆÁ‘HåN8<ŒÔ¶ú—sçokZÌ€¶0kØþjâ?k:XyI£÷Y²’þlªßV5å¾<ðEÿ ƒ5u‰Ù®,.	û%Þ1¿”`8zu#¸­¯„Nÿ #œ2Pïìx¦Ðš±ôð#*)±Æ2{zSóïLBQKŸz(3îhÏ¹¤¢€;ì›''¥yWÄ_é¾-Ò®®®£µYA4–²,…v¹\ôèA*:¦+Ôoµ»é\CÈGŸfÇA''¨5ÍŠ”£ÑÓ†Œe&™óO‡þxó]‚Þñ4è-¬îeŽk«”Ueap¤·Ojõ	üµ²).¿­´¤ct	åƒìel±@µê>I,|9¤ØÎTËmg/´änT ãñ«çZ=ºaìÜ4Fðõ‚ØhÖÙÛvÆ¼±õcÕ¹É­?5}ë3Ï´}£ÞnƒØ2‡ŽôkxWQÒä HÑ‚Cÿ ,å_™ð ~ç?ü)c¥éŠ‘õ-FÕdg2±Æøq¯@ËÏSÂ½Fi³€J‘×Ú¸í%Ó¼?¤i2²µÅ½¤0§ ² RG·²«U»(îkJŠWrØôK)|ÈíV3îjŽ–…-QO\UÚî8EÏ¹¢’Š u&ÎhÏ¿ëÿ ×ª××YZËsq2ÇJ]Ý
 É''š@Iq<0Äï,Šˆ£,ÌÀ =O=+ÎüIym~I²Œ:g4§bÎJŽ­úž¨êºüš›ýªè”¶4¬:`ä;ŽíÆ@è¼wæ¹KXi|ß¯ÿ ^²•KñŠÞ¨ù¶ßg’u–x°®Ê6çß8êz×óÚýkÌ||''ñØd!»Œ¬lzo_˜gÛ‡â+¾i$†SêRUìO_që^mXJ>òØöòÌd1T®þ%¡¡æÿ µúÑæûþµGÌ÷ýúôÃ33¬Qò·ÝEêk6Ý‘éÊ
*ì]cRK[CûÀ®ÿ *çžONÿ äV‡o‹‡Ô-¼ä-ÍÅ±/ø´xÀw{â±¾!ÝMFËOi3:Ff˜Â–áWð þu›§jÌŒ¿1zS¦ýíÏ–Ææi×öpz#Ýì/-ní¢žÖxå…ÆU‘Ã=ˆ5o?ç?ýzò=;YšÚsy`ø•Že„¶qïèØèß@r1KÑµK}RÆ+»y	GÁà©Î#<rõØ¥sZUUE¡¥E7>ÿ ¯ÿ ^Š£QI÷ýúõæ?µ³Á§éûˆŽæàyžê€¶:÷mµéŒxê?þ½x_ÇmùÓŸæÚ%aŸCïì*šŽÑg>*N4dÑÍÞêŒì~oÖ²å¹.O5‰Ã·ÞlÕ¨Ÿ=MpÉ¶|­yÊFµÄö×P^[¾Ùàu’6ô`r+ÕücãÝ6çE·‹M&Ô."YºZ9îÃÓñ=òqR†Õ1©(¦—S*ÚØxÊ4ú›)âo¤"©«(ó%.=óŒõ®×áïlìÑìµÒ©.%ñ2`}×÷ô=ú}|Ëp¤,)Snñ5ŽmŒRNSnÝo[Ô¦Õõ{ÍVq‡¸¶Óü+ÑGà …UK‚‡­Bî*´®=h»½ÎU9ÊnOvtš£FGÎGã^‡ðËY/«ßXï%àF9VïÜýkÄžá—îžk¾ø(ÒIâ;éI,*{–à~‡ò®ŠRwG¹—Õ“©}Ïëÿ ×¢‘È>ž¿ýz+°ú ''ßõÿ ë×ñÃñkzd¶î#r°êŒ:Íw8÷ýúôÉ¢YP£`ç×ÿ ×CWJJÌøÛR²¼Ò/ZÎö2’‡³Pi"ŸÍ}ãÙê°H“BO#TúƒÚ¼C_ð6¯¦Híh¦ê~ïÇáÐþ•sN—cÄÄåí;ÃTd¤þõ2ÏïXo$Èb™9‚®0GáN>õ‹åKÓ7<úiŸÞ±þÒ=içÞŽBVÔyýê´³ûÕ=‚ ,äà*òOá]‰àíkVu2ÄÖž¦AóŸ¢ÿ Ž*£M³¦ŽRvŠ1­â¸¾¹K[XŒ³Hpª?ÏôÃÅCÓÈwË þ&ôëÐž´x3À¶š\`ÇžFûÍõ5éÖé_óú×L)òžî¨ûÏrPF:þ¿ýz)Ø÷ýúôV‡hê(¢Ê¬0y¬Ûí"ÚèÊ2h¢€9=cÀö7ªDÖñÊ½ tŠâïþiŽIŽÙâ÷ŽB?BH¢ŠM&)SŒ·Fgü*[\ÿ ®¼ÿ ¾×ÿ ‰­„újÉ²ÿ ×IôÅQÊˆT)ÿ )ØèÞ°±Á‚Ò(rˆ?S]uŽ‹klgÞŠ)£K%±ªªª0 N¢Š (¢Š ÿÙ');
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(3,'Music','Kishore','Kishore','Kishore.123@gmail.com','9535866270','05/06/1987','MALE','#787,4th Cross,Rajajiangar,Bangalore','560021','Authorized','ÿØÿà JFIF   d d  ÿì Ducky     P  ÿî Adobe dÀ   ÿÛ „ 		

					ÿÀ  I I ÿÄ¢            	
         	
 s !1AQa"q2‘¡±B#ÁRÑá3bð$r‚ñ%C4S’¢²csÂ5D''“£³6TdtÃÒâ&ƒ	
„”EF¤´VÓU(òãóÄÔäôeu…•¥µÅÕåõfv†–¦¶ÆÖæö7GWgw‡—§·Ç×ç÷8HXhxˆ˜¨¸ÈØèø)9IYiy‰™©¹ÉÙéù*:JZjzŠšªºÊÚêú m !1AQa"q‘2¡±ðÁÑá#BRbrñ3$4C‚’S%¢c²ÂsÒ5âDƒT“	
&6E''dtU7ò£³Ã()Óãó„”¤´ÄÔäôeu…•¥µÅÕåõFVfv†–¦¶ÆÖæöGWgw‡—§·Ç×ç÷8HXhxˆ˜¨¸ÈØèø9IYiy‰™©¹ÉÙéù*:JZjzŠšªºÊÚêúÿÚ   ? ú{ùùù!ªþGþLêÚ¯äÏ‘u]WUò/—o5=NóËºl÷7é¶ï,ÓJöåÝ‰ff$’jsG£Ã,0&¾Ðw=jö®²ÌÑŽi€''  ”¨#°Ýê''þqÿ òÿ ,WåçþWý“fGäp2?!úœåoú¾OôòýmùÇÿ È!ÿ ”+òòŸøi_öOäp2?!ú—ùc[þ¯“ý<¿Zœ¿ŸóÐÃ-Äß‘ß—0ÛÀ%ÄòykIDDQVfv·  I8þGó#ò©–5¿êù?ÓËõ¼^ówüû¿ËCQ:Ä‘Ñ¶•7¡oi£é³$ƒb¢[i]èv<A¡Øï¶?‘Áþ§_å}wú¾OôòýoEü¾òwüâæ¾ˆþdü¶ü¸ü¨ó¦‰Íms{¦y{J—Ð™w1O¶DÔ¡£¨¨ Ž?‘ÁüÈü‚ÿ ,k¿Õò§—ëf§òòVŸ‘?—øLiöO‡ò8?™ýHþXÖÿ «äÿ O/Ö¢ß‘_ƒÿ (Gå×þ_ý“ãùÌÈ~¥þX×«äÿ O/Ö«mùù=ÂDß‘?—aZµ#Ë]vÿ Ë>¡Óÿ 2?!ú“ü±­ÿ WÉþž_­ü±Wß8ÝßÕWüãçþHÈ¯ü×žXÿ ºU¶z‡ûˆT}ÁðŽØÿ Ïÿ Ÿû¢õ¢)ü3)Ö¼sóßó·Éÿ óŸ—¯æWVîçN²š7HÓÐIw¨_Ý°ZÂ„RÔffbQYL	ø/ù©ç¿ùËùÌÙîüÅ©X~[›Õ´Ò¼¢ÞLšM¬1Ë(ŠK”>»p=JI; µ‚F3.³#DîåáÑeÍˆÙâz—üâç|o;8µ´¶²ˆË¹¹(h¥¸B+ÀŽýNýwÌ3ÚØ¼þNoò&sÊ¾o6Ð¼µùÙù{­§˜<¬Ú×•õí"E³±Ö´émç‰ÐŽ/V6‚ç‹ÕX1Vm™_ˆõqeÙÙ‡ð¿¡oùÃ¿ùÌþrgË÷Þ_ÕìåÐ8¼§ÛÉçÍH=[°Ò4P°!‰ôÝ•L‘°S¿‰x»eÆ@òp§o²ÙZ×Ç&Å§ÞÃßfÿ ˆœ‰ä—ò#žjýþªÿ ç?ò@~Eæ¼òÇýÒ­³Ðt?ÜCú£î„vÇøîødÿ Ý­Ÿ»Ç2kò£þ~‡¬ýDü“ü¶ˆ)ý5¯_ù“R’ŒY Ò­ÖÚ4 jRI/jj§ìíNð‘ ÙŒYgŸ”Ú5‡“?&|½ûEåí6F¸úÍÓÇn‚6ø•™Ü Þ¤ï¾ùÌgõÈ÷ÛØi‡Û$3kþTó-¼Ÿ |ï¡ëÍ¹ú®Ÿ¨ÛÜMÆ»3F¬NÄR¹-<ã¹~,øæj;¼÷Ìšrÿ T†XÜ¸±)ggcRHÜ1ëÓ|ÆË·F7†yJ›òóþrkþqßóKÊ—CKÿ šãü½óÝ¢ þÃ^âëP¬ª”ð!~9»ìQ‘á/1ÛAÆ¹2Õ”õSOzƒ/:‰ÒÍoáù7üDäJ_È®y³ôCú«ÿ œ|ÿ Éùÿ šóË÷J¶ÏAÐÿ qê¸>Ûã¹ÿ á“ÿ t^´i·…6Ì§\øþs7ÉSùâÍu<}oòÆÍ''Ñí„é ÕãÔ¦ï •KXíãJ·^B›‚5™u’Žc@ï$÷{¿K»Óö|e¥Ž]ÌŒˆ=Â1¡¿¼“òaß›_“~QÖ´íêãÉF­ Yñ[}BÚ[Ë<Ñ$m,–Á‡3VŒ¹ß|Ã:¬Â5f–Ï‹„X±ä~¼¿ùkçÛO0ë÷þYòö™VNÞMÕ4+;»[7¿VF‰/4ëÓ0h©ËÔdd`>Ã«På''QÞdG[¯°þ·0h¤/†1ˆ±þ˜«Ý»Â<éqæ­{QÕ<·ù‹¡jZÁÓ.î#Y<±h®Vû¹
]ßÇ)n,HX4©Rv©Ã– q@Ñþ‘û6o''S‹&Ipå×óGNú''ìuÿ œoòž¼Õù‹ù9åkgÎ^RòÇ›m<ë¨y—S‘ìõ-.ËËì''H—,^áŒ×eDÑÒ¦¨6ÊÑÂ92qDsª×ÊXñÄ#Ô{ß¸R»1f''v©''ç›“»£Ei&º„&ÿ ˆœ‰KùÏ7~‡UŸóŸù ?"¿ó^ycþéVÙè:î!ýQ÷Â;cüw?ü2î‹ÖÏöo™N¹â¿˜^K³Õõ‰õËû/-åÒ%ÒånGÒX§ zö^  â‡‹éš^˜œÞ%t§¡ìý`ü·tnë©ýž^ç™þcjï¦ùwP¹µ´G–ÞHa2=@\8FÛÈ9‰˜(m¢®r>o/Ó5K?Ë»;ù<ÎÓÝÚÞ0[ÍIKCè;¡
ÐDå“â0Ûc\Œqx`ÞîfmDr×ßÓî|¨j^\óœHX+‹%­á»‰cY’›y×wä­VR¬Z•Ì	|œÌDd²h¾Æÿ œ\ò•æ³ç§µ+y¡	ô-«ŸM^üE-ô…A¡oNU|juÍÏdBÁŸÁä½ ŸAÝo±·þ9¸yäfŽOéŸþ"p+ùÏ7~‡Uó„Ð¿þD×ÿ -ß–6ÿ ·U¶z‡ûˆT}ÁðŽØÿ Ïÿ Ÿû¢õ£Ó2sóTžŸ—uv¡-èŽ lysP?ÇÕ1\x³Dÿ ÐùOÏú5¯žü«æO''Ü_ÜiË¬ÛEßÚ;Aq¤ !•Ec‘j8°ÜÑNæ÷¬ÓÔH/›µûo1þ]ySOòŸš´=?ó+HŠ¢ÍÖZÕíŸ˜ocˆ~î{û=A/­§¸`)$ªËÉ¾ ìã’ÄHßû¼å~œœ¿†cýðæù¿@^¸ÖuM_Z²‡LòÈ†ÐZL†)5Ÿ®òã79m£Š''ŽBÊ‘%ò©$Žæ"+™üwõmžò—Üªÿ ÷?^¿(¼•}ù}ä3@Õš6×&šmK\HO(â¸¹ãHC~×¥"Ý¦tÚ9ÁˆDóæ^´5CSœÌrä„çß2Ë†ÑHý''n+½þ r*þGëžrýoê³þqôÓþqÿ ò#ÃþUç–?î•mþ‡ûˆT}ÁðŽ×ÿ Ïÿ Ÿû¢ô/0ù‹@òž‘u¯ù«]Ó¼±¡XŽWšÞ¯w•œ@ô2O;"(ùœÊæëŸ~Lÿ ÎBßÿ ÎY~q~ji¾E×SËÿ “ß•¾^¶‡EÑ.­•u5jÚÅÄëµrÏûË{D±t‚™¥Ny…*Õa3ÆcÔ·é3Œyc>€²Jò{Ëè®­^;‹%0ê–Œ¥e‰˜
òSB 
ž‡b¤‚s0™„Œd7ýß›ÖÎ"@NÒyÇÛÜùçóXŽx­$Â› Â!p…\0$†äE:e™8HØ¹xu„X¶ÿ ç´Î?šv·zíÌ>——c}SËÚ5ÃªSU‚¦%Ž9iVÎ6{†UåÅÂ»Ë³tñÉ–Îü;ù_OÇ¹ÖvÆ¶c„¶ó®¿«æý.™œ3zœ½Jüa«Ê½ë\é^Míï_pp£ô2N©n; ôÿ €9¯ä‹<åúúÿ 9ÿ 9ùÁùù]ÿ 8Íù}ùa}¥yz=oògÊ:åß™e°KÝId–Õ­}(>²Ïl‰Æ jÐ;M
ç è ð!ýQ÷Â{bÿ =›þ?÷Eù-æïÌ=~gêÒy—ó''Îš¿žõØYM¼ºÕä—†Þ"ÕcoŸJ$ô‰Ì·^^ûÿ 8£ÿ 9 ¿ó¿ŸþQóö¡rcòìóy_óùF…¨ËµÉ¢±ÿ C¹H®và’(ûxdx‘Oé³Ï~DÓ|ÎcÖm™,¼Çin`´ÕÔrIíX–ú­Ú)ýì$±eý¨ÉäX6·S¢Ž£ÊC‘ýÉÙhµÓÓmÎ''˜ý#¸¿;1ü—ªê^b>WÑìîåó<ê.WË²3­¤P­îåGªFMZQ×dê™ÏOAœæðúŸ•wßwö=0Öéü§Û}Õßö>Qÿ ŸhZ_å¿üãßäÿ –ínäºÖ§üÅ}J}o{{›©¡Ñî’îá=6h–5Sð(Q^@“Ðé´ñÁro›Êë5ÔLÎ_.áÝøêù{ò[þ~3ÿ 9#ù/qg¦ùƒ]ÿ •Ýä4qêywÎ3É6£u–Ï[î£b ëzÑ¨ée[†ý~üœÿ Ÿ‡Î4~o%¥ïšdü¥ó]Á|¹çnvï%*E¾­k);Qâsü™!ºyù|úš†sYmnãim.âa$3#FHxäBUÔ‚*HÈ”¿’Šçœ¿BÛôsþrOþq''þrþrËÿ ó‹~iü¨òL~dòþ‘ùäý*úúMSM±ãx‘M;F#¼º†CHæCÈ/èA§ hH!ýQ÷Â»_üw7ü2î‹æ³ÿ >Üÿ œÍã?)­ƒÆy,ƒÌ:Tû§í™\A×RÙ?çÛó™s«C/åLo"”’?ñ…B¬m¾¿Ü1â	C?óZGæn‘ù	ùW ~qi¢¿1ü½¡C¢ù¢ÔÜÛ^m9šÒ	Ú{Y$‰ÌðG¦ŒMZñW NéùñùáùGÿ 9ÁæïÎcù“å?)¥¾“¥j×VŸ—Öúf·¤Ùê•hï½ÈõîRƒ~¥§¹µ¸3E2JðÈ±2G"bÏÅ³\ž—M—³F’1—÷»ñX;û«»§"
Eÿ 9Ùÿ 8«ÿ 9ÿ 9åOÈ·ò/åÔ3kZ#êZ´«é–Ñé·Z…•’´)%ÅÚ¬ª“G")G„NõËÀÜ¼äˆ­Ÿmÿ >Èÿ œÔt
)íÅßó°è;úOÂÁQçÙ_óšAJŸÊkr¤Q”ù‡A5ÿ éøU÷oüàoüã7üæÏäç?–Îzv§å¯Èûˆµ$ó—SÌz]þ–]¬.¤‹§Ey;Fÿ Z|p"·óž±&Ðü¦Ï9~…v*ìUØ«±Wb®Å]Š»v*ìUÿÙ');
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(4,'Music','Manjunath','Manjunath','tmksmanju13@gmail.com','9535866270','05/06/1987','MALE','#45,4th Cross,rajajiangar,Bangalore','560021','Authorized','‰PNG

   IHDR   y   y   *$~{   cPLTEÿÿÿ   æææøøørrr¾¾¾éééààà”””000žžžÊÊÊ§§§KKKòòòGGG|||666aaaRRRÖÖÖjjjÄÄÄ%%%\\\®®®„„„WWW===ë,§=  !IDAThÅ[Ùv«0$PÖ$µÙÛüÿWÞX¶$HzîœÓ—<X–dI–£(ñüZ­Íù¶moçåq]]çqø0aÈNÅr;ÂvYœ²¿¢=TÍjÕcµ¬ÓÓæE#²z4U>%m’î_…»*7›ÍýñW®^Å¿O“©ˆ«²Gz©ÒyžùÑ“8Ÿ§Å¥G¿YLÃÛr—rj”¥»îVó.:R¼ÖÊÃõµ³*ŸÍûôœÆr-^²X>4Í[ùA¾B¬åÐ¾¦	‰Aê­wê¡âµ{s•ŽàMüÛ_c4÷óþ	¶°Ü9ŽåØÅš»õn?üä>ù:’×À›Å)ä¥Â¾ó=RCêo;L¿²žÂ"Ü´×àãÉÑšãûÎÁ:„#¤g‰õCm·­³8Ž3m=²Líˆ¿„G“ì´;~oÎ·Ù­¼ïwqÔÄÚ×^§¶¢þá¨«ïYwY!~ì¬5b«\;ž÷g6€FúQ³B!^ñ>pGÝéÆ•Ê¢N^C“åú*¨¤”àRr«\,±Šm¿øÅªëHíÈV_5ë7ÖÙ&d\74i×†Z¡Ï„ (#—Â¬£]dÖså ñlÆnÈþçšÞ4yíêµ/Š$WC?“|³ÄØ”%³%5Pß“üÅ~ÿÒÁ*xM?¿G¤| PoPf~½Èmÿ»d_r
‚`Ï²ú2Fý/ƒPò+6§úÿ#ÅcWä!¢ Qú6O¯HQâg$—¿Mš¦,mcŠËîAŠWÉB:+bK™D}Ÿ†96lZ÷M~SZå £RBVZév»$Ç(†šY)³¡s¶ÖùŒŒhÝ[œ³œ—M{].T1Ëù#9oX¤·rT¢ÛrHÞÛ	˜D/ø<Â/Î¬ä&¥"cÖ’Fpw~à¬$''Wó7	RËRv03l9´âÎL,ò¶w~)5™0º2‚¡€íð]RÍ–I|Æ™M©•”fVË©ÿ>2mµ@Œ›•:MÂ,´©Xnµ§ñúWÊ0ÞÜîqÑGƒ (B{}l# >ƒÌ@Š4knÍ(Õ¡sÊ:¤bWëÁôrÛ$†Çª(>Ùê":ÂÌª''‰r£bkr¥–Tö*Í{>TfEh†,Õ‡â°»Z8¬ÿ\Fçàµ¿À''…O˜0ãÝ0æ)×™˜WäP f<»ÌÊ0o)»¸ë£ŽDÛHiˆ˜3,n1lw°s¥Nz‹œyæªÛjµ(õÀ/tØbu³gÂ`É³¡PÛÙsCA¥îÃz,†{8úm=ÃŽœß÷*‚|ðm¼·W¡û³¶ÐØ2ûý™> <×ÑÄŠÎÅ$hF«G¡-†cO‚™ ÇŸž‹·¤ÄØ	$eoc9†ƒTwEOÖž9–WyðÞ>}|æU”K–èk½†‡.@‹Š:¹$–?·`˜ácfÊŸ›vøAó§ÌšT''™ŽùÒÑF 6¤3£]aCõ°é˜im½ 5@•v¯Ô=[$3øú‹RéµÞõgÌTzh=¦^ßnÁùOl‡$ŸÝûÔš~nÆ<?Õô{
\I¸sQè»ßÏ1ô³¾.†,ôÀÙz^åðg8zÞ<x^¥žÑYÔRvõ«†ä,ß\V9øß>r¹f¡uÝÐìÞ÷cí,6B*Í¢šYO0Ðæ œ?ƒ¹{Åï<ä7‡´X<sñÊúcœü™;ßgœN%à†š\…>ç`ÊWÍ«€#‡²x¸=jãô ¡úE¯Ÿ$9áE¡>ö§Þ8r?É[M²8}Ã½£mJÍKßPR7‰ pÜ6	7•N¯^“@¶ôJy±ì¢C¸Z£œcýa¾î…ÔPØ±ô¢¤Ðö	€>À¿¡FˆŸýžSë÷Œ‚šG  =®Ö„†# ¯×»”iØ=žâ7»íßîô¬†õ˜[!©VlÔ1ªO?êÞM‰±w¢î}Œ(ƒÚäß0~Çú¼ã+CÉøüÞq‡Ê¼œ†7º_%aÂûUð²·¨sè÷èš¿¸GgñŸîzôïK6cïKþÅÖDF''H¯f    IEND®B`‚');
UNLOCK TABLES;
/*!40000 ALTER TABLE "user" ENABLE KEYS;*/
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
