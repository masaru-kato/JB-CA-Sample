■★
BU
SEJ : 10965546
nanaco : 10981227

(10965546,10981227)

C10965546.
C10981227.

select * from C10965546._Bounce order by EventDate desc
select * from C10981227._Bounce order by EventDate desc
C10981227.
--------------------------------------

■IF本数
26本
07.ファイル出力 ６本
08.レポート １０本
09.レポート月次 ５本
10.レポートCI ３本
xx.日次CI（nanaco BU）２本

--
SEJメルマガ会員データPC用①（To7DC)
SEJメルマガ会員データPC用②（To7DC)
SEJメルマガ会員データ携帯用（To7DC)
nanacoメルマガ会員データPC用（To7DC)
nanacoメルマガ会員データスマホ用（To7DC)
nanacoメルマガ会員データ携帯用（To7DC)

SEJメルマガ会員属性集計データPC用（To7DC）
SEJメルマガ会員属性集計データ携帯用（To7DC）

SEJメルマガ会員推移データPC用（To7DC）
SEJメルマガ会員推移データ携帯用（To7DC）
SEJメルマガ会員推移データPC用(月次)（To7DC）
SEJメルマガ会員推移データ携帯用(月次)（To7DC）

nanacoメルマガ会員属性集計データPC用（To7DC）
nanacoメルマガ会員属性集計データSP用（To7DC）
nanacoメルマガ会員属性集計データ携帯用（To7DC）
nanacoクリックインセンティブ会員属性集計データPC用（To7DC）
nanacoクリックインセンティブ会員属性集計データSP用（To7DC）
nanacoクリックインセンティブ会員属性集計データ携帯用（To7DC）

nanacoメルマガ会員推移データPC用（To7DC）
nanacoメルマガ会員推移データSP用（To7DC）
nanacoメルマガ会員推移データ携帯用（To7DC）
nanacoメルマガ会員推移データPC用(月次)（To7DC）
nanacoメルマガ会員推移データSP用(月次)（To7DC）
nanacoメルマガ会員推移データ携帯用(月次)（To7DC）

クリックURL別、日別アクセス集計データ
会員別クリック実績データ

30000000156
30000000155
30000000154

SELECT *
FROM ent.nanaco_All_List_base a with(nolock)
WHERE a.NANACO_MAG_BOUNCE_FLG = '0' 
/* AND NANACO_MAG_STOP_FLG IS NULL */
AND ISNULL(a.NANACO_MAG_STOP_FLG,'0') = '0'
AND a.NANACO_MAG_THANKML_SEND_KBN = '1' 
AND a.NANACO_MAG_MAIL_KBN = '10'
AND a.NANACO_REG_CAMPAIGN_NAME IS NULL
AND NOT EXISTS(
  SELECT 1 FROM ent.nanaco_ThankyouMail_SentHistory b with(nolock)
  where a.NANACO_MAG_MEMBER_ID=b.NANACO_MAG_MEMBER_ID
)


・登録数
　SEJメルマガメール区分 = '10' かつ　　※10：PCメール
　SEJメルマガ退会フラグ = NULL かつ　　※NULL：有効
　SEJメルマガ登録日時の年月 = 当月の年月

・変更数
　SEJメルマガメール区分 = '10' かつ　　※10：PCメール
　SEJメルマガ退会フラグ = NULL かつ
　SEJメルマガ更新日時の年月 = 当月の年月 かつ
　SEJメルマガ停止フラグ = NULL

・解除数
　SEJメルマガメール区分 = '10' かつ　　※10：PCメール
　SEJメルマガ退会フラグ = NULL かつ
　SEJメルマガ更新日時の年月 = 当月の年月 かつ
　SEJメルマガ停止フラグ = '1'

・退会数
　SEJメルマガメール区分 = '10' かつ　　※10：PCメール
　SEJメルマガ退会フラグ = '1' かつ　　※1：退会
　SEJメルマガ更新日時の年月 = 当月の年月 かつ
　SEJメルマガ停止フラグ = '1'



[システムテスト]【SFDC】20190513

＜実績ケース数＞　消化済/実施NG/当日総件数
■Day14
・SEJメルマガ
4/0/4

・nanacoメルマガ
5/0/5

特に問題はなし
以上、よろしくお願いします。


nanaco初期 → 序数マップ
nanaco日時 → 序数マップ

■ColumnName
MEMBER_SYS_ID,SEJ_KOKYAKU_MEMBER_KBN,SEJ_KOKYAKU_PASSWORD,SEJ_KOKYAKU_PC_KEITAI_MAIL_KBN,SEJ_KOKYAKU_MAILADDRESS,SEJ_KOKYAKU_CHANNEL_KBN,SEJ_KOKYAKU_MAIL_ATESAKI_FLG,SEJ_KOKYAKU_MAIL_FUKA_YMDHM,SEJ_KOKYAKU_TOUROKU_YMDHM,SEJ_KOKYAKU_UPDATE_YMDHM,SEJ_REG_CAMPAIGN_NAME,SEJ_KOKYAKU_SEX_KBN,SEJ_KOKYAKU_BIRTHDAY,SEJ_KOKYAKU_PREF_CODE,SEJ_KOKYAKU_MAILMAG_TEISI_FLG,SEJ_KOKYAKU_MAIL_TEISI_YMDHM,SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG,SEJ_KOKYAKU_MAIL_TAIKAI_YMDHM,NANACO_CARD_ID,NANACO_TAIKAI_FLG,NANACO_TAIKAI_YMD,NANACO_SANKYU_MAIL_SOUSIN_FLG,SANKYU_MAIL_SOUSIN_YMD,NANACO_NYUKAI_CHANNEL_KBN,NANACO_TORIKOMI_KBN

■
MEMBER_SYS_ID,SEJ_KOKYAKU_MEMBER_KBN,SEJ_KOKYAKU_PASSWORD,SEJ_KOKYAKU_PC_KEITAI_MAIL_KBN,SEJ_KOKYAKU_MAILADDRESS,SEJ_KOKYAKU_CHANNEL_KBN,SEJ_KOKYAKU_MAIL_ATESAKI_FLG,SEJ_KOKYAKU_MAIL_FUKA_YMDHM,SEJ_KOKYAKU_TOUROKU_YMDHM,SEJ_KOKYAKU_UPDATE_YMDHM,SEJ_KOKYAKU_SEX_KBN,SEJ_KOKYAKU_BIRTHDAY,SEJ_KOKYAKU_PREF_CODE,SEJ_KOKYAKU_MAILMAG_TEISI_FLG,NANACO_CARD_ID,NANACO_TAIKAI_FLG,NANACO_TAIKAI_YMD,NANACO_SANKYU_MAIL_SOUSIN_FLG,SANKYU_MAIL_SOUSIN_YMD,NANACO_NYUKAI_CHANNEL_KBN,NANACO_TORIKOMI_KBN

