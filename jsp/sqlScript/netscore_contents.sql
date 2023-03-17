-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: netscore
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `describtion` text,
  `avg_score` decimal(4,2) DEFAULT NULL,
  `img_path` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `run_time_mm` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_idx` (`category_id`),
  KEY `genre_id_idx` (`genre_id`),
  KEY `country_id_idx` (`country_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,'재벌집 막내아들','재벌 총수 일가의 오너리스크를 관리하는 비서가 재벌가의 막내아들로 회귀하여 인생 2회차를 사는 판타지 드라마',0.00,'images/contents_img/Macknae.jfif',2022,2,1,1,60),(2,'빈센조','조직의 배신으로 한국으로 오게 된 이탈리아 마피아 변호사가 베테랑 독종 변호사와 함께 악당의 방식으로 악당을 쓸어버리는 이야기',NULL,'images/contents_img/vincenjo.jpg',2021,2,2,1,60),(3,'사내 맞선','부캐의 정체가 발각되면 본캐는 해고?” 얼굴 천재 능력남 CEO와 정체를 속인 맞선녀 직원의 스릴 가득 ‘퇴사 방지’ 오피스 로맨스',NULL,'images/contents_img/sanae.jpg',2022,2,2,1,60),(4,'나의 해방일지','견딜 수 없이 촌스런 삼남매의 견딜 수 없이 사랑스러운 행복소생기',NULL,'images/contents_img/my.jpg',2022,2,2,1,60),(5,'샌드맨','오랜 세월 감금당한 채 지내온 꿈의 군주 모르페우스. 그가 여러 세계를 가로지르는 새로운 여정을 시작한다. 빼앗긴 것들과 잃어버린 힘을 되찾기 위해.',NULL,'images/contents_img/sand.jpg',2022,2,1,2,60),(6,'영로열스','명문 기숙 학교 힐레르스카에서 새로운 삶을 시작하는 스웨덴의 빌헬름 왕자. 하지만 마음이 시키는 대로 산다는 건 그리 쉬운 일이 아니다. 왕실의 의무를 짊어진 왕자라면 더더욱.',NULL,'images/contents_img/young.jpg',2022,1,1,2,60),(7,'썸바디','소셜 커넥팅 앱 \'썸바디\'를 매개로 살인사건이 벌어지면서 개발자 섬과 그녀 주변의 친구들이 의문의 인물 윤오와 얽히며 벌어지는 이야기를 그린 넷플릭스 시리즈',NULL,'images/contents_img/somebody.jpg',2022,2,1,1,60),(8,'연예인 매니저로 살아남기','대한민국 최고의 스타들과 일하는 ‘프로 매니저’지만, 자기 인생에 있어서는 한낱 ‘아마추어’일 뿐인 사람들. 메쏘드엔터를 배경으로 그들의 일, 사랑, 욕망이 리얼하게 펼쳐진다!',NULL,'images/contents_img/manager.jpg',2022,2,1,1,60),(9,'오징어 게임','456억 원의 상금이 걸린 의문의 서바이벌에 참가한 사람들이 최후의 승자가 되기 위해 목숨을 걸고 극한의 게임에 도전하는 이야기를 담은 넷플릭스 시리즈',NULL,'images/contents_img/game.jpg',2022,2,2,1,60),(10,'외모 지상주의','못생기고 뚱뚱하다고 괴롭힘을 당하며 루저 인생만 살아온 내가 잘생겨졌다는 이유로 인싸가 됐다. 어느 날 자고 일어났더니 갑자기 완벽한 외모와 몸을 지닌 사람이 되어 깨어난다면?',NULL,'images/contents_img/fire.jpg',2022,2,1,1,60),(11,'체인소맨','악마 포치타와 함께 빚쟁이 데빌 헌터로 고용되어 혹사당하는 극빈곤 소년 덴지.시궁창 인생은 잔인한 배신을 계기로 급변한다!! 악마가 깃든 몸으로 악마를 사냥하는 신세대 다크 히어로 액션',NULL,'images/contents_img/chain.jpg',2022,2,1,2,60),(12,'환혼','역사에도 지도에도 존재하지 않은 대호국을 배경으로, 영혼을 바꾸는 \'환혼술\'로 인해 운명이 비틀린 주인공들이 이를 극복하고 성장해가는 판타지 로맨스',NULL,'images/contents_img/han.jpg',2022,2,3,1,60),(13,'퍼스트 러브 하츠코이','청춘, 자유 그리고 사랑에 미쳐 있던 시절. 십 대였고 세상에 못 할 일이 없을 줄만 알았던 그들. 하지만 어른이 되면 될수록 삶은 더 막막해져 갔다. 중요한 조각 하나를 빠뜨린 퍼즐과 같이.',NULL,'images/contents_img/first.jpg',2022,2,3,3,60),(14,'우리들의 블루스','삶의 끝자락, 절정 혹은 시작에 서 있는 모든 사람들의 달고도 쓴 인생을 응원하는 드라마',NULL,'images/contents_img/bluss.jpg',2022,2,3,1,60),(15,'글리치','외계인이 보이는 지효와 외계인을 추적해온 보라가 흔적 없이 사라진 지효 남자친구의 행방을 쫓으며 \'미확인\' 미스터리의 실체에 다가서게 되는 4차원 그 이상의 추적극',NULL,'images/contents_img/glich.jpg',2022,2,1,1,60),(16,'갯마을 차차차','현실주의 치과의사 윤혜진과 만능 백수 홍반장이 짠내 사람내음 가득한 바닷마을 ‘공진’에서 벌이는 티키타카 힐링 로맨스',NULL,'images/contents_img/chachacha.jpg',2022,2,3,1,60),(17,'웬즈데이','똑똑하고 비꼬는 것에 도가 튼 웬즈데이 아담스. 암울함을 풍기는 그녀가 네버모어 아카데미에서 연쇄 살인 사건을 조사하기 시작한다. 새 친구도 사귀고, 앙숙도 만들며.',NULL,'images/contents_img/wednesday_v.jfif',2022,2,2,2,60),(18,'스파이 패밀리','능력자 스파이 <황혼>은, 보다 좋은 세상을 만들기 위해 매일 첩보임무를 하고 있었다.어느 날, 새로운 곤란한 지령이 떨어지는데…임무를 위해, 가짜 가족을 만들어, 새로운 생활이 시작되지만?! 스파이X액션X특수가족 코미디!',NULL,'images/contents_img/spy.jpg',2022,2,1,3,60),(19,'지금 우리학교는','좀비 바이러스가 시작된 학교에 고립되어 구조를 기다리던 학생들이 살아남기 위해 함께 손잡고 사투를 벌이는 이야기를 담은 넷플릭스 시리즈',NULL,'images/contents_img/school.jpg',2022,2,1,1,60),(20,'1899','1899년, 이민자들을 싣고 뉴욕으로 향하던 배가 미스터리한 사건을 마주한다. 급격한 변화 속에서 혼란에 빠진 탑승객들. 그때, 충격적인 수수께끼가 한올 한올 풀어지기 시작한다.',NULL,'images/contents_img/1899.jpg',2022,2,1,2,60),(21,'RRR','위험한 임무에 나선 용맹한 전사. 영국을 위해 일하는 냉혹한 경찰과 맞대결을 펼친다. 독립 이전의 인도를 배경으로 한 대서사극.',NULL,'images/contents_img/RRR.jpg',2022,1,1,2,60),(22,'기예르모 델 토로의 피노키오','많은 이들의 사랑을 받은 목각 인형 피노키오의 마법 같은 모험. 현실의 한계를 뛰어넘어, 새 생명을 불어넣는 강력한 사랑의 힘이 펼쳐진다.',NULL,'images/contents_img/kio.jpg',2022,1,2,2,60),(23,'노엘 다이어리','크리스마스 무렵, 어릴 때 살던 집을 정리하려고 고향에 돌아온 소설가가 생모를 찾고 있는 여자를 만난다. 과연 낡은 일기장이 두 사람의 과거와 마음으로 통하는 문을 열어줄까?',NULL,'images/contents_img/noel.jpg',2022,1,2,2,60),(24,'돈 룩 업','천문학과 대학원생 케이트 디비아스키(제니퍼 로렌스)와 담당 교수 랜들 민디 박사(레오나르도 디카프리오)는 태양계 내의 궤도를 돌고 있는 혜성이 지구와 직접 충돌하는 궤도에 들어섰다는 엄청난 사실을 발견한다. 하지만 지구를 파괴할 에베레스트 크기의 혜성이 다가온다는 불편한 소식에 아무도 신경 쓰지 않는다. 지구를 멸망으로 이끌지도 모르는 소식을 사람들에게 알리기 위해 언론 투어에 나선 두 사람, 혜성 충돌에 무관심한 대통령 올리언(메릴 스트립)과 그녀의 아들이자 비서실장 제이슨(조나 힐)의 집무실을 시작으로 브리(케이트 블란쳇)와 잭(타일러 페리)이 진행하는 인기 프로그램 ‘더 데일리 립’ 출연까지 이어가지만 성과가 없다. 혜성 충돌까지 남은 시간은 단 6개월, 24시간 내내 뉴스와 정보는 쏟아지고 사람들은 소셜미디어에 푹 빠져있는 시대이지만 정작 이 중요한 뉴스는 대중의 주의를 끌지 못한다. 도대체 어떻게 해야 세상 사람들이 하늘을 좀 올려다볼 수 있을까?!',NULL,'images/contents_img/DLU.jpg',2022,1,3,2,60),(25,'버블','하늘에서 거품이 내리며 중력이 망가지고 폐허가 된 도쿄. 이곳에서 특별한 재능을 가진 소년과 신비한 소녀가 운명처럼 만난다.',NULL,'images/contents_img/bubble.jpg',2022,1,1,2,60),(26,'베스트 셀러','?편집자로서 성공하기를 꿈꾸는 루시 스탠브리지(오브리 플라자 역)는 아버지에게 물려받은 뒤 위기에 빠진 출판사를 구해 낼 베스트셀러를 절실하게 찾는다. 예전에 출판사를 궤도에 올려놓았지만 지금은 바깥세상에 잘 나오지 않고 투덜대기 일쑤인 작가 해리스 쇼(마이클 케인 역)가 출판사를 위해 써 주어야 할 책이 남아 있다는 사실을 알게 되자, 루시는 마지막 시도라고 생각하고 해리스를 찾아가 엉망진창인 북투어를 하기에 이른다. 해리스가 북투어 행사에서 술에 취해 난리를 피우는 모습이 널리 알려지면서 책 판매량은 급증한다. 북투어가 무르익으면서 루시와 해리스는 가까워지지만, 해리스는 루시의 삶을 완전히 뒤바꿀 진실을 곧 밝히고 만다.',NULL,'images/contents_img/best.jpg',2022,1,3,2,60),(27,'복사기','대학 신입생 수르는 연극동아리에서 웹디자인을 맡고 있다. 준비한 초연이 성공적으로 마무리되고 파티에 초대된다. 신나는 음악과 즐거운 분위기에 취하지만 어느새 정신을 차려보니 중요한 장학금 심사면접에 늦을 정도로 늦잠을 자버린다. 그녀는 단지 술에 취해 기억을 잃은 것일까, 아니면 누군가가 의도한 함정에 빠진 것일까? 단 한 번의 사건으로 그녀의 인생은 엉망이 된다. 이제부터 그녀는 그녀 스스로와 더불어 주변 사람들과의 관계까지 원점에서부터 의심해봐야 하는 처지가 된다. ',NULL,'images/contents_img/bock.jpg',2022,1,1,2,60),(28,'서부 전선 이상 없다','이 영화는 고발이나 고백이 아니며, 모험은 더더욱 아니다. 죽음에 직면한 이들에게 죽음은 모험이 아니기 때문이다. 이 영화를 통해 죽음으로부터 도망치지 못하고, 전쟁에 희생된 자들의 이야기를 전하려 한다.',NULL,'images/contents_img/seobu.jpg',2022,1,1,2,60),(29,'선과 악의 학교','절친 소피와 아가사는 어느 날 신비한 존재에 의해 마법 학교로 휩쓸려 간다. 이 학교는 미래의 동화 속 영웅과 악당을 키워내는 곳. 운명을 알 길 없는 이곳에서 두 친구의 우정은 계속될 수 있을까.',NULL,'images/contents_img/sun.jpg',2022,1,1,2,60),(30,'스파이더맨:노 웨이 홈','‘미스테리오’의 계략으로 세상에 정체가 탄로난 스파이더맨 ‘피터 파커’는 하루 아침에 평범한 일상을 잃게 된다. 문제를 해결하기 위해 ‘닥터 스트레인지’를 찾아가 도움을 청하지만 뜻하지 않게 멀티버스가 열리면서 각기 다른 차원의 불청객들이 나타난다. ‘닥터 옥토퍼스’를 비롯해 스파이더맨에게 깊은 원한을 가진 숙적들의 강력한 공격에 ‘피터 파커’는 사상 최악의 위기를 맞게 되는데…',NULL,'images/contents_img/spider.jpg',2022,1,1,2,60),(31,'슬럼버랜드','용맹한 고아 소녀가 거대하고 요란한 무법자와 함께 꿈의 세계로 여정을 떠난다. 둘이 함께라면 소원을 이뤄줄 소중한 진주를 찾을 수 있을 거야! ',NULL,'images/contents_img/land.jpg',2022,1,1,2,60),(32,'씨스피라시','그가 사랑하는 바다가 죽어간다. 인간이 그 경이의 세계를 파괴한다. 그리하여 카메라를 들고 바다로 나간 감독. 그가 맞닥뜨린 것은 전 세계에 걸친 부패의 그물이었다.',NULL,'images/contents_img/see.jpg',2022,1,2,2,60),(33,'아웃핏','시카고에 자리잡은 영국인 양복점 명장이 갱스터들과 엮이면서 겪게 되는 위험한 생존 게임을 다룬 영화',NULL,'images/contents_img/outfit.jpg',2022,1,3,2,60),(34,'아이 빌리브 인 산타','5개월간 행복한 데이트를 즐긴 리사와 톰. 그런데 리사가 일 년 중 가장 싫어하는 크리스마스를 톰은 열광적으로 좋아한다는 사실을 알고 그녀는 경악한다. 크리스마스에 대해 다시 생각해봐야 할 때인지도?',NULL,'images/contents_img/santa.jpg',2022,1,3,2,60),(35,'엔터갤럭틱','더 높은 곳으로 올라가고 싶은 아티스트 자바리. 꿈에 그리던 맨해튼 아파트로 이사한 그가 이웃 여자에게 푹 빠져 버린다. 성공과 사랑 사이의 줄다리기가 시작된다.',NULL,'images/contents_img/enter.jpg',2022,1,1,2,60),(36,'조기','긴장이 고조된 1980년대 인도에서 신앙이 서로 다른 세 친구가 뭉친다. 이들은 수백 명의 사람들을 구하기 위해 숭고하면서도 위험한 일에 나서는데. ',NULL,'images/contents_img/jogi.jpg',2022,1,1,2,60),(37,'코다','24/7 함께 시간을 보내며 소리를 들을 수 없는 가족을 세상과 연결하는 코다 \'루비\'는 짝사랑하는 \'마일스\'를 따라간 합창단에서 노래하는 기쁨과 숨겨진 재능을 알게 된다. 합창단 선생님의 도움으로 마일스와의 듀엣 콘서트와 버클리 음대 오디션의 기회까지 얻지만 자신 없이는 어려움을 겪게 될 가족과 노래를 향한 꿈 사이에서 루비는 망설이는데…',NULL,'images/contents_img/koda.jpg',2022,1,3,2,60),(38,'터닝 포인트','만사가 귀찮은 청년. 싸움은 무조건 피하고 볼 정도로 소심하기까지 하다. 그런데 어느 날, 위험한 불량배와 우연히 친구가 되면서 생각지 않은 삶으로 휘말려 들기 시작한다.',NULL,'images/contents_img/Trun.jpg',2022,1,1,2,60),(39,'퍼플 하트','파병이 예정된 해병대원과 위장 결혼을 한 뮤지션 지망생. 가짜였던 둘의 관계는 비극으로 인해 어느새 진심이 되어버린다.',NULL,'images/contents_img/pupple.jpg',2022,1,2,2,60),(40,'폭격','때는 제2차 세계대전. 아이들로 가득한 학교가 실수로 폭격 임무의 표적이 되면서 여러 코펜하겐 주민들의 운명이 충돌하는 내용을 다룬 실제 사건을 기반으로 한 작품',NULL,'images/contents_img/attack.jpg',2022,1,1,2,60),(41,'아는 형님','이성 상실 본능 충실 형님학교에서 벌어지는 세상의 모든 놀이 <아는 형님>',NULL,'images/contents_img/hyungnim.jpg',2015,3,3,1,60),(42,'코미디 빅리그','짜릿한 웃음 어드벤처 코미디빅리그',NULL,'images/contents_img/comedy.jpg',2011,3,3,1,60),(43,'전지적 참견시점','당신의 인생에 참견해드립니다!\" 매니저들의 거침없는 제보로 공개되는 스타들의 리얼 일상! 그리고 시작되는 다양한 \'참견 고수\'들의 시시콜콜한 참견!',NULL,'images/contents_img/junji.png',2018,3,3,1,60),(44,'TV 동물농장','야생의 자연을 누비는, 혹은 우리 곁에서 함께 호흡하며 살아가는 수십만 종의 동물들! 인간과 밀접한 생활을 나누는 이들을 우리는 얼마나 진심으로 이해하고 있는가? 본 기획에서는 인간 중심의 사회에서 벗어나, 인간과 동물 그 진정한 커뮤니케이션을 추구하는 동물 전문 프로그램',NULL,'images/contents_img/tv.jpg',2001,3,3,1,60),(45,'놀라운 토요일','전국 시장 속 핫한 음식을 걸고 노래 가사 받아쓰기 게임을 하는 세대 초월 음악 예능',NULL,'images/contents_img/nollto.jpg',2018,3,3,1,60),(46,'라디오 스타','어디로 튈지 모르는 촌철살인의 입담으로 게스트들을 무장해제 시켜 진짜 이야기를 끄집어내는 독보적 토크쇼',NULL,'images/contents_img/radio.jpg',2007,3,3,1,60),(47,'복면 가왕','나이, 신분, 직종을 숨긴 스타들이 목소리만으로 실력을 뽐내는 음악 버라이어티 프로그램',NULL,'images/contents_img/kingsong.jpg',2015,3,3,1,60),(48,'그것이 알고싶다','사회, 종교, 미제사건 등 다양한 분야를 취재 탐사하는 저널리즘 프로그램',NULL,'images/contents_img/the.jpg',1992,3,3,1,60),(49,'슈퍼맨이 돌아왔다','아이들이 태어나서 처음으로 마주하는 히어로 ‘슈퍼맨’의 육아 도전기',NULL,'images/contents_img/superman.png',2013,3,3,1,60),(50,'편스토랑','연예계 소문난 \'맛.잘.알(맛을 잘 아는)\' 스타들이 혼자 먹기에 아까운 필살의 메뉴를 공개, 이 중 메뉴 평가단의 평가를 통해 승리한 메뉴가 방송 다음 날 실제로 전국의 편의점에서 출시되는 신개념 편의점 신상 서바이벌 프로그램',NULL,'images/contents_img/restaurant.jpg',2019,3,3,1,60),(51,'집사부일체','인생의 가장 빛나는 순간, 숱한 \'물음표\'에 빠진 우리 청춘들! 갈팡질팡 방황하는 이들에게 \'느낌표\'가 될 특별한 하루가 주어진다면?',NULL,'images/contents_img/jibsa.jpg',2017,3,3,1,60),(52,'1박 2일 시즌4','우리가 알고 있는, 우리가 알지 못하는 아름다운 우리나라. 유쾌한 다섯 남자와 함께 1박 2일의 여행을 떠난다!',NULL,'images/contents_img/12.jpg',2019,3,3,1,60),(53,'미운 우리 새끼','미운 우리 새끼>는 엄마가 화자가 되어 아들의 일상을 관찰하고, 육아일기라는 장치를 통해 순간을 기록하는 프로그램',NULL,'images/contents_img/Woori.jpg',2016,3,3,1,60),(54,'런닝맨','기획의도 by 유재석] 버라이어티 예능이 점점 사라지고 있는 요즘 10년 넘게 일요일 저녁을 책임지고 있는 대한민국 대표 버라이어티 중 하나. 이 프로그램은 수많은 스타와 멤버들이 함께 미션을 하는 것이 특징이며 특히 이 프로그램은 예능의 많은 요소 중 오로지 \'웃음\'에 집중한다.',NULL,'images/contents_img/running.jpg',2010,3,3,1,60),(55,'불후의 명곡','여러 가수들이 다양한 장르의 명곡을 재해석해 부르는 프로그램',NULL,'images/contents_img/bestsong.jpg',2012,3,3,1,60),(56,'놀면 뭐하니?','365일 내내 \"놀면 뭐하니? 제발 괴롭혀줘\"라고 말하는, 대한민국 개그맨 유재석을 괴롭히는 무한확장 유니버스(YOONIVERSE) 버라이어티.',NULL,'images/contents_img/Noll.jpg',2019,3,3,1,60),(57,'2TV 생생정보','공영방송 KBS가 저녁 시간대에 생생하게 살아 움직이는 대한민국 구석구석의 현장을 실시간으로 생생하게 전달하는 프로그램',NULL,'images/contents_img/2tv.jpg',2015,3,3,1,60),(58,'나 혼자 산다','독신 남녀와 1인 가정이 늘어나는 세태를 반영해 혼자 사는 유명인들의 일상을 관찰 카메라 형태로 담은 다큐멘터리 형식의 예능 프로그램',NULL,'images/contents_img/alonelive.png',2013,3,3,1,60),(59,'어서와~ 한국은 처음이지?','다양한 나라에서 한국을 찾아온 외국인 친구들의 리얼 \'한국 여행기\' 여행 그대로의 보는 즐거움과 문화적 차이에서 오는 재미까지 동시 선사하는 \'신개념 국내 여행\' 리얼리티',NULL,'images/contents_img/welcome.jpg',2017,3,3,1,60);
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19  2:38:46
