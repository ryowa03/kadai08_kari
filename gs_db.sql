-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 12 月 14 日 17:41
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `career_book`
--

CREATE TABLE `career_book` (
  `id` int(11) NOT NULL,
  `age` varchar(5) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `job` varchar(100) NOT NULL,
  `career` text NOT NULL,
  `coment` text NOT NULL,
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `career_book`
--

INSERT INTO `career_book` (`id`, `age`, `sex`, `name`, `job`, `career`, `coment`, `contact`) VALUES
(1, '30歳', '男性', 'yusuke takase', '照明デザイナー', '大学で照明の世界を知り、アルバイトからスタート。\r\nいわゆる「普通の社会」とは少し異なる照明の世界で\r\n「高瀬だから出せる光がある」と認められたことが嬉しく\r\n本格的に照明の世界にのめり込んでいく。\r\n\r\n新卒から27歳まで約5年間、光株式会社で照明デザイナーとして勤務した後、独立。\r\n現在はフリーランスとして、トロントを拠点に、演劇の舞台照明を担当する。\r\n\r\n代表作：舞台テニスの王子様　舞台シュリケンジャー　他\r\n', '', 'http://localhost/gs_code/php02/date1.php'),
(2, '30歳', '男性', 'yusuke takase', '照明デザイナー', '大学で照明の世界を知り、アルバイトからスタート。\r\nいわゆる「普通の社会」とは少し異なる照明の世界で\r\n「高瀬だから出せる光がある」と認められたことが嬉しく\r\n本格的に照明の世界にのめり込んでいく。\r\n\r\n新卒から27歳まで約5年間、光株式会社で照明デザイナーとして勤務した後、独立。\r\n現在はフリーランスとして、トロントを拠点に、演劇の舞台照明を担当する。\r\n\r\n代表作：舞台テニスの王子様　舞台シュリケンジャー　他\r\n', '', 'http://localhost/gs_code/php02/date2.php'),
(3, '30歳', '男性', 'yusuke takase', '照明デザイナー', '大学で照明の世界を知り、アルバイトからスタート。\r\nいわゆる「普通の社会」とは少し異なる照明の世界で\r\n「高瀬だから出せる光がある」と認められたことが嬉しく\r\n本格的に照明の世界にのめり込んでいく。\r\n\r\n新卒から27歳まで約5年間、光株式会社で照明デザイナーとして勤務した後、独立。\r\n現在はフリーランスとして、トロントを拠点に、演劇の舞台照明を担当する。\r\n\r\n代表作：舞台テニスの王子様　舞台シュリケンジャー　他\r\n', '', 'http://localhost/gs_code/php02/date3.php');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `career_book`
--
ALTER TABLE `career_book`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `career_book`
--
ALTER TABLE `career_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