■nanaco Initial
NANACO_MAG_MEMBER_ID,NANACO_MAG_MAIL_KBN,NANACO_MAG_MAIL_ADDRESS,CHANNEL_KBN,NANACO_MAG_BOUNCE_FLG,NANACO_MAG_BOUNCE_DATETIME,NANACO_MAG_REG_DATETIME,NANACO_MAG_UPD_DATETIME,GENDER_KBN,BIRTH_DATE,PREFECTURE_CD,NANACO_MAG_STOP_FLG,NANACO_CARD_ID,NANACO_UNSUBSCRIBE_FLG,NANACO_UNSUBSCRIBEI_DATE,NANACO_MAG_THANKML_SEND_KBN,NANACO_MAG_THANKML_SENT_DATE,NANACO_REG_CHANNEL_KBN,NANACO_TORIKOMI_KBN,NANACO_CLICK_PREF_FLG,NANACO_CLICK_PREF_REG_DATE,ADV_ONLY_ML_PREF_FLG,NANACO_CAMPAIGN_NO,USE_SERVICE_1_FLG,USE_SERVICE_2_FLG,USE_SERVICE_3_FLG,USE_SERVICE_4_FLG,USE_SERVICE_5_FLG,USE_SERVICE_6_FLG,USE_SERVICE_7_FLG,USE_SERVICE_8_FLG,USE_SERVICE_9_FLG,USE_SERVICE_10_FLG,USE_SERVICE_11_FLG,USE_SERVICE_12_FLG,USE_SERVICE_13_FLG,USE_SERVICE_14_FLG,USE_SERVICE_15_FLG,USE_SERVICE_16_FLG,USE_SERVICE_17_FLG,USE_SERVICE_18_FLG,USE_SERVICE_19_FLG,USE_SERVICE_20_FLG

■nanaco
NANACO_MAG_MEMBER_ID,NANACO_MAG_MAIL_ADDRESS,NANACO_CARD_ID,CHANNEL_KBN,NANACO_MAG_MAIL_KBN,BIRTH_DATE,GENDER_KBN,PREFECTURE_CD,NANACO_REG_CHANNEL_KBN,NANACO_MAG_BOUNCE_FLG,NANACO_MAG_BOUNCE_DATETIME,NANACO_MAG_STOP_FLG,NANACO_MAG_STOP_DATE,NANACO_MAG_UNSUBSCRIBE_FLG,NANACO_MAG_UNSUBSCRIBEI_DATE,NANACO_MAG_THANKML_SEND_KBN,NANACO_MAG_THANKML_SENT_DATE,NANACO_CLICK_PREF_FLG,NANACO_CLICK_PREF_REG_DATE,ADV_ONLY_ML_PREF_FLG,NANACO_CAMPAIGN_NO,NANACO_MAG_DEVICE_KBN,NANACO_REG_CAMPAIGN_NAME,NANACO_MAG_REG_DATETIME,NANACO_MAG_UPD_DATETIME,USE_SERVICE_1_FLG,USE_SERVICE_2_FLG,USE_SERVICE_3_FLG,USE_SERVICE_4_FLG,USE_SERVICE_5_FLG,USE_SERVICE_6_FLG,USE_SERVICE_7_FLG,USE_SERVICE_8_FLG,USE_SERVICE_9_FLG,USE_SERVICE_10_FLG,USE_SERVICE_11_FLG,USE_SERVICE_12_FLG,USE_SERVICE_13_FLG,USE_SERVICE_14_FLG,USE_SERVICE_15_FLG,USE_SERVICE_16_FLG,USE_SERVICE_17_FLG,USE_SERVICE_18_FLG,USE_SERVICE_19_FLG,USE_SERVICE_20_FLG




★★★オートメーションスケジュール★★★（検討中）
Inbound
・日次連携IF取込（SEJ,nanaco）5:00

Outbound
・ToHerokuバウンス、クリック出力（SEJ,nanaco）16:00 
  ※nanaco BUバウンス、クリックの事前出力は15:00
・ToNRIメルマガ、推移データ出力(日次) 6:00
・ToNRI推移データ出力(月次) 6:00(毎月1日)
・ToNRIクリックインセンティブ 6:00

その他 データ抽出など
・サンキューメール自動送信SEJ 7:00
・サンキューメール自動送信nanaco 7:00
・アンケート経由サンキューメール手動送信対象者抽出 8:00
・OneToOneバウンス情報出力 9:00
・OneToOneメールアドレス暗号化(SEJ,nananco) 任意で実行
 ※OneToOneオートメーション SEJ ×20、nanaco×20


★5/10〜のシステ再実施
・バウンス出力 10:00
・Dailyメルマガデータ取込 14:00




01_OneToOne_nanaco
01_OneToOne_nanaco_Temp
01_OneToOne_nanaco_Enc

01_OneToOne_SEJ
01_OneToOne_SEJ_Temp
01_OneToOne_SEJ_Enc


■サンキューメール送信対象者抽出SEJ
SELECT * 
FROM C10965546.SEJ_All_List_Base a with(nolock)
WHERE a.SEJ_KOKYAKU_CHANNEL_KBN = '10' --IN ('31','32','33','34') 
AND a.SEJ_KOKYAKU_MAIL_ATESAKI_FLG = '0'
AND a.SEJ_KOKYAKU_MAILMAG_TEISI_FLG IS NULL
AND a.NANACO_SANKYU_MAIL_SOUSIN_FLG = '1'
AND a.SEJ_KOKYAKU_MEMBER_KBN = '1'
AND a.SEJ_REG_CAMPAIGN_NAME IS NULL
AND NOT EXISTS(
  SELECT 1 FROM C10965546.SEJ_ThankyouMail_SentHistory b with(nolock)
  WHERE a.MEMBER_SYS_ID=b.MEMBER_SYS_ID
)

■サンキューメール送信対象者抽出nanaco
SELECT *
FROM C10965546.nanaco_All_List_base a with(nolock)
WHERE a.NANACO_MAG_BOUNCE_FLG = '0' 
/* AND NANACO_MAG_STOP_FLG IS NULL */
AND ISNULL(a.NANACO_MAG_STOP_FLG,'0') = '0'
AND a.NANACO_MAG_THANKML_SEND_KBN = '1' 
AND a.NANACO_MAG_MAIL_KBN = '10' -- '30' '40'
AND a.NANACO_REG_CAMPAIGN_NAME IS NULL
AND NOT EXISTS(
  SELECT 1 FROM C10965546.nanaco_ThankyouMail_SentHistory b with(nolock)
  where a.NANACO_MAG_MEMBER_ID=b.NANACO_MAG_MEMBER_ID
)

■サンキューメール対象者テーブル
select * from C10965546.SEJ_ThankyouMail_List_pc
select * from C10965546.SEJ_ThankyouMail_List_mb

select * from C10965546.nanaco_ThankyouMail_List_pc
select * from C10965546.nanaco_ThankyouMail_List_sp
select * from C10965546.nanaco_ThankyouMail_List_mb

■バウンス
--SEJ
SELECT
	S.MEMBER_SYS_ID AS MEMBER_SYS_ID,
	FORMAT(DATEADD(HH, 15, (B.EventDate)), 'yyyy/MM/dd HH:mm:ss') AS BouncedDate
FROM
	C10965546.SEJ_All_List S WITH (NOLOCK)
	INNER JOIN
	C10965546._Bounce B WITH (NOLOCK)
	ON
	S.MEMBER_SYS_ID = B.SubscriberKey
	INNER JOIN
	C10965546._Subscribers A
	ON
	A.SubscriberKey = B.SubscriberKey
WHERE
    (B.EventDate
	BETWEEN 
	CONVERT(DATE, DATEADD(HH, -25, SYSDATETIME()), 101)
	AND
	CONVERT(DATE, DATEADD(HH, -1, SYSDATETIME()), 101))
	AND
	A.Status = 'held'

--nanaco
SELECT
	S.NANACO_MAG_MEMBER_ID AS NANACO_MAG_MEMBER_ID,
	FORMAT(DATEADD(HH, 15, (B.EventDate)), 'yyyy/MM/dd HH:mm:ss') AS BouncedDate
FROM
	C10965546.nanaco_All_List S WITH (NOLOCK)
	INNER JOIN
	C10981227._Bounce B  WITH (NOLOCK)
	ON
	S.NANACO_MAG_MEMBER_ID = B.SubscriberKey
	INNER JOIN
	C10965546._Subscribers A
	ON
	A.SubscriberKey = B.SubscriberKey
WHERE
    (B.EventDate
	BETWEEN 
	CONVERT(DATE, DATEADD(HH, -25, SYSDATETIME()), 101)
	AND
	CONVERT(DATE, DATEADD(HH, -1, SYSDATETIME()), 101))
	AND
	A.Status = 'held'

-----
WHERE
   (
     DATEADD(HH, 15, B.EventDate)
       BETWEEN 
         CONVERT(DATE, DATEADD(DAY, -1, DATEADD(HH, 15, SYSDATETIME())),101)
       AND
         CONVERT(DATE, DATEADD(DAY,  0, DATEADD(HH, 15, SYSDATETIME())),101)
   )
   AND A.Status = 'held'

select * from C10965546.SEJ_Bounce_List
select * from C10965546.nanaco_Bounce_List

■FTPユーザ
・nanaco
ftp1.exacttarget.com/Import
10981227
C0yyS06oaHyU!

・SEJ
10965546
SejSftp3298
--------------------------

nanaco_ci_trigger_%%Month%%_%%Day%%.csv
nanaco_ci_trigger_05


select * from C10965546.nanaco_pc_ci_mailmag_zokusei_daily_union_data
select * from C10965546.nanaco_mb_ci_mailmag_zokusei_daily_union_data
select * from C10965546.nanaco_sp_ci_mailmag_zokusei_daily_union_data

select * from C10965546.nanaco_pc_mailmag_zokusei_daily_union_data
select * from C10965546.nanaco_mb_mailmag_zokusei_daily_union_data
select * from C10965546.nanaco_sp_mailmag_zokusei_daily_union_data

select * from C10965546.sej_pc_mailmag_zokusei_daily_union_data
select * from C10965546.sej_mb_mailmag_zokusei_daily_union_data


■■■■■■■■■■■■■■■■■■■■■■■■■■■
データ連携の概要 初回・日次連携 ※上から順にファイル→ALL_List_Send

★★★★★★
■■■初回連携SEJ■■■
ファイル 【sej_mailmag_7nm_N.csv】
SEJ_Initial_RawData
Initial_SEJ_UnionData
SEJ_All_List_Base , SEJ_All_List
SEJ_All_List_Send_Temp
SEJ_All_List_Send

■■■日次連携SEJ■■■
ファイル 【YYYYMMDD_sej_mag_user_info.IF】
RawData 
SEJ_UnionData
SEJ_All_List_Base, SEJ_All_List, SEJ_All_List_temp
SEJ_All_List_Send_Temp
SEJ_All_List_Send


■■■■■■■■■■■■■■■■■■■■■■■■■■■
■■■初回連携nanaco■■■
ファイル 【nanaco_mailmag_7nm_N.csv】
nanaco_Initial_RawData
nanaco_UnionData ★日次と共通
nanaco_All_List_base , nanaco_All_List
nanaco_All_List_Send_Temp
nanaco_All_List_Send

■■■日次連携nanaco■■■
ファイル 【YYYYMMDD_nanaco_mag_user_info.IF】
nanaco_RawData
nanaco_UnionData ★初回と共通
nanaco_All_List_base, nanaco_All_List, nanaco_All_List_temp
nanaco_All_List_Send_Temp
nanaco_All_List_Send
→ここからフィルタ

■■■■■■■■■■■■■■■■■■■■■■■■■■■



有効会員

--SEJ
SELECT
*,
RIGHT(SEJ_KOKYAKU_MAILADDRESS, LEN(SEJ_KOKYAKU_MAILADDRESS) - CHARINDEX('@', SEJ_KOKYAKU_MAILADDRESS)) Domain
FROM
    [SEJ_All_List_Base] with(nolock)
WHERE
    SEJ_KOKYAKU_MEMBER_KBN=1 
	AND
	SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG IS NULL
	AND
	SEJ_KOKYAKU_MAIL_ATESAKI_FLG = 0
	AND
	SEJ_KOKYAKU_MAILMAG_TEISI_FLG IS NULL
	AND
	ISNULL(NANACO_SANKYU_MAIL_SOUSIN_FLG, 2)=2
	AND
	LEN(SEJ_KOKYAKU_MAILADDRESS) > 0


--nanaco
SELECT
A.*,
RIGHT(A.NANACO_MAG_MAIL_ADDRESS, LEN(A.NANACO_MAG_MAIL_ADDRESS) - CHARINDEX('@', A.NANACO_MAG_MAIL_ADDRESS)) Domain
FROM
ent.[nanaco_All_List_base] A WITH(nolock)
WHERE
A.NANACO_MAG_BOUNCE_FLG = 0
AND
/*
A.NANACO_MAG_STOP_FLG IS NULL
*/
ISNULL(A.NANACO_MAG_STOP_FLG, 0) = 0
AND
ISNULL(A.NANACO_MAG_THANKML_SEND_KBN, 2) = 2
AND
LEN(A.NANACO_MAG_MAIL_ADDRESS) > 0





SELECT * from ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN 1 
AND (SELECT (MAX(IDNo)/5 * 1) FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (MAX(IDNO)/5 *1)+1 FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (SELECT (MAX(IDNo)/5 * 2) FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (MAX(IDNO)/5 *2)+1 FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (select (MAX(IDNO)/5 *3)  FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (MAX(IDNO)/5 *3)+1 FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (SELECT (MAX(IDNo)/5 * 4) FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (MAX(IDNO)/5 *4)+1 FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (SELECT (MAX(IDNo)/5 * 5) FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

■■■■■■
SELECT * from ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN 1 
AND (SELECT (CASE WHEN MAX(IDNo) < 5 THEN MAX(IDNo) ELSE MAX(IDNo)/5 * 1 END) FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (CASE WHEN MAX(IDNo) < 5 THEN MAX(IDNo) ELSE MAX(IDNO)/5 *1 END)+1 FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (SELECT (MAX(IDNo)/5 * 2) FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (CASE WHEN MAX(IDNo) < 5 THEN MAX(IDNo) ELSE MAX(IDNO)/5 *2 END)+1 FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (select (MAX(IDNO)/5 *3)  FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (CASE WHEN MAX(IDNo) < 5 THEN MAX(IDNo) ELSE MAX(IDNO)/5 *3 END)+1 FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (SELECT (MAX(IDNo)/5 * 4) FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (CASE WHEN MAX(IDNo) < 5 THEN MAX(IDNo) ELSE MAX(IDNO)/5 *4 END)+1 FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (SELECT (MAX(IDNo)/5 * 5) FROM ent.[nanaco_ci_mailmag_jisseki_URLID_MM_base])





03_OneToOne_nanaco_Send

SELECT
    NewID() AS Subscriberkey
    ,MailAddress
    ,key0
    ,key1
    ,key2
    ,key3
    ,key4
    ,key5
FROM
    [03_OnetoOne_nanaco_upload] WITH(NOLOCK)  


03_OneToOne_Subscriber_nanaco

SELECT
    *
FROM
    [03_OneToOne_nanaco_Send] WITH(NOLOCK)





casys001_tester-sub09@yahoo.co.jp
30000000042
44185670008
メアド重複


nanacoメルマガ停止フラグ = NULL

sowa-ryousuke@sej.7andi.co.jp,satake-yoshiyuki@sej.7andi.co.jp


■6/21夕会
・障害の対応期日 6/24,6/25までに
No24対応方針
No26対応

発生工程
→見つけるべき工程

select *
, ROW_NUMBER() OVER(ORDER BY NANACO_MAG_MEMBER_ID ASC) AS No
from nanaco_All_List_Base
where NANACO_MAG_STOP_FLG is null
and NANACO_MAG_MAIL_KBN = '10'  
and NANACO_MAG_BOUNCE_FLG = '0'

select *
, ROW_NUMBER() OVER(ORDER BY NANACO_MAG_MEMBER_ID ASC) AS No
from nanaco_All_List_Base
where ISNULL(NANACO_MAG_STOP_FLG, '0') = '0'
and NANACO_MAG_MAIL_KBN = '10'  
and NANACO_MAG_BOUNCE_FLG = '0'


ISNULL(NANACO_MAG_STOP_FLG, '0') = '0'



GREP

NANACO_SANKYU_MAIL_SOUSIN_FLG

NANACO_MAG_THANKML_SEND_KBN
NANACO_MAG_STOP_FLG


--■メルマガ会員推移データ nanaco
SELECT TOP 100 a.strDate AS '日付',
ISNULL(c.reg, b.reg) AS '登録',
ISNULL(b.chg, c.chg) AS '変更',
ISNULL(b.stp, c.stp) AS '解除' 
FROM C10965546.calendar a
LEFT OUTER JOIN (
SELECT
    REPLACE(LEFT(NANACO_MAG_UPD_DATETIME,10),'-','') AS date,
	0 AS reg,
    SUM(CASE WHEN ISNULL(NANACO_MAG_STOP_FLG, '0') = '0' THEN 1 ELSE 0 END) AS chg,
    SUM(CASE WHEN NANACO_MAG_STOP_FLG = '1' THEN 1 ELSE 0 END) AS stp
FROM
    C10965546.nanaco_All_List_base
WHERE
    NANACO_MAG_MAIL_KBN = '10' /* ★★★10:PCメール */
    AND  LEFT(NANACO_MAG_UPD_DATETIME,7) = LEFT(CONVERT(DATE, DATEADD(DAY,-1,DATEADD(HH,15,SYSDATETIME())), 101),7)
GROUP BY
    LEFT(NANACO_MAG_UPD_DATETIME,10)
) b
ON  a.strDate = b.date
LEFT OUTER JOIN (
SELECT
    REPLACE(LEFT(NANACO_MAG_REG_DATETIME,10),'-','') AS date,
    SUM(1) AS reg,
	0 AS chg,
	0 AS stp
FROM
    C10965546.nanaco_All_List_base
WHERE
    NANACO_MAG_MAIL_KBN = '10' /* ★★★10:PCメール */
    AND  LEFT(NANACO_MAG_REG_DATETIME,7) = LEFT(CONVERT(DATE, DATEADD(DAY,-1,DATEADD(HH,15,SYSDATETIME())), 101),7)
GROUP BY
    LEFT(NANACO_MAG_REG_DATETIME,10)
) c
ON  a.strDate = c.date
WHERE a.date between LEFT(CONVERT(DATE, DATEADD(DAY,-1,DATEADD(HH,15,SYSDATETIME())), 101),7) + '-01' and CONVERT(DATE, DATEADD(DAY,-1,DATEADD(HH,15,SYSDATETIME())), 101)
order by a.strDate


--■メルマガ会員推移データ SEJ
SELECT TOP 100 a.strDate AS '日付',
ISNULL(c.reg, b.reg) AS '登録',
ISNULL(b.chg, c.chg) AS '変更',
ISNULL(b.stp, c.stp) AS '解除',
ISNULL(b.unsub, c.unsub) AS '退会' 
FROM C10965546.calendar a
LEFT OUTER JOIN (
SELECT
    REPLACE(LEFT(SEJ_KOKYAKU_UPDATE_YMDHM,10),'-','') AS date,
	0 AS reg,
    SUM(CASE WHEN SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG IS NULL AND SEJ_KOKYAKU_MAILMAG_TEISI_FLG IS NULL THEN 1 ELSE 0 END) AS chg,
    SUM(CASE WHEN SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG IS NULL AND SEJ_KOKYAKU_MAILMAG_TEISI_FLG = '1' THEN 1 ELSE 0 END) AS stp,
    SUM(CASE WHEN SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG = '1' AND SEJ_KOKYAKU_MAILMAG_TEISI_FLG = '1' THEN 1 ELSE 0 END) AS unsub
FROM
    C10965546.SEJ_All_List_base
WHERE
    SEJ_KOKYAKU_PC_KEITAI_MAIL_KBN = '10' /* ★★★10:PCメール */
    AND LEFT(SEJ_KOKYAKU_UPDATE_YMDHM,7) = LEFT(CONVERT(DATE, DATEADD(DAY,-1,DATEADD(HH,15,SYSDATETIME())), 101),7)
GROUP BY
    LEFT(SEJ_KOKYAKU_UPDATE_YMDHM,10)
) b
on  a.strDate = b.date
LEFT OUTER JOIN (
SELECT
    REPLACE(LEFT(SEJ_KOKYAKU_TOUROKU_YMDHM,10),'-','') AS date,
    SUM(CASE WHEN SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG IS NULL THEN 1 ELSE 0 END) AS reg,
	0 AS chg,
	0 AS stp,
	0 AS unsub
FROM
    C10965546.SEJ_All_List_base
WHERE
    SEJ_KOKYAKU_PC_KEITAI_MAIL_KBN = '10' /* ★★★10:PCメール */
    AND LEFT(SEJ_KOKYAKU_TOUROKU_YMDHM,7) = LEFT(CONVERT(DATE, DATEADD(DAY,-1,DATEADD(HH,15,SYSDATETIME())), 101),7)
GROUP BY
    LEFT(SEJ_KOKYAKU_TOUROKU_YMDHM,10)
) c
on  a.strDate = c.date
where a.date between LEFT(CONVERT(DATE, DATEADD(DAY,-1,DATEADD(HH,15,SYSDATETIME())), 101),7) + '-01' and CONVERT(DATE, DATEADD(DAY,-1,DATEADD(HH,15,SYSDATETIME())), 101)
order by a.strDate



xx_OneToOne_SEJ_Upload → xx_OneToOne_SEJ_Send   


Splunkでの確認手順	
Firewall	
index=firewall srcip="68.232.201.173" dstport="22"

FTP	
index=ftp 10965546




7/1 SEJ
スケジュール見直しの件



select NANACO_UNSUBSCRIBE_FLG,count(1)
from C10965546.nanaco_All_List_base
group by NANACO_UNSUBSCRIBE_FLG

select SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG,count(1)
from C10965546.SEJ_All_List_base
group by SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG



■SEJファイル出力
SEJメルマガ会員データPC用①（To7DC)
SEJメルマガ会員データPC用②（To7DC)
SEJメルマガ会員データ携帯用（To7DC)

SEJメルマガ会員属性集計データPC用（To7DC）
SEJメルマガ会員属性集計データ携帯用（To7DC）

■nanacoファイル出力
nanacoメルマガ会員データPC用（To7DC)
nanacoメルマガ会員データスマホ用（To7DC)
nanacoメルマガ会員データ携帯用（To7DC)

nanacoメルマガ会員属性集計データPC用（To7DC）
nanacoメルマガ会員属性集計データSP用（To7DC）
nanacoメルマガ会員属性集計データ携帯用（To7DC）
nanacoクリックインセンティブ会員属性集計データPC用（To7DC）
nanacoクリックインセンティブ会員属性集計データSP用（To7DC）
nanacoクリックインセンティブ会員属性集計データ携帯用（To7DC）

■その他
SEJメルマガ有効会員抽出処理
nanacoメルマガ有効会員抽出処理



<SEJ>
SEJ顧客メールマガジン停止フラグ(SEJ_KOKYAKU_MAILMAG_TEISI_FLG) = NULL
AND
SEJ顧客メールマガジン退会フラグ(SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG)= NULL

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
select * from C10965546.SEJ_All_List_base 
where
SEJ_KOKYAKU_MAILMAG_TEISI_FLG IS NULL 
AND
SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG IS NULL


<nanaco>
nanacoメルマガ停止フラグ(NANACO_MAG_STOP_FLG)=NULL
AND
nanaco退会フラグ(NANACO_UNSUBSCRIBE_FLG)=0

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
select * from C10965546.nanaco_All_List_base 
where
ISNULL(NANACO_MAG_STOP_FLG, '0') = '0'
AND
ISNULL(NANACO_UNSUBSCRIBE_FLG, '0') = '0'


select NANACO_MAG_STOP_FLG,NANACO_MAG_UNSUBSCRIBE_FLG,count(1)
from C10965546.nanaco_All_List_base
where
ISNULL(NANACO_MAG_STOP_FLG, '0') = '0'
AND
ISNULL(NANACO_MAG_UNSUBSCRIBE_FLG, '0') = '0'
group by NANACO_MAG_STOP_FLG,NANACO_MAG_UNSUBSCRIBE_FLG

select SEJ_KOKYAKU_MAILMAG_TEISI_FLG,SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG,count(1)
from C10965546.SEJ_All_List_base
where
SEJ_KOKYAKU_MAILMAG_TEISI_FLG IS NULL 
AND
SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG IS NULL
group by SEJ_KOKYAKU_MAILMAG_TEISI_FLG,SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG







SELECT * from C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN 1 
AND (SELECT (CASE WHEN MAX(IDNo) < 5 THEN MAX(IDNo) ELSE MAX(IDNo)/5+1 * 1 END) FROM C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (CASE WHEN MAX(IDNo) < 5 THEN MAX(IDNo) ELSE MAX(IDNO)/5+1 *1 END)+1 FROM C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (SELECT (MAX(IDNo)/5+1 * 2) FROM C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (CASE WHEN MAX(IDNo) < 5 THEN MAX(IDNo) ELSE MAX(IDNO)/5+1 *2 END)+1 FROM C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (select (MAX(IDNO)/5+1 *3)  FROM C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (CASE WHEN MAX(IDNo) < 5 THEN MAX(IDNo) ELSE MAX(IDNO)/5+1 *3 END)+1 FROM C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (SELECT (MAX(IDNo)/5+1 * 4) FROM C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base])

SELECT * from C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base]
WHERE IDNo BETWEEN (SELECT (CASE WHEN MAX(IDNo) < 5 THEN MAX(IDNo) ELSE MAX(IDNO)/5+1 *4 END)+1 FROM C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base])
AND (SELECT (MAX(IDNo)/5+1 * 5) FROM C10965546.[nanaco_ci_mailmag_jisseki_URLID_MM_base])



■クリックインセンティブ出力SQLバックアップ 2019/7/15■■■■■
■OLD → ISUNIQUEを見るとメールの中で1個しか取得できない メール×URL単位で１個取りたい
SELECT 
	RIGHT(C.URL, 4) AS URLID,
	N.NANACO_CARD_ID AS NANACO_CARD_ID,
	N.NANACO_MAG_MEMBER_ID AS NANACO_MAG_MEMBER_ID,
	FORMAT(DATEADD(HH, 15, (C.EventDate)), 'yyyy/MM/dd HH:mm:ss') AS Click_Day
FROM 
	_Click C WITH (NOLOCK)
	INNER JOIN
	Ent.nanaco_All_List N WITH (NOLOCK)
	ON N.NANACO_MAG_MEMBER_ID = C.SubscriberKey
WHERE 
	URL LIKE '%camci=____'
	AND
    (DATEADD(HH, 15, (C.EventDate))
	BETWEEN 
	CONVERT(DATE, DATEADD(HH, -25, DATEADD(HH, 15, SYSDATETIME())), 101)
	AND
	CONVERT(DATE, DATEADD(HH, -1, DATEADD(HH, 15, SYSDATETIME())), 101))
    AND
    (N.NANACO_CARD_ID IS NOT NULL OR N.NANACO_CARD_ID <> '')
    AND
    IsUnique=1

■NEW
SELECT 
	RIGHT(C.URL, 4) AS URLID,
	N.NANACO_CARD_ID AS NANACO_CARD_ID,
	N.NANACO_MAG_MEMBER_ID AS NANACO_MAG_MEMBER_ID,
	FORMAT(DATEADD(HH, 15, (C.EventDate)), 'yyyy/MM/dd HH:mm:ss') AS Click_Day
FROM 
    (
    /* Clickはメール×URL単位で初回の1回のみを取得 */
     select click.* from (
      select * ,
       ROW_NUMBER() OVER(PARTITION BY
                    JobId, ListId, BatchId, SubscriberID, URL
                ORDER BY
                    EventDate ASC
                ) AS 'rownum'
      from _Click WITH (NOLOCK)
      where URL LIKE '%camci=____'
     ) click 
     where click.rownum=1
    ) C
	INNER JOIN
	Ent.nanaco_All_List N WITH (NOLOCK)
	ON N.NANACO_MAG_MEMBER_ID = C.SubscriberKey
WHERE 
    (DATEADD(HH, 15, (C.EventDate))
	BETWEEN 
	CONVERT(DATE, DATEADD(HH, -25, DATEADD(HH, 15, SYSDATETIME())), 101)
	AND
	CONVERT(DATE, DATEADD(HH, -1, DATEADD(HH, 15, SYSDATETIME())), 101))
	AND
    (N.NANACO_CARD_ID IS NOT NULL OR N.NANACO_CARD_ID <> '')






 Herokuより連携されたSEJ/nanacoメルマガ会員（無効会員を含む）をSMCへ取り込み。
 SMCにて取り込まれたデータをメルマガ会員として有効なデータを抽出する。




 




SELECT
A.*,
RIGHT(A.NANACO_MAG_MAIL_ADDRESS, LEN(A.NANACO_MAG_MAIL_ADDRESS) - CHARINDEX('@', A.NANACO_MAG_MAIL_ADDRESS)) Domain
FROM
ent.[nanaco_All_List_base] A WITH(nolock)
WHERE
A.NANACO_MAG_BOUNCE_FLG = 0
AND
/*
A.NANACO_MAG_STOP_FLG IS NULL
*/
ISNULL(A.NANACO_MAG_STOP_FLG, 0) = 0
AND
ISNULL(A.NANACO_MAG_THANKML_SEND_KBN, 2) = 2
AND
LEN(A.NANACO_MAG_MAIL_ADDRESS) > 0
AND
ISNULL(A.NANACO_MAG_UNSUBSCRIBE_FLG, 0) = 0



select *
, ROW_NUMBER() OVER(ORDER BY NANACO_MAG_MEMBER_ID ASC) AS No
from nanaco_All_List_Base
where ISNULL(NANACO_MAG_STOP_FLG, '0') = '0'
and NANACO_MAG_MAIL_KBN = '40'  
and NANACO_MAG_BOUNCE_FLG = '0'
and ISNULL(NANACO_MAG_UNSUBSCRIBE_FLG, '0') = '0'



Q1190回答






NANACO_MAG_MAIL_KBN 10

nanaco_pc_mailmag_all_1 10
nanaco_keitai_mailmag_all_1 30
nanaco_sp_mailmag_all_1 40

select * from nanaco_All_List_Send with(nolock)
where NANACO_MAG_MAIL_KBN='10'


■■■ドリームユーザの権限設定■■■

■拒否
メール-購読者-データエクステンション-エクスポート
メール-購読者-データエクステンション-デスクトップにエクスポート

メール-購読者-すべての購読者
メール-共有フォルダー

メール-トラッキング-更新
メール-トラッキング-削除
メール-トラッキング-メール送信の比較
メール-トラッキング-高度なトラッキング
メール-トラッキング-購読者の詳細の表示
メール-トラッキング-購読者のエクスポート

Contact Builder

■許可
メール-トラッキング-表示
メール - 管理者 - 送信管理 - 送信者プロファイル - 表示
メール - 管理者 - 送信管理 - 配信プロファイル - 表示
メール - 管理者 - 送信管理 - 送信分類 - 表示
メール - 管理者 - 送信管理 - 送信分類 - 更新


■■■7カードの権限設定■■■

■許可
メール-コンテンツ-メール-表示
メール-コンテンツ-メール-プレビュー
メール-トラッキング-表示


先週 金曜日（7/26）に送付いただいたドリーム櫻井様指摘事項についてアップデートです。
①Allのリストが件数が、PC,SP,携帯をすべて足したものと一致しない件は7NM様に対応頂き合うようになりました。
②テストメールが送信できない件：金曜に櫻井様に確認いただきましたが、他のドリーム様ユーザにも適用済みです。
④概要からのプレビューではなく、コンテンツからメールを選択して、プレビューして頂ますようお願いいたします。
⑤PC,SP,携帯、それぞれのDEからでもフィルタが可能になるように対応済みです。


■7nm運用ユーザ
7nm_admin/admin3298!






Select P.PermissionID, P.Name+' '+PS.Name as Permission
from dbo.PermissionSet as PS with (nolock)
join dbo.PermissionSetPermission as PSP with (nolock) 
  on PSP.PermissionSetID = PS.PermissionSetID
join dbo.Permission as P with (nolock) 
  on P.PermissionID = PSP.PermissionID




NRI側で用意するSFTPサーバですが、本番環境は以下となります。
・接続先ドメイン：ifitv.sej.co.jp
・ポート番号：10022
・接続先ユーザ：sfdc

左記内容で了解いたしました。
またキー情報、フォルダ構成(以下)は開発環境と同様との認識でいます。
--
ドメイン/toNRI/sej/daily/
ドメイン/toNRI/sej/monthly/
ドメイン/toNRI/nanaco/daily/
ドメイン/toNRI/nanaco/monthly/
ドメイン/toNRI/nanaco/daily_ci/


実施日：8/26週


■粟飯原さんFB 8/2
・ステコミ日程 火曜18時

・セキュリティ 
セキュリティレベル向上しないとリリースしない
セキュリティ診断をもう一回やる → リリースの最低条件
診断会社 NRIセキュア？
品質について 100%以上


別途セキュリティ診断が必要となる
→スケジュールが送れる見込み

不具合改修 〜8/21
→それ以降にセキュリティ診断



森田さんユーザ
→そもそも見れない
→SEJが不要





佐藤崇 <takasato@7andinm.co.jp>
Takuya Nakatani <t-nakatani@nri.co.jp>,
Kumi Maekawa <maekawa@nri-net.com>,
ＮＲＩ喜多 <kita@nri-net.com>,
山﨑要 <kayamaza@7andinm.co.jp>,
出田ユカリ <yukideta@7andinm.co.jp>,
越野倹助 <kenkoshi@7andinm.co.jp>,
木下 幸夫 <yukio.kinoshita@salesforce.com>,
中井 勇二郎 <nakai-yuujirou@sej.7andi.co.jp>,
佐竹 芳幸 <satake-yoshiyuki@sej.7andi.co.jp>,
曽和 亮介 <sowa-ryousuke@sej.7andi.co.jp>


■2019/8/6 すてこみ ＠四ツ谷
SEJシステムからの方針

①セキュリティ診断を再度受ける
②品質について１２０％
を担保の上、りりーす

NRIセキュアにセキュリティ診断の要請中

キャンペーン、メルマガ追加テストを実施
事業会社参加の運用テストでの運用再確認

9/3 メルマガリリース審査会
9/20 メルマgリリース

10/11 キャンペーンリリース審査会
10/22 キャンペーンリリース

セキュリティ診断と品質向上
サイクル５を実施

障害改修後、総合テストを実施
セキュリティ診断は全部改修後

残課題９月上旬

総合テスト残４件＋要件変更１件
→改修スケジュール

セキュリティ診断について
→Saas基盤

なにか必要／不要

セキュリティ項目

-------------------------------------------




SELECT 
    /* RIGHT(URL, 4) AS URLID,*/
    substring( URL,charindex( 'camci=',URL,0 )+6, 4 ) AS URLID,
    URL,
    SubscriberKey,
    replace(convert(nvarchar, dateadd(HH,15,EventDate), 111),'/0','/') AS EventDate
FROM _click
WHERE datediff(day,dateadd(hh,15,EventDate), dateadd(HH, 15, getdate())) < 60
AND URL LIKE '%camci=____%'
GROUP BY
    substring( URL,charindex( 'camci=',URL,0 )+6, 4 ),
    URL,
    SubscriberKey,
    dateadd(HH,15,EventDate) 


SELECT 
	/*RIGHT(C.URL, 4) AS URLID,*/
	substring( C.URL,charindex( 'camci=',C.URL,0 )+6, 4 ) AS URLID,
	N.NANACO_CARD_ID AS NANACO_CARD_ID,
	N.NANACO_MAG_MEMBER_ID AS NANACO_MAG_MEMBER_ID,
	FORMAT(DATEADD(HH, 15, (C.EventDate)), 'yyyy/MM/dd HH:mm:ss') AS Click_Day
FROM 
    (
     select click.* from (
      select * ,
       ROW_NUMBER() OVER(PARTITION BY
                    JobId, ListId, BatchId, SubscriberID, URL
                ORDER BY
                    EventDate ASC
                ) AS 'rownum'
      from _Click WITH (NOLOCK)
      where URL LIKE '%camci=____%'
     ) click 
     where click.rownum=1     /* Clickはメール×URL単位で初回の1回のみを取得 */
    ) C
	INNER JOIN
	Ent.nanaco_All_List N WITH (NOLOCK)
	ON N.NANACO_MAG_MEMBER_ID = C.SubscriberKey
WHERE 
    (DATEADD(HH, 15, (C.EventDate))
	BETWEEN 
	CONVERT(DATE, DATEADD(HH, -25, DATEADD(HH, 15, SYSDATETIME())), 101)
	AND
	CONVERT(DATE, DATEADD(HH, -1, DATEADD(HH, 15, SYSDATETIME())), 101))
	AND
    (N.NANACO_CARD_ID IS NOT NULL OR N.NANACO_CARD_ID <> '')



SELECT 
    C.URLID,
    count(C.SUBSCRIBERKEY) AS クリック回数,
    A.NANACO_MAG_MAIL_ADDRESS as メールアドレス,
    CASE GENDER_KBN
        WHEN '0' THEN '0未選択'
        WHEN '1' THEN '1男'
        WHEN '2' THEN '2女'
        WHEN '9' THEN '9回答したくない'
    ELSE NULL
    END AS 性別,
    CASE 
        WHEN ((CONVERT(INT,CONVERT(VARCHAR(8),GETDATE(),112)) - A.BIRTH_DATE) / 10000)  < 20 THEN '19才以下'
        WHEN ((CONVERT(INT,CONVERT(VARCHAR(8),GETDATE(),112)) - A.BIRTH_DATE) / 10000)  BETWEEN 20 AND 29 THEN '20代'
        WHEN ((CONVERT(INT,CONVERT(VARCHAR(8),GETDATE(),112)) - A.BIRTH_DATE) / 10000)  BETWEEN 30 AND 39 THEN '30代'
        WHEN ((CONVERT(INT,CONVERT(VARCHAR(8),GETDATE(),112)) - A.BIRTH_DATE) / 10000)  BETWEEN 40 AND 49 THEN '40代'
        WHEN ((CONVERT(INT,CONVERT(VARCHAR(8),GETDATE(),112)) - A.BIRTH_DATE) / 10000)  BETWEEN 50 AND 59 THEN '50代'
        WHEN ((CONVERT(INT,CONVERT(VARCHAR(8),GETDATE(),112)) - A.BIRTH_DATE) / 10000)  BETWEEN 60 AND 69 THEN '60代'
        WHEN ((CONVERT(INT,CONVERT(VARCHAR(8),GETDATE(),112)) - A.BIRTH_DATE) / 10000)  BETWEEN 70 AND 79 THEN '70代'
        WHEN ((CONVERT(INT,CONVERT(VARCHAR(8),GETDATE(),112)) - A.BIRTH_DATE) / 10000)  BETWEEN 80 AND 89 THEN '80代'
        WHEN ((CONVERT(INT,CONVERT(VARCHAR(8),GETDATE(),112)) - A.BIRTH_DATE) / 10000)  BETWEEN 90 AND 99 THEN '90代'
        ELSE NULL
    END AS 年代,
P.PrefCode + P.Name AS 都道府県,
    CASE left(a.NANACO_CARD_ID,5)
        WHEN '76000' THEN 'カード:76000'
        WHEN '76001' THEN 'アプリ:76001'
        WHEN ' ' THEN 'IDなし'
    ELSE 'その他' 
    END AS nanaco会員,
    CASE NANACO_CLICK_PREF_FLG
        WHEN '1' THEN '希望する'
        ELSE '希望しない'
    END AS CI希望有無,
CAST(YEAR(NANACO_CLICK_PREF_REG_DATE) AS VARCHAR(4)) + '年' + CAST(MONTH(NANACO_CLICK_PREF_REG_DATE) AS VARCHAR(2)) + '月' + CAST(DAY(NANACO_CLICK_PREF_REG_DATE) AS VARCHAR(2)) + '日' as CI希望登録日,
CASE ADV_ONLY_ML_PREF_FLG
        WHEN '1' THEN '希望する'
        ELSE '希望しない'
    END AS 広告のみメール受取可否,
NANACO_CAMPAIGN_NO AS キャンペーンNO,    
CASE USE_SERVICE_1_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS 'セブン-イレブン',
CASE USE_SERVICE_2_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS イトーヨーカドー,
CASE USE_SERVICE_3_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS アリオ,
CASE USE_SERVICE_4_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS そごう・西武,
CASE USE_SERVICE_5_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS デニーズ,
CASE USE_SERVICE_6_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS ヨークベニマル,  
CASE USE_SERVICE_7_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS ヨークマート,  
CASE USE_SERVICE_8_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS ザ・ガーデン自由が丘,  
CASE USE_SERVICE_9_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS セブンネットショッピング,  
CASE USE_SERVICE_10_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS オッシュマンズ,  
CASE USE_SERVICE_11_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS アカチャンホンポ,  
CASE USE_SERVICE_12_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS ロフト,  
CASE USE_SERVICE_13_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS タワーレコード,  
CASE USE_SERVICE_14_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS チケットぴあ,      
CASE USE_SERVICE_15_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS セブン銀行,     
CASE USE_SERVICE_16_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS アイワイカード,  
CASE USE_SERVICE_17_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS 利用法人１７,
CASE USE_SERVICE_18_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS 利用法人１８,   
CASE USE_SERVICE_19_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS 利用法人１９, 
CASE USE_SERVICE_20_FLG
        WHEN '1' THEN '利用する'
        ELSE NULL
    END AS 利用法人２０,
DENSE_RANK() OVER(ORDER BY RIGHT(C.URL, 4) asc) AS IDNo                 

FROM
    ent.[nanaco_All_List_base] A 
INNER JOIN
    ent.[Pref] P WITH(NOLOCK)
ON
    A.PREFECTURE_CD = P.PrefCode
INNER JOIN ent.[CI_Click_RowData] C
ON a.NANACO_MAG_MEMBER_ID = C.SUBSCRIBERKEY
GROUP BY 
C.SUBSCRIBERKEY,
C.URLID,
A.NANACO_MAG_MAIL_ADDRESS,
GENDER_KBN,
A.BIRTH_DATE,
P.PrefCode + P.Name,
left(a.NANACO_CARD_ID,5),
NANACO_CLICK_PREF_FLG,
NANACO_CLICK_PREF_REG_DATE,
ADV_ONLY_ML_PREF_FLG,
NANACO_CAMPAIGN_NO,
USE_SERVICE_1_FLG,
USE_SERVICE_2_FLG,
USE_SERVICE_3_FLG,
USE_SERVICE_4_FLG,
USE_SERVICE_5_FLG,
USE_SERVICE_6_FLG,
USE_SERVICE_7_FLG,
USE_SERVICE_8_FLG,
USE_SERVICE_9_FLG,
USE_SERVICE_10_FLG,
USE_SERVICE_11_FLG,
USE_SERVICE_12_FLG,
USE_SERVICE_13_FLG,
USE_SERVICE_14_FLG,
USE_SERVICE_15_FLG,
USE_SERVICE_16_FLG,
USE_SERVICE_17_FLG,
USE_SERVICE_18_FLG,
USE_SERVICE_19_FLG,
USE_SERVICE_20_FLG







Act_SQL_nanaco_All_List_temp_Enc

-----------------------------------------
■2019/8/26 IF疎通 w/NRI
-----------------------------------------
NRI側で用意するSFTPサーバですが、本番環境は以下となります。
 ・接続先ドメイン：ifitv.sej.co.jp
 ・ポート番号：10022
 ・接続先ユーザ：sfdc

ifitv.sej.co.jp
ifitv.sej.co.jp/toNRI/sej/daily/

 NRI本番サーバとの疎通確認について、以下の時間、内容でお願いできますでしょうか?
転送対象ファイル、SFTP向き先変更等の事前準備を開始時刻までにお願いいたします。
・8/26(月)10:00～ SFDC様から下記ファイルをPUTしていただく
/sftpdir/sfdc/toNRI/sej/daily/20190825_sej_pc_mailmag_else_01.csv　　　有件
/sftpdir/sfdc/toNRI/sej/daily/20190825_sej_pc_mailmag_else_02.csv　　　ゼロ件
/sftpdir/sfdc/toNRI/sej/daily/20190825_sej_pc_mailmag_else_03.csv　　　ゼロ件




select * from C10965546.SEJ_All_List_base
where SEJ_KOKYAKU_MAILADDRESS in
('c5cam01test+23@gmail.com'
,'c5cam01test+24@gmail.com'
,'c5cam01test+25@gmail.com'
,'c5cam01test+26@gmail.com'
,'c5cam01test+27@gmail.com'
,'c5cam01test+28@gmail.com'
,'c5cam01test+29@gmail.com'
,'c5cam01test+30@gmail.com'
,'c5cam01test+51@gmail.com'
,'c5cam01test+52@gmail.com'
,'c5cam01test+53@gmail.com'
,'c5cam01test+54@gmail.com'
,'c5cam01test+55@gmail.com')

select * from C10965546.SEJ_All_List_base
where MEMBER_SYS_ID in
('000000000009343536'
,'000000000009343537'
,'000000000009343538'
,'000000000009343539'
,'000000000009343540'
,'000000000009343541'
,'000000000009343542'
,'000000000009343543'
,'000000000009343544'
,'000000000009343545'
,'000000000009343546'
,'000000000009343547'
,'000000000009343548')



select a.MEMBER_SYS_ID 
,a.SEJ_KOKYAKU_MAIL_FUKA_YMDHM
,a.SEJ_REG_CAMPAIGN_NAME
,a.SEJ_KOKYAKU_MAILMAG_TEISI_FLG
,a.SEJ_KOKYAKU_MAIL_TEISI_YMDHM
,a.SEJ_KOKYAKU_MAILMAG_TAIKAI_FLG
,a.SEJ_KOKYAKU_MAIL_TAIKAI_YMDHM
,a.NANACO_CARD_ID
,a.NANACO_TAIKAI_FLG
,a.NANACO_TAIKAI_YMD
,a.NANACO_SANKYU_MAIL_SOUSIN_FLG
,a.SANKYU_MAIL_SOUSIN_YMD
,a.NANACO_NYUKAI_CHANNEL_KBN
,a.NANACO_TORIKOMI_KBN
,b.SEJ_KOKYAKU_MAILADDRESS
FROM C10965546.SEJ_All_List a
inner join C10965546.SEJ_All_List_base b
on a.MEMBER_SYS_ID=b.MEMBER_SYS_ID
where MEMBER_SYS_ID = '000000000009343537'

MEMBER_SYS_ID	SEJ_KOKYAKU_MAILADDRESS			SEJ_KOKYAKU_PC_KEITAI_MAIL_KBN	SEJ_KOKYAKU_CHANNEL_KBN	NANACO_NYUKAI_CHANNEL_KBN	NANACO_TORIKOMI_KBN
000000000009343536	c5cam01test+23@gmail.com						
000000000009343537	c5cam01test+24@gmail.com			30	30		
000000000009343538	c5cam01test+25@gmail.com			40	20		
000000000009343539	c5cam01test+26@gmail.com			30	31		
000000000009343540	c5cam01test+27@gmail.com			30	32		
000000000009343541	c5cam01test+28@gmail.com			30	33		
000000000009343542	c5cam01test+29@gmail.com			30	34		
000000000009343543	c5cam01test+30@gmail.com			30	35		
000000000009343544	c5cam01test+51@gmail.com					10	
000000000009343545	c5cam01test+52@gmail.com					11	
000000000009343546	c5cam01test+53@gmail.com					12	
000000000009343547	c5cam01test+54@gmail.com						1
000000000009343548	c5cam01test+55@gmail.com						2


SMC設定変更のご連絡

SMCの設定変更が必要になり、そのご連絡となります。
7DC様へのご連絡をお願いいたします。

■設定変更の内容
SEJ様で利用しているSMCの環境では以下の２つの機能が有効化されております。
これら２つの機能を同時に利用しようとするとIPアサインなど、配信の負荷分散がうまくされず、
問題が発生することが判明したため、「②送信スロットル機能」を無効化します。

①ドメインストットリング機能
メール受け入れ量を制限している携帯会社などのISPドメインへの送信を、SMCが自動的に制限をかける機能です。
有効化されている環境では、すべての配信に対して有効になります。
こちらは必要不可欠な機能と認識しており、この機能がない場合、ISPの受入制限以上に送信し、
ISP側で受入拒否、バウンス、SMCでリトライが行われ、スパムとして扱われるなど、レピュテーションを著しく低下させます。
・参考
https://help.salesforce.com/articleView?id=000316485&type=1&mode=1
→英語で表示される場合は画面最下部のドロップダウンリストから日本語を選択

②送信スロットル機能
メール送信時に、時間あたりの送信数を制限する機能です。
メール送信の画面の最後で、時間あたりの送信数を入力する箇所があると思いますが、
そこに制限数を入力した場合のみ、その配信に対して有効になります。
＃こちらは以前に7DC松本様より、メルマガのリンク先サイトが大量アクセスに対応していない場合、
＃送信数を制限することがあり、本機能は使いたいを仰っていたと記憶しています。

■影響
設定変更（②送信スロットル機能無効化）後、メール送信時、時間あたり制限数を入力する欄が消え、制限が不可となります。

■運用
送信数を制限したい場合、上記のリンク内にも記載がありますが、配信リストを分割、別々にスケジュールする必要があります。


不明点などございましたら、ご連絡をいただけばと思います。
以上、よろしくお願いいたします。