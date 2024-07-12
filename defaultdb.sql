SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for AnswerBankings
-- ----------------------------
DROP TABLE IF EXISTS `AnswerBankings`;
CREATE TABLE `AnswerBankings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `idQuestionBanking` int NULL DEFAULT NULL,
  `answer` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `isCorrect` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idQuestionBanking`(`idQuestionBanking` ASC) USING BTREE,
  CONSTRAINT `AnswerBankings_ibfk_1` FOREIGN KEY (`idQuestionBanking`) REFERENCES `QuestionBankings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1242 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of AnswerBankings
-- ----------------------------
INSERT INTO `AnswerBankings` VALUES (632, 160, 'A. Quảng Nam', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (633, 160, 'B. Quảng Ngãi', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (634, 160, 'C. Bình Định', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (635, 160, 'D. Phan Thiết', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (636, 161, 'A. Một', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (637, 161, 'B. Hai', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (638, 161, 'C. Ba', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (639, 161, 'D. Bốn', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (640, 162, 'A. 1917', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (641, 162, 'B. 1918', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (642, 162, 'C. 1919', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (643, 162, 'D. 1920', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (644, 163, 'A. 18/6/1917', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (645, 163, 'B. 18/6/1918', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (646, 163, 'C. 18/6/1919', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (647, 163, 'D. 18/6/1920', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (648, 164, 'A. 1901', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (649, 164, 'B. 1905', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (650, 164, 'C. 1911', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (651, 164, 'D. 1917', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (652, 165, 'A. Khi Bác lên tàu từ bến Nhà Rồng năm 1911', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (653, 165, 'B. Tại Hội nghị Véc xay năm 1919', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (654, 165, 'C. Khi Bác tham gia sáng lập Đảng cộng sản Pháp năm 1920', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (655, 165, 'D. Khi Bác sang hoạt động ở Liên Xô năm 1923.', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (656, 166, 'A. 6/1924. Hương Cảng – Trung Quốc', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (657, 166, 'B. 6/1925. Quảng Châu – Trung Quốc', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (658, 166, 'C. 6/1926. Thượng Hải – Trung Quốc', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (659, 166, 'D. 6/1927. Cao Bằng – Việt Nam', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (660, 167, 'A. Con rồng tre', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (661, 167, 'B. Bản án chế độ thực dân Pháp', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (662, 167, 'C. V.I. Lênin và các dân tộc Phương Đông.', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (663, 167, 'D. Đường cách mệnh', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (664, 168, 'A. 1890 – 1911', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (665, 168, 'B. 1921 – 1930', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (666, 168, 'C. 1930 – 1945', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (667, 168, 'D. 1945 – 1969', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (668, 169, 'A. 1911 – 1920', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (669, 169, 'B. 1921 – 1930', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (670, 169, 'C. 1930 – 1945', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (671, 169, 'D. 1945 – 1969', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (672, 170, 'A. Hòa An – Cao Bằng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (673, 170, 'B. Bình Nguyên – Cao Bằng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (674, 170, 'C. Trà Lĩnh – Cao Bằng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (675, 170, 'D. Hà Quảng – Cao Bằng', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (676, 171, 'A. Quân lệnh số 1 của Uỷ Ban khởi nghĩa toàn quốc', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (677, 171, 'B. Lời kêu gọi tổng khởi nghĩa của Chủ tịch Hồ Chi Minh', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (678, 171, 'C. Chỉ thị toàn quốc kháng chiến của Trung ương Đảng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (679, 171, 'D. Lời kêu gọi toàn quốc kháng chiến của Chủ tịch Hồ Chi Min', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (680, 172, 'A. 19/12/1946', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (681, 172, 'B. 20/12/1946', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (682, 172, 'C. 22/12/1946', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (683, 172, 'D. 27/12/1946', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (684, 173, 'A. Lời kêu gọi của BCH Trung ương Đảng Lao Động ngày 3/9/1969', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (685, 173, 'B. Điếu văn của BCH Trung ương Đảng Lao Động ngày 9/9/1969', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (686, 173, 'C. Bản thông cáo đặc biệt ngày 4/9/1969', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (687, 173, 'D. Xã luận báo Nhân dân ngày 9/9/1969', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (688, 174, 'A. Đạo đức cách mạng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (689, 174, 'B. Sửa đổi lối làm việc', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (690, 174, 'C. Đường cách mệnh', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (691, 174, 'D. Bản Di chúc', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (692, 175, 'A. Tinh thần hiếu học', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (693, 175, 'B. Sự tu dưỡng đạo đức cá nhân', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (694, 175, 'C. Quản lý xã hội bằng đạo đức', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (695, 175, 'D. Tinh thần nhân nghĩa', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (696, 176, 'A. Năm vững lý luận', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (697, 176, 'B. Để sống với nhau có tình, có nghĩa', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (698, 176, 'C. Để chứng tỏ trình độ lý luận', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (699, 176, 'D. Để làm cán bộ', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (700, 177, 'A. Công nhân thế giới', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (701, 177, 'B. Vàng đen trắng đỏ', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (702, 177, 'C. Lao động thế giớ', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (703, 177, 'D. Bốn phương vô sản', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (704, 178, 'A. Kẻ thù ở thuộc địa yếu hơn kẻ thù của giai cấp vô sản ở chính quốc.', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (705, 178, 'B. Lực lượng cách mạng ở thuộc địa đông và mạnh hơn lực lượng cách mạng ở chính quốc.', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (706, 178, 'C. Nộc độc và sức sống của con rắn độc tư bản chủ chủ nghĩa tập trung ở các nước thuộc địa hơn ở chính quốc.', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (707, 178, 'D. Nhân dân ở các nước thuộc địa căm thù chủ nghĩa đế quốc và khát khao được độc lập.', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (708, 179, 'A. Đại đoàn kết dân tộc là vấn đề sách lược.', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (709, 179, 'B. Đại đoàn kết dân tộc là vấn đề chiến lược.', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (710, 179, 'C. Đại đoàn kết dân tộc là phương pháp chính trị.', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (711, 179, 'D. Đại đoàn kết dân tộc là một thủ đọan chính trị', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (712, 180, 'A. Con bạch tuộc', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (713, 180, 'B. Con chim đại bàng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (714, 180, 'C. Con đỉa hai vòi', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (715, 180, 'D. Con chim ưng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (716, 181, 'A. 3/3/1950', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (717, 181, 'B. 3/3/1951', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (718, 181, 'C. 3/3/1955', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (719, 181, 'D. 3/3/1960', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (720, 182, 'A. Võ Nguyên Giáp', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (721, 182, 'B. Phạm Văn Đồng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (722, 182, 'C. Huỳnh Thúc Kháng', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (723, 182, 'D. Bùi Bằng Đoàn', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (724, 183, 'A. Trần Lực', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (725, 183, 'B. Trần Dân Tiên', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (726, 183, 'C. Tân Sinh', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (727, 183, 'D. X.Y.Z', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (728, 184, 'A. Cách mạng dân chủ tư sản', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (729, 184, 'B. Cách mạng vô sản', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (730, 184, 'C. Cách mạng xã hội chủ nghĩa', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (731, 184, 'D. Cách mạng dân tộc dân chủ nhân dân', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (732, 185, 'A. Đảng cộng sản Việt Nam là Đảng của giai cấp công nhân', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (733, 185, 'B. Đảng cộng sản Việt Nam là Đảng của nhân dân lao động', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (734, 185, 'C. Đảng cộng sản Việt Nam là Đảng của giai cấp công nhân, nhân dân lao động và của cả dân tộc', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (735, 185, 'D. Đảng cộng sản Việt Nam là Đảng của toàn dân tộc', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (736, 186, 'A. Dân chúng số nhiều', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (737, 186, 'B. Giai cấp công nhân', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (738, 186, 'C. Giai cấp nông dân', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (739, 186, 'D. Giai cấp công nhân và giai cấp nông dân.', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (740, 187, 'A. Tham nhũng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (741, 187, 'B. Lười biếng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (742, 187, 'C. Tham ô, lãng phí, quan liêu', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (743, 187, 'D. Lãng phí, quan liêu', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (744, 188, 'A. Nhân – Lễ - Nghĩa – Trí – Tín', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (745, 188, 'B. Nhân – Nghĩa – Trí – Dũng – Liêm', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (746, 188, 'C. Nhân – Lễ - Nghĩa – Trí – Dũng', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (747, 188, 'D. Nhân – Lễ – Trí – Tín - Dũn', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (748, 189, 'A. 80', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (749, 189, 'B. 100', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (750, 189, 'C. 153', 1, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (751, 189, 'D. 120', 0, '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `AnswerBankings` VALUES (752, 190, 'A. Phan Châu Trinh', 0, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (753, 190, 'B. Phan Bội Châu', 1, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (754, 190, 'C. Trần Hưng Đạo', 0, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (755, 190, 'D. Nguyễn Trường Tộ', 0, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (756, 191, 'A. 1941', 0, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (757, 191, 'B. 1943', 0, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (758, 191, 'C. 1945', 1, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (759, 191, 'D. 1946', 0, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (760, 192, 'A. Lê Thái Tổ', 1, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (761, 192, 'B. Trần Nhân Tông', 0, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (762, 192, 'C. Quang Trung', 0, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (763, 192, 'D. Lý Thái Tổ', 0, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `AnswerBankings` VALUES (764, 193, 'A. Ronaldo', 0, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (765, 193, 'B. Phan Bội Châu', 1, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (766, 193, 'C. Trần Hưng Đạo', 0, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (767, 193, 'D. Nguyễn Trường Tộ', 0, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (768, 194, 'A. 2002', 0, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (769, 194, 'B. 1943', 0, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (770, 194, 'C. 1945', 1, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (771, 194, 'D. 1946', 0, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (772, 195, 'A. Lê Thái Tổ', 1, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (773, 195, 'B. Trần Nhân Tông', 0, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (774, 195, 'C. Quang Trung', 0, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (775, 195, 'D. Lý Thái Tổ', 0, '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `AnswerBankings` VALUES (776, 196, 'Bruno', 0, '2024-07-04 08:59:53', '2024-07-06 14:56:17');
INSERT INTO `AnswerBankings` VALUES (777, 196, 'Saka', 0, '2024-07-04 08:59:53', '2024-07-06 14:56:17');
INSERT INTO `AnswerBankings` VALUES (778, 196, 'Jackson', 1, '2024-07-04 08:59:53', '2024-07-06 14:56:18');
INSERT INTO `AnswerBankings` VALUES (779, 197, 'Messi', 1, '2024-07-04 08:59:53', '2024-07-06 14:56:19');
INSERT INTO `AnswerBankings` VALUES (780, 197, 'Ronaldo', 0, '2024-07-04 08:59:53', '2024-07-06 14:56:19');
INSERT INTO `AnswerBankings` VALUES (781, 197, 'Doku', 0, '2024-07-04 08:59:53', '2024-07-06 14:56:19');
INSERT INTO `AnswerBankings` VALUES (782, 198, 'A. Quảng Nam', 0, '2024-07-05 14:26:13', '2024-07-06 14:46:55');
INSERT INTO `AnswerBankings` VALUES (783, 198, 'B. Quảng Ngãi', 0, '2024-07-05 14:26:13', '2024-07-06 14:46:55');
INSERT INTO `AnswerBankings` VALUES (784, 198, 'C. Bình Định', 0, '2024-07-05 14:26:13', '2024-07-06 14:46:55');
INSERT INTO `AnswerBankings` VALUES (785, 198, 'D. Phan Thiết', 1, '2024-07-05 14:26:14', '2024-07-06 14:46:56');
INSERT INTO `AnswerBankings` VALUES (786, 199, 'A. Một', 0, '2024-07-05 14:26:14', '2024-07-06 14:46:56');
INSERT INTO `AnswerBankings` VALUES (787, 199, 'B. Hai', 0, '2024-07-05 14:26:15', '2024-07-06 14:46:56');
INSERT INTO `AnswerBankings` VALUES (788, 199, 'C. Ba', 0, '2024-07-05 14:26:15', '2024-07-06 14:46:57');
INSERT INTO `AnswerBankings` VALUES (789, 199, 'D. Bốn', 1, '2024-07-05 14:26:15', '2024-07-06 14:46:57');
INSERT INTO `AnswerBankings` VALUES (790, 200, 'A. Quảng Nam', 0, '2024-07-06 09:53:51', '2024-07-06 09:53:51');
INSERT INTO `AnswerBankings` VALUES (791, 200, 'B. Quảng Ngãi', 0, '2024-07-06 09:53:51', '2024-07-06 09:53:51');
INSERT INTO `AnswerBankings` VALUES (792, 200, 'C. Bình Định', 0, '2024-07-06 09:53:51', '2024-07-06 09:53:51');
INSERT INTO `AnswerBankings` VALUES (793, 200, 'D. Phan Thiết', 1, '2024-07-06 09:53:51', '2024-07-06 09:53:51');
INSERT INTO `AnswerBankings` VALUES (794, 201, 'A. Quảng Nam', 0, '2024-07-06 09:55:06', '2024-07-06 09:55:06');
INSERT INTO `AnswerBankings` VALUES (795, 201, 'B. Quảng Ngãi', 0, '2024-07-06 09:55:06', '2024-07-06 09:55:06');
INSERT INTO `AnswerBankings` VALUES (796, 201, 'C. Bình Định', 0, '2024-07-06 09:55:06', '2024-07-06 09:55:06');
INSERT INTO `AnswerBankings` VALUES (797, 201, 'D. Phan Thiết', 1, '2024-07-06 09:55:06', '2024-07-06 09:55:06');
INSERT INTO `AnswerBankings` VALUES (798, 202, '1', 0, '2024-07-06 10:24:17', '2024-07-06 10:24:17');
INSERT INTO `AnswerBankings` VALUES (799, 202, '2', 0, '2024-07-06 10:24:17', '2024-07-06 10:24:17');
INSERT INTO `AnswerBankings` VALUES (800, 203, 'h', 1, '2024-07-06 10:25:07', '2024-07-06 10:25:07');
INSERT INTO `AnswerBankings` VALUES (801, 203, 'a', 0, '2024-07-06 10:25:07', '2024-07-06 10:25:07');
INSERT INTO `AnswerBankings` VALUES (802, 204, 'i', 1, '2024-07-06 10:25:07', '2024-07-06 10:25:07');
INSERT INTO `AnswerBankings` VALUES (803, 204, 'h', 0, '2024-07-06 10:25:07', '2024-07-06 10:25:07');
INSERT INTO `AnswerBankings` VALUES (804, 205, 'A. Quảng Nam', 1, '2024-07-06 13:07:51', '2024-07-06 13:07:51');
INSERT INTO `AnswerBankings` VALUES (805, 205, 'B. Quảng Ngãi', 0, '2024-07-06 13:07:51', '2024-07-06 13:07:51');
INSERT INTO `AnswerBankings` VALUES (806, 205, 'C. Bình Định', 0, '2024-07-06 13:07:52', '2024-07-06 13:07:52');
INSERT INTO `AnswerBankings` VALUES (807, 205, 'D. Phan Thiết', 0, '2024-07-06 13:07:52', '2024-07-06 13:07:52');
INSERT INTO `AnswerBankings` VALUES (812, 207, 'chó', 0, '2024-07-06 13:11:10', '2024-07-06 14:15:18');
INSERT INTO `AnswerBankings` VALUES (813, 207, 'mèo', 0, '2024-07-06 13:11:11', '2024-07-06 14:15:19');
INSERT INTO `AnswerBankings` VALUES (814, 208, 'dog', 1, '2024-07-06 13:11:12', '2024-07-06 14:15:20');
INSERT INTO `AnswerBankings` VALUES (815, 208, 'cat', 0, '2024-07-06 13:11:12', '2024-07-06 14:15:21');
INSERT INTO `AnswerBankings` VALUES (816, 209, 'bạn', 0, '2024-07-06 13:12:31', '2024-07-06 14:15:22');
INSERT INTO `AnswerBankings` VALUES (817, 209, 'ko phải tôi', 1, '2024-07-06 13:12:32', '2024-07-06 14:15:23');
INSERT INTO `AnswerBankings` VALUES (818, 210, 'chó', 1, '2024-07-06 13:41:27', '2024-07-06 14:00:19');
INSERT INTO `AnswerBankings` VALUES (819, 210, 'mèo', 0, '2024-07-06 13:41:27', '2024-07-06 14:00:19');
INSERT INTO `AnswerBankings` VALUES (820, 211, 'chó', 1, '2024-07-06 13:42:16', '2024-07-06 14:15:27');
INSERT INTO `AnswerBankings` VALUES (821, 211, 'mèo', 0, '2024-07-06 13:42:18', '2024-07-06 14:15:28');
INSERT INTO `AnswerBankings` VALUES (822, 207, 'chó', 1, '2024-07-06 13:48:49', '2024-07-06 14:15:19');
INSERT INTO `AnswerBankings` VALUES (823, 207, 'mèo', 0, '2024-07-06 13:48:50', '2024-07-06 14:15:19');
INSERT INTO `AnswerBankings` VALUES (824, 209, 'bạn', 1, '2024-07-06 13:52:56', '2024-07-06 14:15:23');
INSERT INTO `AnswerBankings` VALUES (825, 209, 'ko phải tôi', 0, '2024-07-06 13:52:57', '2024-07-06 14:15:23');
INSERT INTO `AnswerBankings` VALUES (826, 209, 'bạn', 0, '2024-07-06 13:53:50', '2024-07-06 14:15:24');
INSERT INTO `AnswerBankings` VALUES (827, 209, 'ko phải tôi', 0, '2024-07-06 13:53:51', '2024-07-06 14:15:24');
INSERT INTO `AnswerBankings` VALUES (828, 209, 'bạn', 1, '2024-07-06 13:53:52', '2024-07-06 14:15:25');
INSERT INTO `AnswerBankings` VALUES (829, 209, 'ko phải tôi', 0, '2024-07-06 13:53:52', '2024-07-06 14:15:25');
INSERT INTO `AnswerBankings` VALUES (830, 208, 'dog', 0, '2024-07-06 13:57:37', '2024-07-06 14:15:21');
INSERT INTO `AnswerBankings` VALUES (831, 208, 'cat', 1, '2024-07-06 13:57:38', '2024-07-06 14:15:21');
INSERT INTO `AnswerBankings` VALUES (832, 210, 'chó', 0, '2024-07-06 14:15:26', '2024-07-06 14:15:26');
INSERT INTO `AnswerBankings` VALUES (833, 210, 'mèo', 1, '2024-07-06 14:15:27', '2024-07-06 14:15:27');
INSERT INTO `AnswerBankings` VALUES (834, 212, 'Berlin', 0, '2024-07-09 07:04:15', '2024-07-09 07:52:46');
INSERT INTO `AnswerBankings` VALUES (835, 212, 'Madrid', 1, '2024-07-09 07:04:15', '2024-07-09 07:52:46');
INSERT INTO `AnswerBankings` VALUES (836, 212, 'Paris', 0, '2024-07-09 07:04:15', '2024-07-09 07:52:46');
INSERT INTO `AnswerBankings` VALUES (837, 212, 'Rome', 0, '2024-07-09 07:04:15', '2024-07-09 07:52:46');
INSERT INTO `AnswerBankings` VALUES (838, 213, 'Brazil', 1, '2024-07-09 07:04:16', '2024-07-09 07:52:46');
INSERT INTO `AnswerBankings` VALUES (839, 213, 'Germany', 0, '2024-07-09 07:04:16', '2024-07-09 07:52:46');
INSERT INTO `AnswerBankings` VALUES (840, 213, 'France', 0, '2024-07-09 07:04:16', '2024-07-09 07:52:46');
INSERT INTO `AnswerBankings` VALUES (841, 213, 'Argentina', 0, '2024-07-09 07:04:16', '2024-07-09 07:52:46');
INSERT INTO `AnswerBankings` VALUES (862, 219, 'A. Quảng Nam', 0, '2024-07-09 08:59:28', '2024-07-09 09:00:17');
INSERT INTO `AnswerBankings` VALUES (863, 219, 'B. Quảng Ngãi', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (864, 219, 'C. Bình Định', 1, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (865, 219, 'D. Phan Thiết', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (866, 220, 'A. Một', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (867, 220, 'B. Hai', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (868, 220, 'C. Ba', 1, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (869, 220, 'D. Bốn', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (870, 221, 'A. 1917', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (871, 221, 'B. 1918', 1, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (872, 221, 'C. 1919', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (873, 221, 'D. 1920', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (874, 222, 'A. 18/6/1917', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (875, 222, 'B. 18/6/1918', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (876, 222, 'C. 18/6/1919', 1, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (877, 222, 'D. 18/6/1920', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (878, 223, 'A. 1901', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (879, 223, 'B. 1905', 1, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (880, 223, 'C. 1911', 0, '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `AnswerBankings` VALUES (881, 223, 'D. 1917', 0, '2024-07-09 08:59:30', '2024-07-09 09:00:19');
INSERT INTO `AnswerBankings` VALUES (882, 224, 'A. Quảng Nam', 0, '2024-07-10 16:42:16', '2024-07-10 16:42:16');
INSERT INTO `AnswerBankings` VALUES (883, 224, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:16', '2024-07-10 16:42:16');
INSERT INTO `AnswerBankings` VALUES (884, 224, 'C. Bình Định', 1, '2024-07-10 16:42:17', '2024-07-10 16:42:17');
INSERT INTO `AnswerBankings` VALUES (885, 224, 'D. Phan Thiết', 0, '2024-07-10 16:42:17', '2024-07-10 16:42:17');
INSERT INTO `AnswerBankings` VALUES (886, 225, 'A. Quảng Nam', 0, '2024-07-10 16:42:17', '2024-07-10 16:42:17');
INSERT INTO `AnswerBankings` VALUES (887, 225, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:17', '2024-07-10 16:42:17');
INSERT INTO `AnswerBankings` VALUES (888, 225, 'C. Bình Định', 1, '2024-07-10 16:42:18', '2024-07-10 16:42:18');
INSERT INTO `AnswerBankings` VALUES (889, 225, 'D. Phan Thiết', 0, '2024-07-10 16:42:18', '2024-07-10 16:42:18');
INSERT INTO `AnswerBankings` VALUES (890, 226, 'A. Quảng Nam', 0, '2024-07-10 16:42:18', '2024-07-10 16:42:18');
INSERT INTO `AnswerBankings` VALUES (891, 226, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:18', '2024-07-10 16:42:18');
INSERT INTO `AnswerBankings` VALUES (892, 226, 'C. Bình Định', 1, '2024-07-10 16:42:19', '2024-07-10 16:42:19');
INSERT INTO `AnswerBankings` VALUES (893, 226, 'D. Phan Thiết', 0, '2024-07-10 16:42:19', '2024-07-10 16:42:19');
INSERT INTO `AnswerBankings` VALUES (894, 227, 'A. Quảng Nam', 0, '2024-07-10 16:42:19', '2024-07-10 16:42:19');
INSERT INTO `AnswerBankings` VALUES (895, 227, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:19', '2024-07-10 16:42:19');
INSERT INTO `AnswerBankings` VALUES (896, 227, 'C. Bình Định', 1, '2024-07-10 16:42:20', '2024-07-10 16:42:20');
INSERT INTO `AnswerBankings` VALUES (897, 227, 'D. Phan Thiết', 0, '2024-07-10 16:42:20', '2024-07-10 16:42:20');
INSERT INTO `AnswerBankings` VALUES (898, 228, 'A. Quảng Nam', 0, '2024-07-10 16:42:20', '2024-07-10 16:42:20');
INSERT INTO `AnswerBankings` VALUES (899, 228, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:20', '2024-07-10 16:42:20');
INSERT INTO `AnswerBankings` VALUES (900, 228, 'C. Bình Định', 1, '2024-07-10 16:42:21', '2024-07-10 16:42:21');
INSERT INTO `AnswerBankings` VALUES (901, 228, 'D. Phan Thiết', 0, '2024-07-10 16:42:21', '2024-07-10 16:42:21');
INSERT INTO `AnswerBankings` VALUES (902, 229, 'A. Quảng Nam', 0, '2024-07-10 16:42:21', '2024-07-10 16:42:21');
INSERT INTO `AnswerBankings` VALUES (903, 229, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:21', '2024-07-10 16:42:21');
INSERT INTO `AnswerBankings` VALUES (904, 229, 'C. Bình Định', 1, '2024-07-10 16:42:22', '2024-07-10 16:42:22');
INSERT INTO `AnswerBankings` VALUES (905, 229, 'D. Phan Thiết', 0, '2024-07-10 16:42:22', '2024-07-10 16:42:22');
INSERT INTO `AnswerBankings` VALUES (906, 230, 'A. Quảng Nam', 0, '2024-07-10 16:42:22', '2024-07-10 16:42:22');
INSERT INTO `AnswerBankings` VALUES (907, 230, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:22', '2024-07-10 16:42:22');
INSERT INTO `AnswerBankings` VALUES (908, 230, 'C. Bình Định', 1, '2024-07-10 16:42:23', '2024-07-10 16:42:23');
INSERT INTO `AnswerBankings` VALUES (909, 230, 'D. Phan Thiết', 0, '2024-07-10 16:42:23', '2024-07-10 16:42:23');
INSERT INTO `AnswerBankings` VALUES (910, 231, 'A. Quảng Nam', 0, '2024-07-10 16:42:23', '2024-07-10 16:42:23');
INSERT INTO `AnswerBankings` VALUES (911, 231, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:23', '2024-07-10 16:42:23');
INSERT INTO `AnswerBankings` VALUES (912, 231, 'C. Bình Định', 1, '2024-07-10 16:42:24', '2024-07-10 16:42:24');
INSERT INTO `AnswerBankings` VALUES (913, 231, 'D. Phan Thiết', 0, '2024-07-10 16:42:24', '2024-07-10 16:42:24');
INSERT INTO `AnswerBankings` VALUES (914, 232, 'A. Quảng Nam', 0, '2024-07-10 16:42:24', '2024-07-10 16:42:24');
INSERT INTO `AnswerBankings` VALUES (915, 232, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:24', '2024-07-10 16:42:24');
INSERT INTO `AnswerBankings` VALUES (916, 232, 'C. Bình Định', 1, '2024-07-10 16:42:25', '2024-07-10 16:42:25');
INSERT INTO `AnswerBankings` VALUES (917, 232, 'D. Phan Thiết', 0, '2024-07-10 16:42:25', '2024-07-10 16:42:25');
INSERT INTO `AnswerBankings` VALUES (918, 233, 'A. Quảng Nam', 0, '2024-07-10 16:42:25', '2024-07-10 16:42:25');
INSERT INTO `AnswerBankings` VALUES (919, 233, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:25', '2024-07-10 16:42:25');
INSERT INTO `AnswerBankings` VALUES (920, 233, 'C. Bình Định', 1, '2024-07-10 16:42:26', '2024-07-10 16:42:26');
INSERT INTO `AnswerBankings` VALUES (921, 233, 'D. Phan Thiết', 0, '2024-07-10 16:42:26', '2024-07-10 16:42:26');
INSERT INTO `AnswerBankings` VALUES (922, 234, 'A. Quảng Nam', 0, '2024-07-10 16:42:26', '2024-07-10 16:42:26');
INSERT INTO `AnswerBankings` VALUES (923, 234, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:27', '2024-07-10 16:42:27');
INSERT INTO `AnswerBankings` VALUES (924, 234, 'C. Bình Định', 1, '2024-07-10 16:42:27', '2024-07-10 16:42:27');
INSERT INTO `AnswerBankings` VALUES (925, 234, 'D. Phan Thiết', 0, '2024-07-10 16:42:27', '2024-07-10 16:42:27');
INSERT INTO `AnswerBankings` VALUES (926, 235, 'A. Quảng Nam', 0, '2024-07-10 16:42:27', '2024-07-10 16:42:27');
INSERT INTO `AnswerBankings` VALUES (927, 235, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:28', '2024-07-10 16:42:28');
INSERT INTO `AnswerBankings` VALUES (928, 235, 'C. Bình Định', 1, '2024-07-10 16:42:28', '2024-07-10 16:42:28');
INSERT INTO `AnswerBankings` VALUES (929, 235, 'D. Phan Thiết', 0, '2024-07-10 16:42:28', '2024-07-10 16:42:28');
INSERT INTO `AnswerBankings` VALUES (930, 236, 'A. Quảng Nam', 0, '2024-07-10 16:42:28', '2024-07-10 16:42:28');
INSERT INTO `AnswerBankings` VALUES (931, 236, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:29', '2024-07-10 16:42:29');
INSERT INTO `AnswerBankings` VALUES (932, 236, 'C. Bình Định', 1, '2024-07-10 16:42:29', '2024-07-10 16:42:29');
INSERT INTO `AnswerBankings` VALUES (933, 236, 'D. Phan Thiết', 0, '2024-07-10 16:42:29', '2024-07-10 16:42:29');
INSERT INTO `AnswerBankings` VALUES (934, 237, 'A. Quảng Nam', 0, '2024-07-10 16:42:29', '2024-07-10 16:42:29');
INSERT INTO `AnswerBankings` VALUES (935, 237, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:30', '2024-07-10 16:42:30');
INSERT INTO `AnswerBankings` VALUES (936, 237, 'C. Bình Định', 1, '2024-07-10 16:42:30', '2024-07-10 16:42:30');
INSERT INTO `AnswerBankings` VALUES (937, 237, 'D. Phan Thiết', 0, '2024-07-10 16:42:30', '2024-07-10 16:42:30');
INSERT INTO `AnswerBankings` VALUES (938, 238, 'A. Quảng Nam', 0, '2024-07-10 16:42:30', '2024-07-10 16:42:30');
INSERT INTO `AnswerBankings` VALUES (939, 238, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:31', '2024-07-10 16:42:31');
INSERT INTO `AnswerBankings` VALUES (940, 238, 'C. Bình Định', 1, '2024-07-10 16:42:31', '2024-07-10 16:42:31');
INSERT INTO `AnswerBankings` VALUES (941, 238, 'D. Phan Thiết', 0, '2024-07-10 16:42:31', '2024-07-10 16:42:31');
INSERT INTO `AnswerBankings` VALUES (942, 239, 'A. Quảng Nam', 0, '2024-07-10 16:42:31', '2024-07-10 16:42:31');
INSERT INTO `AnswerBankings` VALUES (943, 239, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:32', '2024-07-10 16:42:32');
INSERT INTO `AnswerBankings` VALUES (944, 239, 'C. Bình Định', 1, '2024-07-10 16:42:32', '2024-07-10 16:42:32');
INSERT INTO `AnswerBankings` VALUES (945, 239, 'D. Phan Thiết', 0, '2024-07-10 16:42:32', '2024-07-10 16:42:32');
INSERT INTO `AnswerBankings` VALUES (946, 240, 'A. Quảng Nam', 0, '2024-07-10 16:42:32', '2024-07-10 16:42:32');
INSERT INTO `AnswerBankings` VALUES (947, 240, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:33', '2024-07-10 16:42:33');
INSERT INTO `AnswerBankings` VALUES (948, 240, 'C. Bình Định', 1, '2024-07-10 16:42:33', '2024-07-10 16:42:33');
INSERT INTO `AnswerBankings` VALUES (949, 240, 'D. Phan Thiết', 0, '2024-07-10 16:42:33', '2024-07-10 16:42:33');
INSERT INTO `AnswerBankings` VALUES (950, 241, 'A. Quảng Nam', 0, '2024-07-10 16:42:33', '2024-07-10 16:42:33');
INSERT INTO `AnswerBankings` VALUES (951, 241, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:34', '2024-07-10 16:42:34');
INSERT INTO `AnswerBankings` VALUES (952, 241, 'C. Bình Định', 1, '2024-07-10 16:42:34', '2024-07-10 16:42:34');
INSERT INTO `AnswerBankings` VALUES (953, 241, 'D. Phan Thiết', 0, '2024-07-10 16:42:34', '2024-07-10 16:42:34');
INSERT INTO `AnswerBankings` VALUES (954, 242, 'A. Quảng Nam', 0, '2024-07-10 16:42:34', '2024-07-10 16:42:34');
INSERT INTO `AnswerBankings` VALUES (955, 242, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:35', '2024-07-10 16:42:35');
INSERT INTO `AnswerBankings` VALUES (956, 242, 'C. Bình Định', 1, '2024-07-10 16:42:35', '2024-07-10 16:42:35');
INSERT INTO `AnswerBankings` VALUES (957, 242, 'D. Phan Thiết', 0, '2024-07-10 16:42:35', '2024-07-10 16:42:35');
INSERT INTO `AnswerBankings` VALUES (958, 243, 'A. Quảng Nam', 0, '2024-07-10 16:42:35', '2024-07-10 16:42:35');
INSERT INTO `AnswerBankings` VALUES (959, 243, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:36', '2024-07-10 16:42:36');
INSERT INTO `AnswerBankings` VALUES (960, 243, 'C. Bình Định', 1, '2024-07-10 16:42:36', '2024-07-10 16:42:36');
INSERT INTO `AnswerBankings` VALUES (961, 243, 'D. Phan Thiết', 0, '2024-07-10 16:42:36', '2024-07-10 16:42:36');
INSERT INTO `AnswerBankings` VALUES (962, 244, 'A. Quảng Nam', 0, '2024-07-10 16:42:36', '2024-07-10 16:42:36');
INSERT INTO `AnswerBankings` VALUES (963, 244, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:37', '2024-07-10 16:42:37');
INSERT INTO `AnswerBankings` VALUES (964, 244, 'C. Bình Định', 1, '2024-07-10 16:42:37', '2024-07-10 16:42:37');
INSERT INTO `AnswerBankings` VALUES (965, 244, 'D. Phan Thiết', 0, '2024-07-10 16:42:37', '2024-07-10 16:42:37');
INSERT INTO `AnswerBankings` VALUES (966, 245, 'A. Quảng Nam', 0, '2024-07-10 16:42:37', '2024-07-10 16:42:37');
INSERT INTO `AnswerBankings` VALUES (967, 245, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:38', '2024-07-10 16:42:38');
INSERT INTO `AnswerBankings` VALUES (968, 245, 'C. Bình Định', 1, '2024-07-10 16:42:38', '2024-07-10 16:42:38');
INSERT INTO `AnswerBankings` VALUES (969, 245, 'D. Phan Thiết', 0, '2024-07-10 16:42:38', '2024-07-10 16:42:38');
INSERT INTO `AnswerBankings` VALUES (970, 246, 'A. Quảng Nam', 0, '2024-07-10 16:42:39', '2024-07-10 16:42:39');
INSERT INTO `AnswerBankings` VALUES (971, 246, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:39', '2024-07-10 16:42:39');
INSERT INTO `AnswerBankings` VALUES (972, 246, 'C. Bình Định', 1, '2024-07-10 16:42:39', '2024-07-10 16:42:39');
INSERT INTO `AnswerBankings` VALUES (973, 246, 'D. Phan Thiết', 0, '2024-07-10 16:42:39', '2024-07-10 16:42:39');
INSERT INTO `AnswerBankings` VALUES (974, 247, 'A. Quảng Nam', 0, '2024-07-10 16:42:40', '2024-07-10 16:42:40');
INSERT INTO `AnswerBankings` VALUES (975, 247, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:40', '2024-07-10 16:42:40');
INSERT INTO `AnswerBankings` VALUES (976, 247, 'C. Bình Định', 1, '2024-07-10 16:42:40', '2024-07-10 16:42:40');
INSERT INTO `AnswerBankings` VALUES (977, 247, 'D. Phan Thiết', 0, '2024-07-10 16:42:40', '2024-07-10 16:42:40');
INSERT INTO `AnswerBankings` VALUES (978, 248, 'A. Quảng Nam', 0, '2024-07-10 16:42:41', '2024-07-10 16:42:41');
INSERT INTO `AnswerBankings` VALUES (979, 248, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:41', '2024-07-10 16:42:41');
INSERT INTO `AnswerBankings` VALUES (980, 248, 'C. Bình Định', 1, '2024-07-10 16:42:41', '2024-07-10 16:42:41');
INSERT INTO `AnswerBankings` VALUES (981, 248, 'D. Phan Thiết', 0, '2024-07-10 16:42:41', '2024-07-10 16:42:41');
INSERT INTO `AnswerBankings` VALUES (982, 249, 'A. Quảng Nam', 0, '2024-07-10 16:42:42', '2024-07-10 16:42:42');
INSERT INTO `AnswerBankings` VALUES (983, 249, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:42', '2024-07-10 16:42:42');
INSERT INTO `AnswerBankings` VALUES (984, 249, 'C. Bình Định', 1, '2024-07-10 16:42:42', '2024-07-10 16:42:42');
INSERT INTO `AnswerBankings` VALUES (985, 249, 'D. Phan Thiết', 0, '2024-07-10 16:42:42', '2024-07-10 16:42:42');
INSERT INTO `AnswerBankings` VALUES (986, 250, 'A. Quảng Nam', 0, '2024-07-10 16:42:43', '2024-07-10 16:42:43');
INSERT INTO `AnswerBankings` VALUES (987, 250, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:43', '2024-07-10 16:42:43');
INSERT INTO `AnswerBankings` VALUES (988, 250, 'C. Bình Định', 1, '2024-07-10 16:42:43', '2024-07-10 16:42:43');
INSERT INTO `AnswerBankings` VALUES (989, 250, 'D. Phan Thiết', 0, '2024-07-10 16:42:43', '2024-07-10 16:42:43');
INSERT INTO `AnswerBankings` VALUES (990, 251, 'A. Quảng Nam', 0, '2024-07-10 16:42:44', '2024-07-10 16:42:44');
INSERT INTO `AnswerBankings` VALUES (991, 251, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:44', '2024-07-10 16:42:44');
INSERT INTO `AnswerBankings` VALUES (992, 251, 'C. Bình Định', 1, '2024-07-10 16:42:44', '2024-07-10 16:42:44');
INSERT INTO `AnswerBankings` VALUES (993, 251, 'D. Phan Thiết', 0, '2024-07-10 16:42:44', '2024-07-10 16:42:44');
INSERT INTO `AnswerBankings` VALUES (994, 252, 'A. Quảng Nam', 0, '2024-07-10 16:42:45', '2024-07-10 16:42:45');
INSERT INTO `AnswerBankings` VALUES (995, 252, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:45', '2024-07-10 16:42:45');
INSERT INTO `AnswerBankings` VALUES (996, 252, 'C. Bình Định', 1, '2024-07-10 16:42:45', '2024-07-10 16:42:45');
INSERT INTO `AnswerBankings` VALUES (997, 252, 'D. Phan Thiết', 0, '2024-07-10 16:42:45', '2024-07-10 16:42:45');
INSERT INTO `AnswerBankings` VALUES (998, 253, 'A. Quảng Nam', 0, '2024-07-10 16:42:46', '2024-07-10 16:42:46');
INSERT INTO `AnswerBankings` VALUES (999, 253, 'B. Quảng Ngãi', 0, '2024-07-10 16:42:46', '2024-07-10 16:42:46');
INSERT INTO `AnswerBankings` VALUES (1000, 253, 'C. Bình Định', 1, '2024-07-10 16:42:46', '2024-07-10 16:42:46');
INSERT INTO `AnswerBankings` VALUES (1001, 253, 'D. Phan Thiết', 0, '2024-07-10 16:42:46', '2024-07-10 16:42:46');
INSERT INTO `AnswerBankings` VALUES (1002, 255, 'A. Quảng Nam', 0, '2024-07-10 16:44:53', '2024-07-10 16:44:53');
INSERT INTO `AnswerBankings` VALUES (1003, 255, 'B. Quảng Ngãi', 0, '2024-07-10 16:44:54', '2024-07-10 16:44:54');
INSERT INTO `AnswerBankings` VALUES (1004, 255, 'C. Bình Định', 1, '2024-07-10 16:44:54', '2024-07-10 16:44:54');
INSERT INTO `AnswerBankings` VALUES (1005, 255, 'D. Phan Thiết', 0, '2024-07-10 16:44:54', '2024-07-10 16:44:54');
INSERT INTO `AnswerBankings` VALUES (1006, 256, 'A. Một', 0, '2024-07-10 16:44:54', '2024-07-10 16:44:54');
INSERT INTO `AnswerBankings` VALUES (1007, 256, 'B. Hai', 0, '2024-07-10 16:44:55', '2024-07-10 16:44:55');
INSERT INTO `AnswerBankings` VALUES (1008, 256, 'C. Ba', 1, '2024-07-10 16:44:55', '2024-07-10 16:44:55');
INSERT INTO `AnswerBankings` VALUES (1009, 256, 'D. Bốn', 0, '2024-07-10 16:44:55', '2024-07-10 16:44:55');
INSERT INTO `AnswerBankings` VALUES (1010, 257, 'A. 1917', 0, '2024-07-10 16:44:55', '2024-07-10 16:44:55');
INSERT INTO `AnswerBankings` VALUES (1011, 257, 'B. 1918', 1, '2024-07-10 16:44:56', '2024-07-10 16:44:56');
INSERT INTO `AnswerBankings` VALUES (1012, 257, 'C. 1919', 0, '2024-07-10 16:44:56', '2024-07-10 16:44:56');
INSERT INTO `AnswerBankings` VALUES (1013, 257, 'D. 1920', 0, '2024-07-10 16:44:56', '2024-07-10 16:44:56');
INSERT INTO `AnswerBankings` VALUES (1014, 258, 'A. 18/6/1917', 0, '2024-07-10 16:44:57', '2024-07-10 16:44:57');
INSERT INTO `AnswerBankings` VALUES (1015, 258, 'B. 18/6/1918', 0, '2024-07-10 16:44:57', '2024-07-10 16:44:57');
INSERT INTO `AnswerBankings` VALUES (1016, 258, 'C. 18/6/1919', 1, '2024-07-10 16:44:57', '2024-07-10 16:44:57');
INSERT INTO `AnswerBankings` VALUES (1017, 258, 'D. 18/6/1920', 0, '2024-07-10 16:44:57', '2024-07-10 16:44:57');
INSERT INTO `AnswerBankings` VALUES (1018, 259, 'A. 1901', 1, '2024-07-10 16:44:58', '2024-07-10 16:44:58');
INSERT INTO `AnswerBankings` VALUES (1019, 259, 'B. 1905', 0, '2024-07-10 16:44:58', '2024-07-10 16:44:58');
INSERT INTO `AnswerBankings` VALUES (1020, 259, 'C. 1911', 0, '2024-07-10 16:44:58', '2024-07-10 16:44:58');
INSERT INTO `AnswerBankings` VALUES (1021, 259, 'D. 1917', 0, '2024-07-10 16:44:58', '2024-07-10 16:44:58');
INSERT INTO `AnswerBankings` VALUES (1022, 260, 'A. Khi Bác lên tàu từ bến Nhà Rồng năm 1911', 0, '2024-07-10 16:44:59', '2024-07-10 16:44:59');
INSERT INTO `AnswerBankings` VALUES (1023, 260, 'B. Tại Hội nghị Véc xay năm 1919', 1, '2024-07-10 16:44:59', '2024-07-10 16:44:59');
INSERT INTO `AnswerBankings` VALUES (1024, 260, 'C. Khi Bác tham gia sáng lập Đảng cộng sản Pháp năm 1920', 0, '2024-07-10 16:44:59', '2024-07-10 16:44:59');
INSERT INTO `AnswerBankings` VALUES (1025, 260, 'D. Khi Bác sang hoạt động ở Liên Xô năm 1923.', 0, '2024-07-10 16:44:59', '2024-07-10 16:44:59');
INSERT INTO `AnswerBankings` VALUES (1026, 261, 'A. 6/1924. Hương Cảng – Trung Quốc', 0, '2024-07-10 16:45:00', '2024-07-10 16:45:00');
INSERT INTO `AnswerBankings` VALUES (1027, 261, 'B. 6/1925. Quảng Châu – Trung Quốc', 1, '2024-07-10 16:45:00', '2024-07-10 16:45:00');
INSERT INTO `AnswerBankings` VALUES (1028, 261, 'C. 6/1926. Thượng Hải – Trung Quốc', 0, '2024-07-10 16:45:00', '2024-07-10 16:45:00');
INSERT INTO `AnswerBankings` VALUES (1029, 261, 'D. 6/1927. Cao Bằng – Việt Nam', 0, '2024-07-10 16:45:00', '2024-07-10 16:45:00');
INSERT INTO `AnswerBankings` VALUES (1030, 262, 'A. Con rồng tre', 0, '2024-07-10 16:45:01', '2024-07-10 16:45:01');
INSERT INTO `AnswerBankings` VALUES (1031, 262, 'B. Bản án chế độ thực dân Pháp', 1, '2024-07-10 16:45:01', '2024-07-10 16:45:01');
INSERT INTO `AnswerBankings` VALUES (1032, 262, 'C. V.I. Lênin và các dân tộc Phương Đông.', 0, '2024-07-10 16:45:01', '2024-07-10 16:45:01');
INSERT INTO `AnswerBankings` VALUES (1033, 262, 'D. Đường cách mệnh', 0, '2024-07-10 16:45:02', '2024-07-10 16:45:02');
INSERT INTO `AnswerBankings` VALUES (1034, 263, 'A. 1890 – 1911', 1, '2024-07-10 16:45:02', '2024-07-10 16:45:02');
INSERT INTO `AnswerBankings` VALUES (1035, 263, 'B. 1921 – 1930', 0, '2024-07-10 16:45:02', '2024-07-10 16:45:02');
INSERT INTO `AnswerBankings` VALUES (1036, 263, 'C. 1930 – 1945', 0, '2024-07-10 16:45:02', '2024-07-10 16:45:02');
INSERT INTO `AnswerBankings` VALUES (1037, 263, 'D. 1945 – 1969', 0, '2024-07-10 16:45:03', '2024-07-10 16:45:03');
INSERT INTO `AnswerBankings` VALUES (1038, 264, 'A. 1911 – 1920', 0, '2024-07-10 16:45:03', '2024-07-10 16:45:03');
INSERT INTO `AnswerBankings` VALUES (1039, 264, 'B. 1921 – 1930', 0, '2024-07-10 16:45:03', '2024-07-10 16:45:03');
INSERT INTO `AnswerBankings` VALUES (1040, 264, 'C. 1930 – 1945', 1, '2024-07-10 16:45:04', '2024-07-10 16:45:04');
INSERT INTO `AnswerBankings` VALUES (1041, 264, 'D. 1945 – 1969', 0, '2024-07-10 16:45:04', '2024-07-10 16:45:04');
INSERT INTO `AnswerBankings` VALUES (1042, 265, 'A. Hòa An – Cao Bằng', 0, '2024-07-10 16:45:04', '2024-07-10 16:45:04');
INSERT INTO `AnswerBankings` VALUES (1043, 265, 'B. Bình Nguyên – Cao Bằng', 0, '2024-07-10 16:45:04', '2024-07-10 16:45:04');
INSERT INTO `AnswerBankings` VALUES (1044, 265, 'C. Trà Lĩnh – Cao Bằng', 0, '2024-07-10 16:45:05', '2024-07-10 16:45:05');
INSERT INTO `AnswerBankings` VALUES (1045, 265, 'D. Hà Quảng – Cao Bằng', 1, '2024-07-10 16:45:05', '2024-07-10 16:45:05');
INSERT INTO `AnswerBankings` VALUES (1046, 266, 'A. Quân lệnh số 1 của Uỷ Ban khởi nghĩa toàn quốc', 0, '2024-07-10 16:45:05', '2024-07-10 16:45:05');
INSERT INTO `AnswerBankings` VALUES (1047, 266, 'B. Lời kêu gọi tổng khởi nghĩa của Chủ tịch Hồ Chi Minh', 1, '2024-07-10 16:45:05', '2024-07-10 16:45:05');
INSERT INTO `AnswerBankings` VALUES (1048, 266, 'C. Chỉ thị toàn quốc kháng chiến của Trung ương Đảng', 0, '2024-07-10 16:45:06', '2024-07-10 16:45:06');
INSERT INTO `AnswerBankings` VALUES (1049, 266, 'D. Lời kêu gọi toàn quốc kháng chiến của Chủ tịch Hồ Chi Min', 0, '2024-07-10 16:45:06', '2024-07-10 16:45:06');
INSERT INTO `AnswerBankings` VALUES (1050, 267, 'A. 19/12/1946', 1, '2024-07-10 16:45:06', '2024-07-10 16:45:06');
INSERT INTO `AnswerBankings` VALUES (1051, 267, 'B. 20/12/1946', 0, '2024-07-10 16:45:07', '2024-07-10 16:45:07');
INSERT INTO `AnswerBankings` VALUES (1052, 267, 'C. 22/12/1946', 0, '2024-07-10 16:45:07', '2024-07-10 16:45:07');
INSERT INTO `AnswerBankings` VALUES (1053, 267, 'D. 27/12/1946', 0, '2024-07-10 16:45:07', '2024-07-10 16:45:07');
INSERT INTO `AnswerBankings` VALUES (1054, 268, 'A. Lời kêu gọi của BCH Trung ương Đảng Lao Động ngày 3/9/1969', 0, '2024-07-10 16:45:07', '2024-07-10 16:45:07');
INSERT INTO `AnswerBankings` VALUES (1055, 268, 'B. Điếu văn của BCH Trung ương Đảng Lao Động ngày 9/9/1969', 1, '2024-07-10 16:45:08', '2024-07-10 16:45:08');
INSERT INTO `AnswerBankings` VALUES (1056, 268, 'C. Bản thông cáo đặc biệt ngày 4/9/1969', 0, '2024-07-10 16:45:08', '2024-07-10 16:45:08');
INSERT INTO `AnswerBankings` VALUES (1057, 268, 'D. Xã luận báo Nhân dân ngày 9/9/1969', 0, '2024-07-10 16:45:08', '2024-07-10 16:45:08');
INSERT INTO `AnswerBankings` VALUES (1058, 269, 'A. Đạo đức cách mạng', 0, '2024-07-10 16:45:09', '2024-07-10 16:45:09');
INSERT INTO `AnswerBankings` VALUES (1059, 269, 'B. Sửa đổi lối làm việc', 0, '2024-07-10 16:45:09', '2024-07-10 16:45:09');
INSERT INTO `AnswerBankings` VALUES (1060, 269, 'C. Đường cách mệnh', 0, '2024-07-10 16:45:09', '2024-07-10 16:45:09');
INSERT INTO `AnswerBankings` VALUES (1061, 269, 'D. Bản Di chúc', 1, '2024-07-10 16:45:09', '2024-07-10 16:45:09');
INSERT INTO `AnswerBankings` VALUES (1062, 270, 'A. Tinh thần hiếu học', 0, '2024-07-10 16:45:10', '2024-07-10 16:45:10');
INSERT INTO `AnswerBankings` VALUES (1063, 270, 'B. Sự tu dưỡng đạo đức cá nhân', 1, '2024-07-10 16:45:10', '2024-07-10 16:45:10');
INSERT INTO `AnswerBankings` VALUES (1064, 270, 'C. Quản lý xã hội bằng đạo đức', 0, '2024-07-10 16:45:10', '2024-07-10 16:45:10');
INSERT INTO `AnswerBankings` VALUES (1065, 270, 'D. Tinh thần nhân nghĩa', 0, '2024-07-10 16:45:10', '2024-07-10 16:45:10');
INSERT INTO `AnswerBankings` VALUES (1066, 271, 'A. Năm vững lý luận', 0, '2024-07-10 16:45:11', '2024-07-10 16:45:11');
INSERT INTO `AnswerBankings` VALUES (1067, 271, 'B. Để sống với nhau có tình, có nghĩa', 1, '2024-07-10 16:45:11', '2024-07-10 16:45:11');
INSERT INTO `AnswerBankings` VALUES (1068, 271, 'C. Để chứng tỏ trình độ lý luận', 0, '2024-07-10 16:45:11', '2024-07-10 16:45:11');
INSERT INTO `AnswerBankings` VALUES (1069, 271, 'D. Để làm cán bộ', 0, '2024-07-10 16:45:11', '2024-07-10 16:45:11');
INSERT INTO `AnswerBankings` VALUES (1070, 272, 'A. Công nhân thế giới', 0, '2024-07-10 16:45:12', '2024-07-10 16:45:12');
INSERT INTO `AnswerBankings` VALUES (1071, 272, 'B. Vàng đen trắng đỏ', 0, '2024-07-10 16:45:12', '2024-07-10 16:45:12');
INSERT INTO `AnswerBankings` VALUES (1072, 272, 'C. Lao động thế giớ', 0, '2024-07-10 16:45:12', '2024-07-10 16:45:12');
INSERT INTO `AnswerBankings` VALUES (1073, 272, 'D. Bốn phương vô sản', 1, '2024-07-10 16:45:12', '2024-07-10 16:45:12');
INSERT INTO `AnswerBankings` VALUES (1074, 273, 'A. Kẻ thù ở thuộc địa yếu hơn kẻ thù của giai cấp vô sản ở chính quốc.', 0, '2024-07-10 16:45:13', '2024-07-10 16:45:13');
INSERT INTO `AnswerBankings` VALUES (1075, 273, 'B. Lực lượng cách mạng ở thuộc địa đông và mạnh hơn lực lượng cách mạng ở chính quốc.', 0, '2024-07-10 16:45:13', '2024-07-10 16:45:13');
INSERT INTO `AnswerBankings` VALUES (1076, 273, 'C. Nộc độc và sức sống của con rắn độc tư bản chủ chủ nghĩa tập trung ở các nước thuộc địa hơn ở chính quốc.', 1, '2024-07-10 16:45:13', '2024-07-10 16:45:13');
INSERT INTO `AnswerBankings` VALUES (1077, 273, 'D. Nhân dân ở các nước thuộc địa căm thù chủ nghĩa đế quốc và khát khao được độc lập.', 0, '2024-07-10 16:45:14', '2024-07-10 16:45:14');
INSERT INTO `AnswerBankings` VALUES (1078, 274, 'A. Đại đoàn kết dân tộc là vấn đề sách lược.', 0, '2024-07-10 16:45:14', '2024-07-10 16:45:14');
INSERT INTO `AnswerBankings` VALUES (1079, 274, 'B. Đại đoàn kết dân tộc là vấn đề chiến lược.', 1, '2024-07-10 16:45:14', '2024-07-10 16:45:14');
INSERT INTO `AnswerBankings` VALUES (1080, 274, 'C. Đại đoàn kết dân tộc là phương pháp chính trị.', 0, '2024-07-10 16:45:14', '2024-07-10 16:45:14');
INSERT INTO `AnswerBankings` VALUES (1081, 274, 'D. Đại đoàn kết dân tộc là một thủ đọan chính trị', 0, '2024-07-10 16:45:15', '2024-07-10 16:45:15');
INSERT INTO `AnswerBankings` VALUES (1082, 275, 'A. Con bạch tuộc', 0, '2024-07-10 16:45:15', '2024-07-10 16:45:15');
INSERT INTO `AnswerBankings` VALUES (1083, 275, 'B. Con chim đại bàng', 0, '2024-07-10 16:45:15', '2024-07-10 16:45:15');
INSERT INTO `AnswerBankings` VALUES (1084, 275, 'C. Con đỉa hai vòi', 1, '2024-07-10 16:45:16', '2024-07-10 16:45:16');
INSERT INTO `AnswerBankings` VALUES (1085, 275, 'D. Con chim ưng', 0, '2024-07-10 16:45:16', '2024-07-10 16:45:16');
INSERT INTO `AnswerBankings` VALUES (1086, 276, 'A. 3/3/1950', 0, '2024-07-10 16:45:16', '2024-07-10 16:45:16');
INSERT INTO `AnswerBankings` VALUES (1087, 276, 'B. 3/3/1951', 1, '2024-07-10 16:45:16', '2024-07-10 16:45:16');
INSERT INTO `AnswerBankings` VALUES (1088, 276, 'C. 3/3/1955', 0, '2024-07-10 16:45:17', '2024-07-10 16:45:17');
INSERT INTO `AnswerBankings` VALUES (1089, 276, 'D. 3/3/1960', 0, '2024-07-10 16:45:17', '2024-07-10 16:45:17');
INSERT INTO `AnswerBankings` VALUES (1090, 277, 'A. Võ Nguyên Giáp', 0, '2024-07-10 16:45:17', '2024-07-10 16:45:17');
INSERT INTO `AnswerBankings` VALUES (1091, 277, 'B. Phạm Văn Đồng', 0, '2024-07-10 16:45:17', '2024-07-10 16:45:17');
INSERT INTO `AnswerBankings` VALUES (1092, 277, 'C. Huỳnh Thúc Kháng', 1, '2024-07-10 16:45:18', '2024-07-10 16:45:18');
INSERT INTO `AnswerBankings` VALUES (1093, 277, 'D. Bùi Bằng Đoàn', 0, '2024-07-10 16:45:18', '2024-07-10 16:45:18');
INSERT INTO `AnswerBankings` VALUES (1094, 278, 'A. Trần Lực', 0, '2024-07-10 16:45:18', '2024-07-10 16:45:18');
INSERT INTO `AnswerBankings` VALUES (1095, 278, 'B. Trần Dân Tiên', 0, '2024-07-10 16:45:19', '2024-07-10 16:45:19');
INSERT INTO `AnswerBankings` VALUES (1096, 278, 'C. Tân Sinh', 0, '2024-07-10 16:45:19', '2024-07-10 16:45:19');
INSERT INTO `AnswerBankings` VALUES (1097, 278, 'D. X.Y.Z', 1, '2024-07-10 16:45:19', '2024-07-10 16:45:19');
INSERT INTO `AnswerBankings` VALUES (1098, 279, 'A. Cách mạng dân chủ tư sản', 0, '2024-07-10 16:45:19', '2024-07-10 16:45:19');
INSERT INTO `AnswerBankings` VALUES (1099, 279, 'B. Cách mạng vô sản', 1, '2024-07-10 16:45:20', '2024-07-10 16:45:20');
INSERT INTO `AnswerBankings` VALUES (1100, 279, 'C. Cách mạng xã hội chủ nghĩa', 0, '2024-07-10 16:45:20', '2024-07-10 16:45:20');
INSERT INTO `AnswerBankings` VALUES (1101, 279, 'D. Cách mạng dân tộc dân chủ nhân dân', 0, '2024-07-10 16:45:20', '2024-07-10 16:45:20');
INSERT INTO `AnswerBankings` VALUES (1102, 280, 'A. Đảng cộng sản Việt Nam là Đảng của giai cấp công nhân', 0, '2024-07-10 16:45:21', '2024-07-10 16:45:21');
INSERT INTO `AnswerBankings` VALUES (1103, 280, 'B. Đảng cộng sản Việt Nam là Đảng của nhân dân lao động', 0, '2024-07-10 16:45:21', '2024-07-10 16:45:21');
INSERT INTO `AnswerBankings` VALUES (1104, 280, 'C. Đảng cộng sản Việt Nam là Đảng của giai cấp công nhân, nhân dân lao động và của cả dân tộc', 1, '2024-07-10 16:45:21', '2024-07-10 16:45:21');
INSERT INTO `AnswerBankings` VALUES (1105, 280, 'D. Đảng cộng sản Việt Nam là Đảng của toàn dân tộc', 0, '2024-07-10 16:45:21', '2024-07-10 16:45:21');
INSERT INTO `AnswerBankings` VALUES (1106, 281, 'A. Dân chúng số nhiều', 1, '2024-07-10 16:45:22', '2024-07-10 16:45:22');
INSERT INTO `AnswerBankings` VALUES (1107, 281, 'B. Giai cấp công nhân', 0, '2024-07-10 16:45:22', '2024-07-10 16:45:22');
INSERT INTO `AnswerBankings` VALUES (1108, 281, 'C. Giai cấp nông dân', 0, '2024-07-10 16:45:22', '2024-07-10 16:45:22');
INSERT INTO `AnswerBankings` VALUES (1109, 281, 'D. Giai cấp công nhân và giai cấp nông dân.', 0, '2024-07-10 16:45:22', '2024-07-10 16:45:22');
INSERT INTO `AnswerBankings` VALUES (1110, 282, 'A. Tham nhũng', 0, '2024-07-10 16:45:23', '2024-07-10 16:45:23');
INSERT INTO `AnswerBankings` VALUES (1111, 282, 'B. Lười biếng', 0, '2024-07-10 16:45:23', '2024-07-10 16:45:23');
INSERT INTO `AnswerBankings` VALUES (1112, 282, 'C. Tham ô, lãng phí, quan liêu', 1, '2024-07-10 16:45:23', '2024-07-10 16:45:23');
INSERT INTO `AnswerBankings` VALUES (1113, 282, 'D. Lãng phí, quan liêu', 0, '2024-07-10 16:45:23', '2024-07-10 16:45:23');
INSERT INTO `AnswerBankings` VALUES (1114, 283, 'A. Nhân – Lễ - Nghĩa – Trí – Tín', 0, '2024-07-10 16:45:24', '2024-07-10 16:45:24');
INSERT INTO `AnswerBankings` VALUES (1115, 283, 'B. Nhân – Nghĩa – Trí – Dũng – Liêm', 1, '2024-07-10 16:45:24', '2024-07-10 16:45:24');
INSERT INTO `AnswerBankings` VALUES (1116, 283, 'C. Nhân – Lễ - Nghĩa – Trí – Dũng', 0, '2024-07-10 16:45:24', '2024-07-10 16:45:24');
INSERT INTO `AnswerBankings` VALUES (1117, 283, 'D. Nhân – Lễ – Trí – Tín - Dũn', 0, '2024-07-10 16:45:24', '2024-07-10 16:45:24');
INSERT INTO `AnswerBankings` VALUES (1118, 284, 'A. 80', 0, '2024-07-10 16:45:25', '2024-07-10 16:45:25');
INSERT INTO `AnswerBankings` VALUES (1119, 284, 'B. 100', 0, '2024-07-10 16:45:25', '2024-07-10 16:45:25');
INSERT INTO `AnswerBankings` VALUES (1120, 284, 'C. 153', 1, '2024-07-10 16:45:25', '2024-07-10 16:45:25');
INSERT INTO `AnswerBankings` VALUES (1121, 284, 'D. 120', 0, '2024-07-10 16:45:26', '2024-07-10 16:45:26');
INSERT INTO `AnswerBankings` VALUES (1122, 285, 'A. Quảng Nam', 0, '2024-07-10 16:47:45', '2024-07-10 16:47:45');
INSERT INTO `AnswerBankings` VALUES (1123, 285, 'B. Quảng Ngãi', 0, '2024-07-10 16:47:45', '2024-07-10 16:47:45');
INSERT INTO `AnswerBankings` VALUES (1124, 285, 'C. Bình Định', 1, '2024-07-10 16:47:46', '2024-07-10 16:47:46');
INSERT INTO `AnswerBankings` VALUES (1125, 285, 'D. Phan Thiết', 0, '2024-07-10 16:47:46', '2024-07-10 16:47:46');
INSERT INTO `AnswerBankings` VALUES (1126, 286, 'A. Một', 0, '2024-07-10 16:47:46', '2024-07-10 16:47:46');
INSERT INTO `AnswerBankings` VALUES (1127, 286, 'B. Hai', 0, '2024-07-10 16:47:46', '2024-07-10 16:47:46');
INSERT INTO `AnswerBankings` VALUES (1128, 286, 'C. Ba', 1, '2024-07-10 16:47:47', '2024-07-10 16:47:47');
INSERT INTO `AnswerBankings` VALUES (1129, 286, 'D. Bốn', 0, '2024-07-10 16:47:47', '2024-07-10 16:47:47');
INSERT INTO `AnswerBankings` VALUES (1130, 287, 'A. 1917', 0, '2024-07-10 16:47:47', '2024-07-10 16:47:47');
INSERT INTO `AnswerBankings` VALUES (1131, 287, 'B. 1918', 1, '2024-07-10 16:47:47', '2024-07-10 16:47:47');
INSERT INTO `AnswerBankings` VALUES (1132, 287, 'C. 1919', 0, '2024-07-10 16:47:48', '2024-07-10 16:47:48');
INSERT INTO `AnswerBankings` VALUES (1133, 287, 'D. 1920', 0, '2024-07-10 16:47:48', '2024-07-10 16:47:48');
INSERT INTO `AnswerBankings` VALUES (1134, 288, 'A. 18/6/1917', 0, '2024-07-10 16:47:48', '2024-07-10 16:47:48');
INSERT INTO `AnswerBankings` VALUES (1135, 288, 'B. 18/6/1918', 0, '2024-07-10 16:47:48', '2024-07-10 16:47:48');
INSERT INTO `AnswerBankings` VALUES (1136, 288, 'C. 18/6/1919', 1, '2024-07-10 16:47:49', '2024-07-10 16:47:49');
INSERT INTO `AnswerBankings` VALUES (1137, 288, 'D. 18/6/1920', 0, '2024-07-10 16:47:49', '2024-07-10 16:47:49');
INSERT INTO `AnswerBankings` VALUES (1138, 289, 'A. 1901', 1, '2024-07-10 16:47:49', '2024-07-10 16:47:49');
INSERT INTO `AnswerBankings` VALUES (1139, 289, 'B. 1905', 0, '2024-07-10 16:47:49', '2024-07-10 16:47:49');
INSERT INTO `AnswerBankings` VALUES (1140, 289, 'C. 1911', 0, '2024-07-10 16:47:50', '2024-07-10 16:47:50');
INSERT INTO `AnswerBankings` VALUES (1141, 289, 'D. 1917', 0, '2024-07-10 16:47:50', '2024-07-10 16:47:50');
INSERT INTO `AnswerBankings` VALUES (1142, 290, 'A. Khi Bác lên tàu từ bến Nhà Rồng năm 1911', 0, '2024-07-10 16:47:50', '2024-07-10 16:47:50');
INSERT INTO `AnswerBankings` VALUES (1143, 290, 'B. Tại Hội nghị Véc xay năm 1919', 1, '2024-07-10 16:47:50', '2024-07-10 16:47:50');
INSERT INTO `AnswerBankings` VALUES (1144, 290, 'C. Khi Bác tham gia sáng lập Đảng cộng sản Pháp năm 1920', 0, '2024-07-10 16:47:51', '2024-07-10 16:47:51');
INSERT INTO `AnswerBankings` VALUES (1145, 290, 'D. Khi Bác sang hoạt động ở Liên Xô năm 1923.', 0, '2024-07-10 16:47:51', '2024-07-10 16:47:51');
INSERT INTO `AnswerBankings` VALUES (1146, 291, 'A. 6/1924. Hương Cảng – Trung Quốc', 0, '2024-07-10 16:47:51', '2024-07-10 16:47:51');
INSERT INTO `AnswerBankings` VALUES (1147, 291, 'B. 6/1925. Quảng Châu – Trung Quốc', 1, '2024-07-10 16:47:51', '2024-07-10 16:47:51');
INSERT INTO `AnswerBankings` VALUES (1148, 291, 'C. 6/1926. Thượng Hải – Trung Quốc', 0, '2024-07-10 16:47:52', '2024-07-10 16:47:52');
INSERT INTO `AnswerBankings` VALUES (1149, 291, 'D. 6/1927. Cao Bằng – Việt Nam', 0, '2024-07-10 16:47:52', '2024-07-10 16:47:52');
INSERT INTO `AnswerBankings` VALUES (1150, 292, 'A. Con rồng tre', 0, '2024-07-10 16:47:52', '2024-07-10 16:47:52');
INSERT INTO `AnswerBankings` VALUES (1151, 292, 'B. Bản án chế độ thực dân Pháp', 1, '2024-07-10 16:47:52', '2024-07-10 16:47:52');
INSERT INTO `AnswerBankings` VALUES (1152, 292, 'C. V.I. Lênin và các dân tộc Phương Đông.', 0, '2024-07-10 16:47:53', '2024-07-10 16:47:53');
INSERT INTO `AnswerBankings` VALUES (1153, 292, 'D. Đường cách mệnh', 0, '2024-07-10 16:47:53', '2024-07-10 16:47:53');
INSERT INTO `AnswerBankings` VALUES (1154, 293, 'A. 1890 – 1911', 1, '2024-07-10 16:47:53', '2024-07-10 16:47:53');
INSERT INTO `AnswerBankings` VALUES (1155, 293, 'B. 1921 – 1930', 0, '2024-07-10 16:47:53', '2024-07-10 16:47:53');
INSERT INTO `AnswerBankings` VALUES (1156, 293, 'C. 1930 – 1945', 0, '2024-07-10 16:47:54', '2024-07-10 16:47:54');
INSERT INTO `AnswerBankings` VALUES (1157, 293, 'D. 1945 – 1969', 0, '2024-07-10 16:47:54', '2024-07-10 16:47:54');
INSERT INTO `AnswerBankings` VALUES (1158, 294, 'A. 1911 – 1920', 0, '2024-07-10 16:47:54', '2024-07-10 16:47:54');
INSERT INTO `AnswerBankings` VALUES (1159, 294, 'B. 1921 – 1930', 0, '2024-07-10 16:47:54', '2024-07-10 16:47:54');
INSERT INTO `AnswerBankings` VALUES (1160, 294, 'C. 1930 – 1945', 1, '2024-07-10 16:47:55', '2024-07-10 16:47:55');
INSERT INTO `AnswerBankings` VALUES (1161, 294, 'D. 1945 – 1969', 0, '2024-07-10 16:47:55', '2024-07-10 16:47:55');
INSERT INTO `AnswerBankings` VALUES (1162, 295, 'A. Hòa An – Cao Bằng', 0, '2024-07-10 16:47:55', '2024-07-10 16:47:55');
INSERT INTO `AnswerBankings` VALUES (1163, 295, 'B. Bình Nguyên – Cao Bằng', 0, '2024-07-10 16:47:55', '2024-07-10 16:47:55');
INSERT INTO `AnswerBankings` VALUES (1164, 295, 'C. Trà Lĩnh – Cao Bằng', 0, '2024-07-10 16:47:55', '2024-07-10 16:47:55');
INSERT INTO `AnswerBankings` VALUES (1165, 295, 'D. Hà Quảng – Cao Bằng', 1, '2024-07-10 16:47:56', '2024-07-10 16:47:56');
INSERT INTO `AnswerBankings` VALUES (1166, 296, 'A. Quân lệnh số 1 của Uỷ Ban khởi nghĩa toàn quốc', 0, '2024-07-10 16:47:56', '2024-07-10 16:47:56');
INSERT INTO `AnswerBankings` VALUES (1167, 296, 'B. Lời kêu gọi tổng khởi nghĩa của Chủ tịch Hồ Chi Minh', 1, '2024-07-10 16:47:56', '2024-07-10 16:47:56');
INSERT INTO `AnswerBankings` VALUES (1168, 296, 'C. Chỉ thị toàn quốc kháng chiến của Trung ương Đảng', 0, '2024-07-10 16:47:56', '2024-07-10 16:47:56');
INSERT INTO `AnswerBankings` VALUES (1169, 296, 'D. Lời kêu gọi toàn quốc kháng chiến của Chủ tịch Hồ Chi Min', 0, '2024-07-10 16:47:57', '2024-07-10 16:47:57');
INSERT INTO `AnswerBankings` VALUES (1170, 297, 'A. 19/12/1946', 1, '2024-07-10 16:47:57', '2024-07-10 16:47:57');
INSERT INTO `AnswerBankings` VALUES (1171, 297, 'B. 20/12/1946', 0, '2024-07-10 16:47:57', '2024-07-10 16:47:57');
INSERT INTO `AnswerBankings` VALUES (1172, 297, 'C. 22/12/1946', 0, '2024-07-10 16:47:57', '2024-07-10 16:47:57');
INSERT INTO `AnswerBankings` VALUES (1173, 297, 'D. 27/12/1946', 0, '2024-07-10 16:47:58', '2024-07-10 16:47:58');
INSERT INTO `AnswerBankings` VALUES (1174, 298, 'A. Lời kêu gọi của BCH Trung ương Đảng Lao Động ngày 3/9/1969', 0, '2024-07-10 16:47:58', '2024-07-10 16:47:58');
INSERT INTO `AnswerBankings` VALUES (1175, 298, 'B. Điếu văn của BCH Trung ương Đảng Lao Động ngày 9/9/1969', 1, '2024-07-10 16:47:58', '2024-07-10 16:47:58');
INSERT INTO `AnswerBankings` VALUES (1176, 298, 'C. Bản thông cáo đặc biệt ngày 4/9/1969', 0, '2024-07-10 16:47:58', '2024-07-10 16:47:58');
INSERT INTO `AnswerBankings` VALUES (1177, 298, 'D. Xã luận báo Nhân dân ngày 9/9/1969', 0, '2024-07-10 16:47:59', '2024-07-10 16:47:59');
INSERT INTO `AnswerBankings` VALUES (1178, 299, 'A. Đạo đức cách mạng', 0, '2024-07-10 16:47:59', '2024-07-10 16:47:59');
INSERT INTO `AnswerBankings` VALUES (1179, 299, 'B. Sửa đổi lối làm việc', 0, '2024-07-10 16:47:59', '2024-07-10 16:47:59');
INSERT INTO `AnswerBankings` VALUES (1180, 299, 'C. Đường cách mệnh', 0, '2024-07-10 16:47:59', '2024-07-10 16:47:59');
INSERT INTO `AnswerBankings` VALUES (1181, 299, 'D. Bản Di chúc', 1, '2024-07-10 16:48:00', '2024-07-10 16:48:00');
INSERT INTO `AnswerBankings` VALUES (1182, 300, 'A. Tinh thần hiếu học', 0, '2024-07-10 16:48:00', '2024-07-10 16:48:00');
INSERT INTO `AnswerBankings` VALUES (1183, 300, 'B. Sự tu dưỡng đạo đức cá nhân', 1, '2024-07-10 16:48:00', '2024-07-10 16:48:00');
INSERT INTO `AnswerBankings` VALUES (1184, 300, 'C. Quản lý xã hội bằng đạo đức', 0, '2024-07-10 16:48:00', '2024-07-10 16:48:00');
INSERT INTO `AnswerBankings` VALUES (1185, 300, 'D. Tinh thần nhân nghĩa', 0, '2024-07-10 16:48:01', '2024-07-10 16:48:01');
INSERT INTO `AnswerBankings` VALUES (1186, 301, 'A. Năm vững lý luận', 0, '2024-07-10 16:48:01', '2024-07-10 16:48:01');
INSERT INTO `AnswerBankings` VALUES (1187, 301, 'B. Để sống với nhau có tình, có nghĩa', 1, '2024-07-10 16:48:01', '2024-07-10 16:48:01');
INSERT INTO `AnswerBankings` VALUES (1188, 301, 'C. Để chứng tỏ trình độ lý luận', 0, '2024-07-10 16:48:01', '2024-07-10 16:48:01');
INSERT INTO `AnswerBankings` VALUES (1189, 301, 'D. Để làm cán bộ', 0, '2024-07-10 16:48:02', '2024-07-10 16:48:02');
INSERT INTO `AnswerBankings` VALUES (1190, 302, 'A. Công nhân thế giới', 0, '2024-07-10 16:48:02', '2024-07-10 16:48:02');
INSERT INTO `AnswerBankings` VALUES (1191, 302, 'B. Vàng đen trắng đỏ', 0, '2024-07-10 16:48:02', '2024-07-10 16:48:02');
INSERT INTO `AnswerBankings` VALUES (1192, 302, 'C. Lao động thế giớ', 0, '2024-07-10 16:48:02', '2024-07-10 16:48:02');
INSERT INTO `AnswerBankings` VALUES (1193, 302, 'D. Bốn phương vô sản', 1, '2024-07-10 16:48:03', '2024-07-10 16:48:03');
INSERT INTO `AnswerBankings` VALUES (1194, 303, 'A. Kẻ thù ở thuộc địa yếu hơn kẻ thù của giai cấp vô sản ở chính quốc.', 0, '2024-07-10 16:48:03', '2024-07-10 16:48:03');
INSERT INTO `AnswerBankings` VALUES (1195, 303, 'B. Lực lượng cách mạng ở thuộc địa đông và mạnh hơn lực lượng cách mạng ở chính quốc.', 0, '2024-07-10 16:48:03', '2024-07-10 16:48:03');
INSERT INTO `AnswerBankings` VALUES (1196, 303, 'C. Nộc độc và sức sống của con rắn độc tư bản chủ chủ nghĩa tập trung ở các nước thuộc địa hơn ở chính quốc.', 1, '2024-07-10 16:48:03', '2024-07-10 16:48:03');
INSERT INTO `AnswerBankings` VALUES (1197, 303, 'D. Nhân dân ở các nước thuộc địa căm thù chủ nghĩa đế quốc và khát khao được độc lập.', 0, '2024-07-10 16:48:04', '2024-07-10 16:48:04');
INSERT INTO `AnswerBankings` VALUES (1198, 304, 'A. Đại đoàn kết dân tộc là vấn đề sách lược.', 0, '2024-07-10 16:48:04', '2024-07-10 16:48:04');
INSERT INTO `AnswerBankings` VALUES (1199, 304, 'B. Đại đoàn kết dân tộc là vấn đề chiến lược.', 1, '2024-07-10 16:48:04', '2024-07-10 16:48:04');
INSERT INTO `AnswerBankings` VALUES (1200, 304, 'C. Đại đoàn kết dân tộc là phương pháp chính trị.', 0, '2024-07-10 16:48:04', '2024-07-10 16:48:04');
INSERT INTO `AnswerBankings` VALUES (1201, 304, 'D. Đại đoàn kết dân tộc là một thủ đọan chính trị', 0, '2024-07-10 16:48:05', '2024-07-10 16:48:05');
INSERT INTO `AnswerBankings` VALUES (1202, 305, 'A. Con bạch tuộc', 0, '2024-07-10 16:48:05', '2024-07-10 16:48:05');
INSERT INTO `AnswerBankings` VALUES (1203, 305, 'B. Con chim đại bàng', 0, '2024-07-10 16:48:05', '2024-07-10 16:48:05');
INSERT INTO `AnswerBankings` VALUES (1204, 305, 'C. Con đỉa hai vòi', 1, '2024-07-10 16:48:05', '2024-07-10 16:48:05');
INSERT INTO `AnswerBankings` VALUES (1205, 305, 'D. Con chim ưng', 0, '2024-07-10 16:48:06', '2024-07-10 16:48:06');
INSERT INTO `AnswerBankings` VALUES (1206, 306, 'A. 3/3/1950', 0, '2024-07-10 16:48:06', '2024-07-10 16:48:06');
INSERT INTO `AnswerBankings` VALUES (1207, 306, 'B. 3/3/1951', 1, '2024-07-10 16:48:06', '2024-07-10 16:48:06');
INSERT INTO `AnswerBankings` VALUES (1208, 306, 'C. 3/3/1955', 0, '2024-07-10 16:48:06', '2024-07-10 16:48:06');
INSERT INTO `AnswerBankings` VALUES (1209, 306, 'D. 3/3/1960', 0, '2024-07-10 16:48:06', '2024-07-10 16:48:06');
INSERT INTO `AnswerBankings` VALUES (1210, 307, 'A. Võ Nguyên Giáp', 0, '2024-07-10 16:48:07', '2024-07-10 16:48:07');
INSERT INTO `AnswerBankings` VALUES (1211, 307, 'B. Phạm Văn Đồng', 0, '2024-07-10 16:48:07', '2024-07-10 16:48:07');
INSERT INTO `AnswerBankings` VALUES (1212, 307, 'C. Huỳnh Thúc Kháng', 1, '2024-07-10 16:48:07', '2024-07-10 16:48:07');
INSERT INTO `AnswerBankings` VALUES (1213, 307, 'D. Bùi Bằng Đoàn', 0, '2024-07-10 16:48:07', '2024-07-10 16:48:07');
INSERT INTO `AnswerBankings` VALUES (1214, 308, 'A. Trần Lực', 0, '2024-07-10 16:48:08', '2024-07-10 16:48:08');
INSERT INTO `AnswerBankings` VALUES (1215, 308, 'B. Trần Dân Tiên', 0, '2024-07-10 16:48:08', '2024-07-10 16:48:08');
INSERT INTO `AnswerBankings` VALUES (1216, 308, 'C. Tân Sinh', 0, '2024-07-10 16:48:08', '2024-07-10 16:48:08');
INSERT INTO `AnswerBankings` VALUES (1217, 308, 'D. X.Y.Z', 1, '2024-07-10 16:48:08', '2024-07-10 16:48:08');
INSERT INTO `AnswerBankings` VALUES (1218, 309, 'A. Cách mạng dân chủ tư sản', 0, '2024-07-10 16:48:09', '2024-07-10 16:48:09');
INSERT INTO `AnswerBankings` VALUES (1219, 309, 'B. Cách mạng vô sản', 1, '2024-07-10 16:48:09', '2024-07-10 16:48:09');
INSERT INTO `AnswerBankings` VALUES (1220, 309, 'C. Cách mạng xã hội chủ nghĩa', 0, '2024-07-10 16:48:09', '2024-07-10 16:48:09');
INSERT INTO `AnswerBankings` VALUES (1221, 309, 'D. Cách mạng dân tộc dân chủ nhân dân', 0, '2024-07-10 16:48:09', '2024-07-10 16:48:09');
INSERT INTO `AnswerBankings` VALUES (1222, 310, 'A. Đảng cộng sản Việt Nam là Đảng của giai cấp công nhân', 0, '2024-07-10 16:48:10', '2024-07-10 16:48:10');
INSERT INTO `AnswerBankings` VALUES (1223, 310, 'B. Đảng cộng sản Việt Nam là Đảng của nhân dân lao động', 0, '2024-07-10 16:48:10', '2024-07-10 16:48:10');
INSERT INTO `AnswerBankings` VALUES (1224, 310, 'C. Đảng cộng sản Việt Nam là Đảng của giai cấp công nhân, nhân dân lao động và của cả dân tộc', 1, '2024-07-10 16:48:10', '2024-07-10 16:48:10');
INSERT INTO `AnswerBankings` VALUES (1225, 310, 'D. Đảng cộng sản Việt Nam là Đảng của toàn dân tộc', 0, '2024-07-10 16:48:10', '2024-07-10 16:48:10');
INSERT INTO `AnswerBankings` VALUES (1226, 311, 'A. Dân chúng số nhiều', 1, '2024-07-10 16:48:11', '2024-07-10 16:48:11');
INSERT INTO `AnswerBankings` VALUES (1227, 311, 'B. Giai cấp công nhân', 0, '2024-07-10 16:48:11', '2024-07-10 16:48:11');
INSERT INTO `AnswerBankings` VALUES (1228, 311, 'C. Giai cấp nông dân', 0, '2024-07-10 16:48:11', '2024-07-10 16:48:11');
INSERT INTO `AnswerBankings` VALUES (1229, 311, 'D. Giai cấp công nhân và giai cấp nông dân.', 0, '2024-07-10 16:48:11', '2024-07-10 16:48:11');
INSERT INTO `AnswerBankings` VALUES (1230, 312, 'A. Tham nhũng', 0, '2024-07-10 16:48:12', '2024-07-10 16:48:12');
INSERT INTO `AnswerBankings` VALUES (1231, 312, 'B. Lười biếng', 0, '2024-07-10 16:48:12', '2024-07-10 16:48:12');
INSERT INTO `AnswerBankings` VALUES (1232, 312, 'C. Tham ô, lãng phí, quan liêu', 1, '2024-07-10 16:48:12', '2024-07-10 16:48:12');
INSERT INTO `AnswerBankings` VALUES (1233, 312, 'D. Lãng phí, quan liêu', 0, '2024-07-10 16:48:12', '2024-07-10 16:48:12');
INSERT INTO `AnswerBankings` VALUES (1234, 313, 'A. Nhân – Lễ - Nghĩa – Trí – Tín', 0, '2024-07-10 16:48:13', '2024-07-10 16:48:13');
INSERT INTO `AnswerBankings` VALUES (1235, 313, 'B. Nhân – Nghĩa – Trí – Dũng – Liêm', 1, '2024-07-10 16:48:13', '2024-07-10 16:48:13');
INSERT INTO `AnswerBankings` VALUES (1236, 313, 'C. Nhân – Lễ - Nghĩa – Trí – Dũng', 0, '2024-07-10 16:48:13', '2024-07-10 16:48:13');
INSERT INTO `AnswerBankings` VALUES (1237, 313, 'D. Nhân – Lễ – Trí – Tín - Dũn', 0, '2024-07-10 16:48:13', '2024-07-10 16:48:13');
INSERT INTO `AnswerBankings` VALUES (1238, 314, 'A. 80', 0, '2024-07-10 16:48:14', '2024-07-10 16:48:14');
INSERT INTO `AnswerBankings` VALUES (1239, 314, 'B. 100', 0, '2024-07-10 16:48:14', '2024-07-10 16:48:14');
INSERT INTO `AnswerBankings` VALUES (1240, 314, 'C. 153', 1, '2024-07-10 16:48:14', '2024-07-10 16:48:14');
INSERT INTO `AnswerBankings` VALUES (1241, 314, 'D. 120', 0, '2024-07-10 16:48:14', '2024-07-10 16:48:14');

-- ----------------------------
-- Table structure for Competitions
-- ----------------------------
DROP TABLE IF EXISTS `Competitions`;
CREATE TABLE `Competitions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rules` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `themeColor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '#000000',
  `timeStart` datetime NOT NULL,
  `timeEnd` datetime NOT NULL,
  `infoRequire` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `testDuration` int NULL DEFAULT NULL,
  `testAttempts` int NULL DEFAULT NULL,
  `isMix` enum('question','question-answer') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unitGroupName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Nhóm/Đơn vị mới 2',
  `isPublic` tinyint(1) NULL DEFAULT 0,
  `isDeleted` tinyint(1) NULL DEFAULT 0,
  `creatorId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `bannerUrl` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `creatorId`(`creatorId` ASC) USING BTREE,
  CONSTRAINT `Competitions_ibfk_1` FOREIGN KEY (`creatorId`) REFERENCES `Users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Competitions
-- ----------------------------
INSERT INTO `Competitions` VALUES (1, 'Cuộc thi mới', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-05 17:00:00', '2024-08-04 17:00:00', '[Họ tên thí sinh]', 20, 20, NULL, 'Nhóm/Đơn vị mới 2', 1, 0, 2, '2024-07-04 17:29:56', '2024-07-04 17:52:49', NULL);
INSERT INTO `Competitions` VALUES (2, 'Lịch sử 30/4 ', '10 người chơi chọn 3 người ', NULL, '#000000', '2024-06-06 17:00:00', '2024-07-09 17:00:00', '1,3', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 1, 0, 2, '2024-07-05 08:38:33', '2024-07-05 08:38:33', '/1720168697938-image.jpg');
INSERT INTO `Competitions` VALUES (3, 'Lịch sử 30/4 121', '10 người chơi chọn 3 người 111', NULL, '#8ed934', '2024-06-21 17:00:00', '2024-07-24 17:00:00', '1, 2', 1, 111, NULL, 'Nhóm/Đơn vị mới 2', 1, 0, 1, '2024-07-05 08:43:04', '2024-07-09 17:51:10', '/1720538636246-Screenshot 2024-05-23 141554.png');
INSERT INTO `Competitions` VALUES (5, 'demo submit anh', 'demo submit anh', NULL, '#000000', '2024-07-07 00:00:00', '2024-07-15 00:00:00', '7, 1', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 1, 0, 1, '2024-07-05 13:38:11', '2024-07-10 16:13:04', '/1720548548399-Screenshot 2024-05-02 133549.png');
INSERT INTO `Competitions` VALUES (6, 'Cuộc thi mới 999', 'Thể lệ cuộc thi 999', NULL, '#000000', '2024-07-15 17:00:00', '2024-07-19 17:00:00', '1,3', 500, 5, NULL, 'Nhóm/Đơn vị mới 2', 1, 0, 1, '2024-07-05 13:52:28', '2024-07-05 13:52:55', '/1720187530861-Screenshot 2024-05-23 141554.png');
INSERT INTO `Competitions` VALUES (7, 'Cuộc thi mới mmm', 'Thể lệ cuộc thi  8', NULL, '#000000', '2024-07-13 17:00:00', '2024-07-16 17:00:00', '1,3', 99, 7, NULL, 'Đơn vị mới', 0, 0, 1, '2024-07-05 14:54:08', '2024-07-05 15:19:00', '/1720191224408-oauth-flow.png');
INSERT INTO `Competitions` VALUES (8, 'Cuộc thi mới', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-06 17:00:00', '2024-08-04 17:00:00', '1,2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 2, '2024-07-06 06:02:04', '2024-07-06 06:02:04', NULL);
INSERT INTO `Competitions` VALUES (9, 'Cuộc thi mới', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-06 17:00:00', '2024-08-04 17:00:00', '1,2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 2, '2024-07-06 06:02:34', '2024-07-06 06:02:34', NULL);
INSERT INTO `Competitions` VALUES (10, 'Cuộc thi Số 10 Messi', 'Thể lệ cuộc thi', '', '#000000', '2024-07-06 17:00:00', '2024-08-04 17:00:00', '1, 2', 1, 20, NULL, 'Nhóm/Đơn vị mới 2', 1, 0, 2, '2024-07-06 06:03:56', '2024-07-10 07:31:59', '');
INSERT INTO `Competitions` VALUES (11, 'Thi tốt nghiệp THPT', 'Trắc nghiệm', NULL, '#000000', '2024-07-14 17:00:00', '2024-07-18 17:00:00', '1,2', 1, 10, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-08 04:55:50', '2024-07-08 04:56:50', '/1720414519713-oauth-flow.png');
INSERT INTO `Competitions` VALUES (12, 'Cuộc thi mới THCS', 'Thể lệ cuộc thi THCS', NULL, '#000000', '2024-07-13 17:00:00', '2024-07-15 17:00:00', '1,2', 1, 11, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-08 05:02:44', '2024-07-08 05:03:05', 'public\\1720414946591-cabin-008.jpg');
INSERT INTO `Competitions` VALUES (13, 'test step 2', 'Thể lệ cuộc thi 2', NULL, '#000000', '2024-07-14 17:00:00', '2024-07-16 17:00:00', '1,2', 1, 11, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-08 10:01:48', '2024-07-08 10:02:12', '/1720432890074-image.jpg');
INSERT INTO `Competitions` VALUES (14, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-09 17:00:00', '2024-08-09 17:00:00', '1,2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-08 13:58:38', '2024-07-08 13:58:38', NULL);
INSERT INTO `Competitions` VALUES (15, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-15 14:25:42', '2024-07-22 14:25:42', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-08 14:25:42', '2024-07-08 14:25:42', NULL);
INSERT INTO `Competitions` VALUES (16, 'Cuộc thi mới sau edit', 'Thể lệ cuộc thi edit', NULL, '#000000', '2024-07-20 17:00:00', '2024-07-22 17:00:00', '1,6', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-08 14:26:44', '2024-07-08 14:26:44', '');
INSERT INTO `Competitions` VALUES (17, 'Nhan dep trai', 'trac nghiem', NULL, '#000000', '2024-07-24 17:00:00', '2024-07-25 17:00:00', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-08 15:26:19', '2024-07-08 15:26:19', '');
INSERT INTO `Competitions` VALUES (18, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-15 15:46:16', '2024-07-22 15:46:16', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-08 15:46:16', '2024-07-08 15:46:16', NULL);
INSERT INTO `Competitions` VALUES (19, 'Cuộc thi mới nè 19 nha', 'Thể lệ cuộc thi 19', 'abc', '#8d71e2', '2024-07-22 17:00:00', '2061-09-10 17:00:00', '1, 2', 1, 9, 'question', 'Đơn vị mới', 1, 0, 1, '2024-07-08 15:49:43', '2024-07-09 14:52:51', '/1720536761530-cabin-008.jpg');
INSERT INTO `Competitions` VALUES (20, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 02:42:21', '2024-07-23 02:42:21', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 02:42:23', '2024-07-09 02:42:23', NULL);
INSERT INTO `Competitions` VALUES (21, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 06:49:56', '2024-07-23 06:49:56', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 06:49:56', '2024-07-09 06:49:56', NULL);
INSERT INTO `Competitions` VALUES (22, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 07:00:05', '2024-07-23 07:00:05', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 07:00:05', '2024-07-09 07:00:05', NULL);
INSERT INTO `Competitions` VALUES (23, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 07:11:11', '2024-07-23 07:11:11', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 07:11:11', '2024-07-09 07:11:11', NULL);
INSERT INTO `Competitions` VALUES (24, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 07:31:48', '2024-07-23 07:31:48', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 07:31:48', '2024-07-09 07:31:48', NULL);
INSERT INTO `Competitions` VALUES (25, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 07:57:01', '2024-07-23 07:57:01', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 07:57:02', '2024-07-09 07:57:02', NULL);
INSERT INTO `Competitions` VALUES (26, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 09:45:14', '2024-07-23 09:45:14', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 09:45:14', '2024-07-09 09:45:14', NULL);
INSERT INTO `Competitions` VALUES (27, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 09:56:00', '2024-07-23 09:56:00', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 09:56:00', '2024-07-09 09:56:00', NULL);
INSERT INTO `Competitions` VALUES (28, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 12:36:29', '2024-07-23 12:36:29', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 12:36:29', '2024-07-09 12:36:29', NULL);
INSERT INTO `Competitions` VALUES (30, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:35:34', '2024-07-23 20:35:34', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:35:35', '2024-07-09 13:35:35', NULL);
INSERT INTO `Competitions` VALUES (31, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:41:14', '2024-07-23 20:41:14', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:41:16', '2024-07-09 13:41:16', NULL);
INSERT INTO `Competitions` VALUES (32, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:41:16', '2024-07-23 20:41:16', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:41:18', '2024-07-09 13:41:18', NULL);
INSERT INTO `Competitions` VALUES (33, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:41:17', '2024-07-23 20:41:17', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:41:18', '2024-07-09 13:41:18', NULL);
INSERT INTO `Competitions` VALUES (34, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:41:17', '2024-07-23 20:41:17', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:41:18', '2024-07-09 13:41:18', NULL);
INSERT INTO `Competitions` VALUES (35, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:41:17', '2024-07-23 20:41:17', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:41:19', '2024-07-09 13:41:19', NULL);
INSERT INTO `Competitions` VALUES (36, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:52:49', '2024-07-23 20:52:49', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:52:52', '2024-07-09 13:52:52', NULL);
INSERT INTO `Competitions` VALUES (37, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:52:53', '2024-07-23 20:52:53', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:52:54', '2024-07-09 13:52:54', NULL);
INSERT INTO `Competitions` VALUES (38, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:53:04', '2024-07-23 20:53:04', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:53:05', '2024-07-09 13:53:05', NULL);
INSERT INTO `Competitions` VALUES (39, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:53:03', '2024-07-23 20:53:03', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:53:05', '2024-07-09 13:53:05', NULL);
INSERT INTO `Competitions` VALUES (40, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:53:35', '2024-07-23 20:53:35', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:53:38', '2024-07-09 13:53:38', NULL);
INSERT INTO `Competitions` VALUES (41, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:53:36', '2024-07-23 20:53:36', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:53:38', '2024-07-09 13:53:38', NULL);
INSERT INTO `Competitions` VALUES (42, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 20:53:37', '2024-07-23 20:53:37', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 13:53:38', '2024-07-09 13:53:38', NULL);
INSERT INTO `Competitions` VALUES (43, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 14:21:55', '2024-07-23 14:21:55', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 14:21:55', '2024-07-09 14:21:55', NULL);
INSERT INTO `Competitions` VALUES (44, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 21:22:17', '2024-07-23 21:22:17', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 14:22:18', '2024-07-09 14:22:18', NULL);
INSERT INTO `Competitions` VALUES (45, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 21:25:20', '2024-07-23 21:25:20', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 14:25:23', '2024-07-09 14:25:23', NULL);
INSERT INTO `Competitions` VALUES (46, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 14:29:29', '2024-07-23 14:29:29', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 14:29:29', '2024-07-09 14:29:29', NULL);
INSERT INTO `Competitions` VALUES (47, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 17:56:42', '2024-07-23 17:56:42', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 17:56:42', '2024-07-09 17:56:42', NULL);
INSERT INTO `Competitions` VALUES (48, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 18:06:42', '2024-07-23 18:06:42', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 18:06:42', '2024-07-09 18:06:42', NULL);
INSERT INTO `Competitions` VALUES (49, 'demo submit anh', 'demo submit anh', NULL, '#000000', '2024-07-16 18:08:56', '2024-07-23 18:08:56', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 18:08:56', '2024-07-09 18:10:42', '/1720548548399-Screenshot 2024-05-02 133549.png');
INSERT INTO `Competitions` VALUES (50, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-16 18:17:25', '2024-07-23 18:17:25', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 18:17:25', '2024-07-09 18:17:25', NULL);
INSERT INTO `Competitions` VALUES (51, 'Cuộc thi mới 51', 'Trac nghiem', NULL, '#33a894', '2024-07-16 18:18:08', '2024-07-23 18:18:08', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-09 18:18:08', '2024-07-09 18:20:29', '');
INSERT INTO `Competitions` VALUES (52, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 08:42:36', '2024-07-24 08:42:36', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 01:42:36', '2024-07-10 01:42:36', NULL);
INSERT INTO `Competitions` VALUES (53, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 08:43:03', '2024-07-24 08:43:03', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 01:43:03', '2024-07-10 01:43:03', NULL);
INSERT INTO `Competitions` VALUES (54, 'Cuộc thi mới nè 54', 'Thể lệ cuộc thi', '', '#000000', '2024-07-17 04:26:49', '2024-07-24 04:26:49', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 04:26:49', '2024-07-10 04:28:29', '');
INSERT INTO `Competitions` VALUES (55, 'Cuộc thi mới nè 54+3', 'Thể lệ cuộc thi', '', '#000000', '2024-07-17 04:32:43', '2024-07-24 04:32:43', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 04:32:43', '2024-07-10 05:29:59', '');
INSERT INTO `Competitions` VALUES (56, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 12:29:17', '2024-07-24 12:29:17', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 05:29:17', '2024-07-10 05:29:17', NULL);
INSERT INTO `Competitions` VALUES (57, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 07:30:06', '2024-07-24 07:30:06', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 07:30:06', '2024-07-10 07:30:06', NULL);
INSERT INTO `Competitions` VALUES (58, 'Cuộc thi mới nè 58', 'Thể lệ cuộc thi 58', '111', '#000000', '2024-07-20 17:00:00', '2024-07-30 07:45:18', '1, 4, 6', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 07:45:18', '2024-07-10 11:53:23', '/1720612400325-Screenshot 2024-04-03 100251.png');
INSERT INTO `Competitions` VALUES (59, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 11:55:55', '2029-05-19 17:00:00', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 11:55:55', '2024-07-10 11:59:40', '/1720612777960-Screenshot 2024-04-03 100251.png');
INSERT INTO `Competitions` VALUES (60, 'Cuộc thi 999 đóa hoa hồng', 'Belly dance', '', '#000000', '2024-07-17 12:08:12', '2024-07-24 12:08:12', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 12:08:12', '2024-07-10 13:47:23', '/1720619215656-Screenshot 2024-04-03 100251.png');
INSERT INTO `Competitions` VALUES (61, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 21:22:15', '2024-07-24 21:22:15', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 14:22:15', '2024-07-10 14:22:15', NULL);
INSERT INTO `Competitions` VALUES (62, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-01 00:00:00', '2024-07-02 00:00:00', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 14:22:17', '2024-07-10 14:23:27', '/1720621355233-Purple Bold Gradient Modern Digital Marketing Banner.png');
INSERT INTO `Competitions` VALUES (63, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 21:29:19', '2024-07-24 21:29:19', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 14:29:19', '2024-07-10 14:29:19', NULL);
INSERT INTO `Competitions` VALUES (64, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 21:29:20', '2024-07-24 21:29:20', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 14:29:20', '2024-07-10 14:29:20', NULL);
INSERT INTO `Competitions` VALUES (65, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 21:29:20', '2024-07-24 21:29:20', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 14:29:20', '2024-07-10 14:29:20', NULL);
INSERT INTO `Competitions` VALUES (66, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 21:37:39', '2024-07-24 21:37:39', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 14:37:41', '2024-07-10 14:37:41', NULL);
INSERT INTO `Competitions` VALUES (67, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-18 04:38:57', '2024-07-25 04:38:57', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 14:38:58', '2024-07-10 14:49:26', '/1720622952394-Screenshot 2024-02-02 141901.png');
INSERT INTO `Competitions` VALUES (68, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', '', '#000000', '2024-07-17 15:28:36', '2024-07-24 15:28:36', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 15:28:36', '2024-07-10 15:47:42', '/1720626455194-Screenshot 2024-04-03 093441.png');
INSERT INTO `Competitions` VALUES (69, 'Điệp test', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-10 06:21:31', '2024-07-11 14:00:00', '1, 2, 3, 5, 7, 4', 10, 3, 'question-answer', 'Đơn vị mới', 0, 0, 1, '2024-07-10 16:16:44', '2024-07-10 16:25:12', '');
INSERT INTO `Competitions` VALUES (70, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 16:20:06', '2024-07-24 16:20:06', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 16:20:06', '2024-07-10 16:20:06', NULL);
INSERT INTO `Competitions` VALUES (71, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 23:22:13', '2024-07-24 23:22:13', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 16:22:13', '2024-07-10 16:22:13', NULL);
INSERT INTO `Competitions` VALUES (72, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 16:22:27', '2024-07-24 16:22:27', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 16:22:27', '2024-07-10 16:22:27', NULL);
INSERT INTO `Competitions` VALUES (73, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-17 23:51:01', '2024-07-24 23:51:01', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-10 16:51:02', '2024-07-10 16:51:02', NULL);
INSERT INTO `Competitions` VALUES (74, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-18 14:44:41', '2024-07-25 14:44:41', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-11 07:44:41', '2024-07-11 07:44:41', NULL);
INSERT INTO `Competitions` VALUES (75, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-18 14:44:57', '2024-07-25 14:44:57', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-11 07:44:58', '2024-07-11 07:44:58', NULL);
INSERT INTO `Competitions` VALUES (76, 'Cuộc thi mới nè', 'Thể lệ cuộc thi', NULL, '#000000', '2024-07-18 15:06:38', '2024-07-25 15:06:38', '1, 2', NULL, NULL, NULL, 'Nhóm/Đơn vị mới 2', 0, 0, 1, '2024-07-11 08:06:39', '2024-07-11 08:06:39', NULL);

-- ----------------------------
-- Table structure for ExamBankings
-- ----------------------------
DROP TABLE IF EXISTS `ExamBankings`;
CREATE TABLE `ExamBankings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `idUser` int NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `total_mc_questions` int NOT NULL,
  `total_essay_questions` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ExamBankings
-- ----------------------------
INSERT INTO `ExamBankings` VALUES (8, 1, 'Test new away', 0, 0, '2024-07-03 15:51:31', '2024-07-06 08:09:21');
INSERT INTO `ExamBankings` VALUES (9, 1, 'Test về lịch sử Việt Nam Nhân', 3, 0, '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `ExamBankings` VALUES (10, 1, 'Bong da the gioi 555', 0, 0, '2024-07-04 05:12:06', '2024-07-06 11:49:08');
INSERT INTO `ExamBankings` VALUES (11, 1, 'Bong da the gioi 555', 2, 0, '2024-07-04 08:59:52', '2024-07-04 08:59:52');
INSERT INTO `ExamBankings` VALUES (12, 1, 'Test new away', 2, 0, '2024-07-05 14:23:46', '2024-07-06 14:46:57');
INSERT INTO `ExamBankings` VALUES (13, 1, 'Bài thi mới', 0, 0, '2024-07-06 05:56:04', '2024-07-06 05:56:04');
INSERT INTO `ExamBankings` VALUES (14, 1, 'Bài thi mới 1', 0, 0, '2024-07-06 05:56:10', '2024-07-06 05:56:10');
INSERT INTO `ExamBankings` VALUES (15, 1, 'Bài thi mới 1123', 1, 0, '2024-07-06 06:56:02', '2024-07-06 09:53:51');
INSERT INTO `ExamBankings` VALUES (16, 1, 'Bài thi mới 1', 2, 0, '2024-07-06 10:01:30', '2024-07-06 10:25:07');
INSERT INTO `ExamBankings` VALUES (17, 1, 'Bài thi mới 1', 0, 0, '2024-07-06 11:45:07', '2024-07-06 11:45:07');
INSERT INTO `ExamBankings` VALUES (18, 1, 'Bài thi mới 1', 0, 0, '2024-07-06 11:45:37', '2024-07-06 11:45:37');
INSERT INTO `ExamBankings` VALUES (19, 1, 'Bài thi mới test update', 5, 0, '2024-07-06 13:09:46', '2024-07-06 13:53:00');
INSERT INTO `ExamBankings` VALUES (20, 1, 'Bài thi mới 1', 0, 0, '2024-07-08 08:19:35', '2024-07-08 08:19:35');
INSERT INTO `ExamBankings` VALUES (21, 1, 'Bài thi mới 1', 0, 0, '2024-07-08 10:04:37', '2024-07-08 10:04:42');
INSERT INTO `ExamBankings` VALUES (22, 1, 'Bài thi mới 1', 0, 0, '2024-07-08 10:04:38', '2024-07-08 10:04:38');
INSERT INTO `ExamBankings` VALUES (23, 1, 'Bài thi mới 1', 0, 0, '2024-07-08 10:05:01', '2024-07-08 10:05:09');
INSERT INTO `ExamBankings` VALUES (24, 1, 'Bài thi mới 1', 0, 0, '2024-07-08 10:08:01', '2024-07-08 10:08:01');
INSERT INTO `ExamBankings` VALUES (25, 1, 'Bài thi mới 1', 0, 0, '2024-07-08 10:08:07', '2024-07-08 10:08:12');
INSERT INTO `ExamBankings` VALUES (26, 1, 'Bài thi mới 1', 0, 0, '2024-07-08 10:08:47', '2024-07-08 10:08:47');
INSERT INTO `ExamBankings` VALUES (27, 1, 'Bài thi mới 1', 0, 0, '2024-07-08 10:11:54', '2024-07-08 10:11:54');
INSERT INTO `ExamBankings` VALUES (28, 1, 'Bài thi chủ đề World Cup', 2, 0, '2024-07-09 06:57:44', '2024-07-09 07:19:04');
INSERT INTO `ExamBankings` VALUES (30, 1, 'Bài thi mới 1', 5, 0, '2024-07-09 08:43:09', '2024-07-09 08:59:30');
INSERT INTO `ExamBankings` VALUES (31, 1, 'Bài thi mới 1', 31, 0, '2024-07-10 16:41:01', '2024-07-10 16:42:47');
INSERT INTO `ExamBankings` VALUES (32, 1, 'Bài thi mới 1', 0, 0, '2024-07-10 16:41:02', '2024-07-10 16:41:02');
INSERT INTO `ExamBankings` VALUES (33, 1, 'Bài thi mới 1', 30, 0, '2024-07-10 16:44:20', '2024-07-10 16:45:26');

-- ----------------------------
-- Table structure for ExamsOfCompetitions
-- ----------------------------
DROP TABLE IF EXISTS `ExamsOfCompetitions`;
CREATE TABLE `ExamsOfCompetitions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `competitionId` int NOT NULL,
  `examBankingId` int NOT NULL,
  `isDeleted` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `competitionId`(`competitionId` ASC) USING BTREE,
  INDEX `examBankingId`(`examBankingId` ASC) USING BTREE,
  CONSTRAINT `ExamsOfCompetitions_ibfk_15` FOREIGN KEY (`competitionId`) REFERENCES `Competitions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ExamsOfCompetitions_ibfk_16` FOREIGN KEY (`examBankingId`) REFERENCES `ExamBankings` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ExamsOfCompetitions
-- ----------------------------
INSERT INTO `ExamsOfCompetitions` VALUES (3, 1, 10, 0, '2024-07-04 18:00:15', '2024-07-04 18:00:15');
INSERT INTO `ExamsOfCompetitions` VALUES (4, 1, 11, 0, '2024-07-04 18:00:15', '2024-07-04 18:00:15');
INSERT INTO `ExamsOfCompetitions` VALUES (5, 6, 10, 0, '2024-07-05 13:52:56', '2024-07-05 13:52:56');
INSERT INTO `ExamsOfCompetitions` VALUES (6, 6, 9, 0, '2024-07-05 13:52:56', '2024-07-05 13:52:56');
INSERT INTO `ExamsOfCompetitions` VALUES (7, 7, 11, 0, '2024-07-05 14:54:43', '2024-07-05 14:54:43');
INSERT INTO `ExamsOfCompetitions` VALUES (8, 7, 9, 0, '2024-07-05 14:54:43', '2024-07-05 14:54:43');
INSERT INTO `ExamsOfCompetitions` VALUES (10, 10, 12, 0, '2024-07-06 06:33:55', '2024-07-06 06:35:54');
INSERT INTO `ExamsOfCompetitions` VALUES (13, 11, 15, 0, '2024-07-08 04:56:50', '2024-07-08 04:56:50');
INSERT INTO `ExamsOfCompetitions` VALUES (14, 11, 9, 0, '2024-07-08 04:56:50', '2024-07-08 04:56:50');
INSERT INTO `ExamsOfCompetitions` VALUES (15, 12, 15, 0, '2024-07-08 05:03:05', '2024-07-08 05:03:05');
INSERT INTO `ExamsOfCompetitions` VALUES (16, 12, 9, 0, '2024-07-08 05:03:05', '2024-07-08 05:03:05');
INSERT INTO `ExamsOfCompetitions` VALUES (17, 19, 9, 0, '2024-07-08 15:55:40', '2024-07-08 15:55:40');
INSERT INTO `ExamsOfCompetitions` VALUES (18, 19, 19, 0, '2024-07-08 15:55:40', '2024-07-08 15:55:40');
INSERT INTO `ExamsOfCompetitions` VALUES (19, 3, 28, 0, '2024-07-09 17:51:10', '2024-07-09 17:51:10');

-- ----------------------------
-- Table structure for Organizers
-- ----------------------------
DROP TABLE IF EXISTS `Organizers`;
CREATE TABLE `Organizers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `competitionId` int NOT NULL,
  `isDeleted` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `competitionId`(`competitionId` ASC) USING BTREE,
  CONSTRAINT `Organizers_ibfk_1` FOREIGN KEY (`competitionId`) REFERENCES `Competitions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Organizers
-- ----------------------------
INSERT INTO `Organizers` VALUES (1, 'Kiên nè!!!', 'Hồ Chí Minh', '0965865133', 'email@gmail.com', 7, 0, '2024-07-05 16:03:33', '2024-07-05 16:05:49');
INSERT INTO `Organizers` VALUES (2, 'Phở 24h', 'TPHCM', '0868838504', 'phuc@gmail.com', 7, 0, '2024-07-05 20:31:43', '2024-07-05 20:31:43');
INSERT INTO `Organizers` VALUES (3, 'Phở', 'TPHCM', '0868838504', 'phuc@gmail.com', 7, 0, '2024-07-05 20:33:17', '2024-07-05 20:33:17');
INSERT INTO `Organizers` VALUES (4, 'Kiên min ho!!!', 'Hồ Chí Minh', '0965865133', 'email@gmail.com', 7, 0, '2024-07-05 20:34:22', '2024-07-05 20:34:22');
INSERT INTO `Organizers` VALUES (5, 'Phở 24h', 'Hồ Chí Minh', '0964467889', 'pho@gmail.com', 5, 0, '2024-07-05 20:36:21', '2024-07-05 20:36:21');
INSERT INTO `Organizers` VALUES (6, 'Phở 24h', NULL, '0964467889', NULL, 15, 0, '2024-07-08 16:30:13', '2024-07-08 16:30:13');
INSERT INTO `Organizers` VALUES (7, 'Garena Demo v3', 'Lâm Đồng', '0964467889', 'tangbatho@gmail.com', 19, 0, '2024-07-08 16:37:11', '2024-07-08 17:03:43');
INSERT INTO `Organizers` VALUES (8, 'Garena Demo', NULL, '0964467889', NULL, 19, 0, '2024-07-08 16:38:17', '2024-07-08 16:38:17');
INSERT INTO `Organizers` VALUES (9, 'Garena Demo v1', NULL, '0964467889', NULL, 19, 0, '2024-07-08 16:40:38', '2024-07-08 16:40:38');
INSERT INTO `Organizers` VALUES (10, 'Garena Demo v1', NULL, '0964467889', NULL, 15, 0, '2024-07-08 16:41:01', '2024-07-08 16:41:01');
INSERT INTO `Organizers` VALUES (11, 'Vũ hồng điệp', 'Huyện Gia Lộc', '0978666354', 'vuhongdiep.dhtm@gmail.com', 69, 0, '2024-07-10 16:22:07', '2024-07-10 16:22:07');

-- ----------------------------
-- Table structure for Participants
-- ----------------------------
DROP TABLE IF EXISTS `Participants`;
CREATE TABLE `Participants`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `idCompetition` int NOT NULL,
  `idUser` int NULL DEFAULT NULL,
  `idSubUnit` int NOT NULL,
  `fullName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birthday` datetime NULL DEFAULT NULL,
  `CCCD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` enum('nam','nữ','khác') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `other` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `startTime` datetime NOT NULL,
  `finishTime` datetime NOT NULL,
  `correctAnswersRate` float NULL DEFAULT NULL,
  `isDeleted` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `totalCorrectAnswers` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idCompetition`(`idCompetition` ASC) USING BTREE,
  INDEX `idUser`(`idUser` ASC) USING BTREE,
  INDEX `idSubUnit`(`idSubUnit` ASC) USING BTREE,
  CONSTRAINT `Participants_ibfk_10` FOREIGN KEY (`idCompetition`) REFERENCES `Competitions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Participants_ibfk_11` FOREIGN KEY (`idUser`) REFERENCES `Users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Participants_ibfk_12` FOREIGN KEY (`idSubUnit`) REFERENCES `Units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Participants
-- ----------------------------
INSERT INTO `Participants` VALUES (5, 10, NULL, 3, 'Trần Hợp Kiên', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-06 14:05:32', '2024-07-06 14:10:00', 50, 0, '2024-07-06 14:19:42', '2024-07-06 14:19:50', 1);
INSERT INTO `Participants` VALUES (6, 10, NULL, 3, 'Nhân nè ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-06 14:05:32', '2024-07-06 14:10:00', 50, 0, '2024-07-06 15:38:43', '2024-07-06 15:38:49', 1);
INSERT INTO `Participants` VALUES (7, 10, NULL, 4, 'Nhân nè 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-06 14:05:32', '2024-07-06 14:10:00', 50, 0, '2024-07-06 15:40:06', '2024-07-06 15:40:09', 1);
INSERT INTO `Participants` VALUES (8, 10, NULL, 4, 'Ẩn danh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-06 15:06:30', '2024-07-06 15:10:00', 100, 0, '2024-07-06 15:41:23', '2024-07-06 15:41:27', 2);
INSERT INTO `Participants` VALUES (9, 10, NULL, 4, 'Nguyễn Trọng Đức', 'phuc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-07 14:40:45', '2024-07-07 14:39:21', 0, 0, '2024-07-07 14:40:56', '2024-07-07 14:40:58', 0);
INSERT INTO `Participants` VALUES (10, 10, NULL, 4, 'Trần Tống Gia Vũ', 'vietdang@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-07 14:56:14', '2024-07-07 14:56:21', 0, 0, '2024-07-07 14:56:21', '2024-07-07 14:56:23', 0);
INSERT INTO `Participants` VALUES (11, 10, NULL, 4, 'Phan Trọng Kha', 'phuc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 02:24:33', '2024-07-08 02:24:40', NULL, 0, '2024-07-08 02:24:40', '2024-07-08 02:24:40', NULL);
INSERT INTO `Participants` VALUES (12, 10, NULL, 4, 'Phan Trọng Kha', 'phuc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 02:24:33', '2024-07-08 02:24:40', 0, 0, '2024-07-08 02:24:42', '2024-07-08 02:24:43', 0);
INSERT INTO `Participants` VALUES (13, 10, NULL, 4, 'Trần Tống Gia Vũ', 'nhanta311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 03:17:05', '2024-07-08 03:17:20', 0, 0, '2024-07-08 03:17:20', '2024-07-08 03:17:21', 0);
INSERT INTO `Participants` VALUES (14, 10, NULL, 4, 'Phan Trọng Kha', 'pltnhan311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 03:18:06', '2024-07-08 03:18:14', 0, 0, '2024-07-08 03:18:14', '2024-07-08 03:18:14', 0);
INSERT INTO `Participants` VALUES (15, 10, NULL, 4, 'Nguyễn Trọng Đức', 'pltnhan311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 03:18:46', '2024-07-08 03:18:55', 50, 0, '2024-07-08 03:18:55', '2024-07-08 03:18:56', 1);
INSERT INTO `Participants` VALUES (16, 10, NULL, 4, 'Trần Tống Gia Vũ', 'phuc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 03:19:43', '2024-07-08 03:19:52', 100, 0, '2024-07-08 03:19:52', '2024-07-08 03:19:52', 2);
INSERT INTO `Participants` VALUES (17, 10, NULL, 4, 'Phạm Lê Trọng Nhân', 'pltnhan311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 03:41:15', '2024-07-08 03:41:22', 0, 0, '2024-07-08 03:41:22', '2024-07-08 03:41:22', 0);
INSERT INTO `Participants` VALUES (18, 10, NULL, 4, 'Phạm Lê Trọng Nhân', 'pltnhan311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 03:42:56', '2024-07-08 03:43:03', 0, 0, '2024-07-08 03:43:03', '2024-07-08 03:43:03', 0);
INSERT INTO `Participants` VALUES (19, 10, NULL, 4, 'Trần Tống Gia Vũ', 'nhanta311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 03:46:35', '2024-07-08 03:46:44', 50, 0, '2024-07-08 03:46:44', '2024-07-08 03:46:44', 1);
INSERT INTO `Participants` VALUES (20, 10, NULL, 4, 'Phan Trọng Kha', 'pltnhan311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 03:47:26', '2024-07-08 03:47:34', 0, 0, '2024-07-08 03:47:34', '2024-07-08 03:47:34', 0);
INSERT INTO `Participants` VALUES (21, 10, NULL, 4, 'Trần Tống Gia Vũ', 'nhangd311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 03:50:16', '2024-07-08 03:50:25', 0, 0, '2024-07-08 03:50:25', '2024-07-08 03:50:25', 0);
INSERT INTO `Participants` VALUES (22, 10, NULL, 4, 'Nguyễn Trọng Đức', 'phuc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 03:50:53', '2024-07-08 03:51:01', 0, 0, '2024-07-08 03:51:01', '2024-07-08 03:51:01', 0);
INSERT INTO `Participants` VALUES (23, 10, NULL, 4, 'trrr', 'phuc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 04:13:25', '2024-07-08 04:13:33', NULL, 0, '2024-07-08 04:13:33', '2024-07-08 04:13:33', NULL);
INSERT INTO `Participants` VALUES (24, 10, NULL, 4, 'trrr', 'phuc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 04:13:25', '2024-07-08 04:13:33', 50, 0, '2024-07-08 04:13:35', '2024-07-08 04:13:35', 1);
INSERT INTO `Participants` VALUES (25, 10, NULL, 4, 'ttgfb', 'duongthuypttd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 04:14:36', '2024-07-08 04:14:45', 0, 0, '2024-07-08 04:14:45', '2024-07-08 04:14:46', 0);
INSERT INTO `Participants` VALUES (26, 10, NULL, 4, 'Trần Tống Gia Vũ', 'vietdang@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 07:18:58', '2024-07-08 07:19:06', 50, 0, '2024-07-08 07:19:06', '2024-07-08 07:19:06', 1);
INSERT INTO `Participants` VALUES (27, 10, NULL, 4, 'Triệu Việt Hà', 'vietdang@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 07:44:55', '2024-07-08 07:44:59', 0, 0, '2024-07-08 07:44:59', '2024-07-08 07:45:00', 0);
INSERT INTO `Participants` VALUES (28, 10, NULL, 4, 'Trần Tống Gia Vũ', 'pltnhan311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 14:50:28', '2024-07-08 14:50:32', 0, 0, '2024-07-08 07:50:33', '2024-07-08 07:50:34', 0);
INSERT INTO `Participants` VALUES (29, 10, NULL, 4, 'HoangVuong', 'vuongho098@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 16:49:38', '2024-07-08 16:49:45', 0, 0, '2024-07-08 09:49:46', '2024-07-08 09:49:47', 0);
INSERT INTO `Participants` VALUES (30, 10, NULL, 4, 'Trần Tống Gia Vũ', 'pltnhan311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-09 12:24:21', '2024-07-09 12:24:28', NULL, 0, '2024-07-09 12:24:28', '2024-07-09 12:24:28', NULL);
INSERT INTO `Participants` VALUES (31, 10, NULL, 4, 'Trần Tống Gia Vũ', 'pltnhan311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-09 12:24:21', '2024-07-09 12:24:52', 0, 0, '2024-07-09 12:24:52', '2024-07-09 12:24:53', 0);
INSERT INTO `Participants` VALUES (32, 3, NULL, 4, 'Nguyễn Trọng Đức', 'nhangd311@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-09 17:52:51', '2024-07-09 17:53:03', 50, 0, '2024-07-09 17:53:03', '2024-07-09 17:53:04', 1);
INSERT INTO `Participants` VALUES (33, 10, NULL, 4, 'hhj ggi', 'tru hui', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-10 07:07:38', '2024-07-10 07:07:50', 0, 0, '2024-07-10 00:07:50', '2024-07-10 00:07:53', 0);
INSERT INTO `Participants` VALUES (34, 10, NULL, 4, 'zdvz', 'zdv', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-11 15:06:12', '2024-07-11 15:06:16', NULL, 0, '2024-07-11 08:06:17', '2024-07-11 08:06:17', NULL);
INSERT INTO `Participants` VALUES (35, 10, NULL, 4, 'zdvz', 'zdv', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-11 15:06:12', '2024-07-11 15:06:24', 0, 0, '2024-07-11 08:06:24', '2024-07-11 08:06:25', 0);

-- ----------------------------
-- Table structure for QuestionBankings
-- ----------------------------
DROP TABLE IF EXISTS `QuestionBankings`;
CREATE TABLE `QuestionBankings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `idExamBanking` int NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lengthLimit` int NULL DEFAULT NULL,
  `type` enum('MC','ESSAY') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idExamBanking`(`idExamBanking` ASC) USING BTREE,
  CONSTRAINT `QuestionBankings_ibfk_1` FOREIGN KEY (`idExamBanking`) REFERENCES `ExamBankings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 315 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QuestionBankings
-- ----------------------------
INSERT INTO `QuestionBankings` VALUES (160, 8, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (161, 8, 'Câu 2: Thân mẫu của Hồ Chí Minh là bà Hoàng Thị Loan, Bà sinh được mấy người con?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (162, 8, 'Câu 3: Nguyễn Ái Quốc vào Đảng Xã Hội Pháp năm nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (163, 8, 'Câu 4: Nguyễn Ái Quốc gửi bản “Yêu sách của nhân dân An Nam” tới Hội nghị Vecxay vào ngày tháng năm nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (164, 8, 'Câu 5: Nguyễn Sinh Cung đổi tên là Nguyễn Tất Thành năm nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (165, 8, 'Câu 6: Nguyễn Tất Thành lấy tên là Nguyễn Ái Quốc vào thời gian nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (166, 8, 'Câu 7: Nguyễn Ái Quốc đã thành lập Hội Việt Nam Cách mạng Thanh niên vào thời gian nào, ở đâu ?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (167, 8, 'Câu 8: Bản chất của chủ nghĩa tư bản được Bác ví như là “Con đỉa có hai cái vòi, một cái vòi bám vào giai cấp vô sản ở chính quốc, một cái vòi bám vào giai cấp vô sản ở thuộc địa. Nếu muốn giết con vật ấy, người ta phải đồng thời cắt cả hai cái vòi...”. Đoạn trích này dược trích trong tác phẩm nào của Nguyễn Ái Quốc?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (168, 8, 'Câu 9: Giai đoạn hình thành tư tưởng yêu nước và chí hướng cách mạng của Hồ Chí Minh là giai đoạn nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (169, 8, 'Câu 10: Giai đoạn Hồ Chí Minh vượt qua khó khăn, thử thách, kiên trì con đường cách mạng Việt Nam là giai đoạn nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (170, 8, 'Câu 11: Địa danh đầu tiên Hồ Chí Minh đạt chân đến khi mới về nước , tại Cột móc 108 trên biên giới Việt - Trung thuộc huyện nào của tỉnh nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (171, 8, 'Câu 12: “Hỡi đồng bào yêu quý! Giờ quyết đinh cho vận mệnh dân tộc đã đến. Tòan quốc đồng bào hãy đứng dậy đem sức ta mà giải phóng cho ta”. Đoạn văn trên dược trích từ văn kiện nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (172, 8, 'Câu 13: “Không chúng ta thà hy sinh tất cả, chứ nhất định không chịu mất nuớc, nhất định không chịu làm nô lệ”. Lời khẳng định đanh thép này được trích trong “Lời kêu gọi toàn quốc kháng chiến” của Hồ Chí Minh. Lời kêu gọi đó được viết vào thời gian nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (173, 8, 'Câu 14: “Dân tộc ta, nhân dân ta, non sông đất nước ta đã sinh ra Hồ Chủ Tịch, người anh hùng dân tộc vĩ đại, và chính người đã làm rạng rỡ dân tộc ta, nhân dân ta và non sông đất nước ta”. Nhận định trên ở trong văn kiện nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (174, 8, 'Câu 15: “Đoàn viên và thanh niên ta nói chung là tốt, mọi việc đều hăng háy xung phong, không ngại khó khăn, có chí tiến thủ. Đảng cần phải chăm lo giáo dục đạo đức cách mạng cho họ, đào tạo họ thành những người thừa kế xây dựng chủ nghĩa xã hội “vừa hồng vừa chuyên”. Câu nói đó của Hồ Chí Minh trong văn kiện nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (175, 8, 'Câu 16: Theo Hồ Chí Minh ưu điểm lớn nhất trong học thuyết của Khổng Tử là gì?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (176, 8, 'Câu 17: Theo Hồ Chí Minh, học Chủ nghĩa Mác – Lênin để làm gì?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (177, 8, 'Câu 18: Chọn cụm từ đúng điền vào chỗ trống: “Rằng đây bốn biển một nhà ...... đều là anh em', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (178, 8, 'Câu 19: Chọn phương án trả lời đúng cho câu hởi sau: cách mạng giải phóng dân tộc có khả năng chủ động giành thắng lợi trước cách mạng vô sản ở chính quốc vì:', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (179, 8, 'Câu 20: Chọn cấu trả lời đúng với tư tưởng Hồ Chí Minh', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (180, 8, 'Câu 21: Hồ Chí Minh đã dùng hình tượng nào dưới đây để chỉ chủ nghĩa tư bản?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (181, 8, 'Câu 22: Trong lời kết thúc buổi ra mắt của Đảng Lao Động, Hồ Chí Minh nói: “Mục đích của Đảng Lao Động Việt Nam có thể gồm trong tám chữ là: ĐOÀN KẾT TOÀN DÂN, PHỤNG SỰ TỔ QUỐC”. Buổi ra mắt đó vào lúc nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (182, 8, 'Câu 23: Ngày 27/5/1946, Hội đồng Chính phủ đã quyết định chọn ai thay Hồ Chí Minh giữ chức vụ Chủ Tịch nước trong thời gian người đi vắng?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (183, 8, 'Câu 24: Hồ Chí Minh đã dùng bút danh gì để viết tác phẩm “Sửa đổi lối làm việc”?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (184, 8, 'Câu 25: Theo Hồ Chí Minh cách mạng giải phóng dân tộc muốn giành được thắng lợi phải đi theo con đường nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (185, 8, 'Câu 26: Chọn câu trả lời đúng nhât với tư tưởng Hồ Chí Minh', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (186, 8, 'Câu 27: Chọn cụm từ đúng điền vào dấu... “Làm cách mệnh rồi thì quyền giao cho ..., chớ để trong tay một bọn ít người”.', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (187, 8, 'Câu 28: Loại giặc Hồ Chí Minh cho là “giặc nội xâm” là:', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (188, 8, 'Câu 29: Trong nhiều bài nói, bài viết, Hồ Chí Minh đã nêu lên “5 đức tính tốt” chủ yếu của ngươi cán bộ cách mạng. Đó là các đức tính nào?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (189, 8, 'Câu 30: Hồ Chí Minh có bao nhiêu tên gọi và bút danh?', NULL, 'MC', '2024-07-03 15:51:31', '2024-07-03 15:51:31');
INSERT INTO `QuestionBankings` VALUES (190, 9, 'Câu 1: Ai là người đã khởi xướng phong trào Đông Du?', NULL, 'MC', '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `QuestionBankings` VALUES (191, 9, 'Câu 2: Năm nào Bác Hồ đọc bản Tuyên ngôn Độc lập, khai sinh ra nước Việt Nam Dân chủ Cộng hòa?', NULL, 'MC', '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `QuestionBankings` VALUES (192, 9, 'Câu 3: Vị vua nào được biết đến với công lao đuổi quân Minh ra khỏi bờ cõi Việt Nam vào thế kỷ XV?', NULL, 'MC', '2024-07-03 17:46:54', '2024-07-03 17:46:54');
INSERT INTO `QuestionBankings` VALUES (193, 10, 'Câu 1: Ai là người đã khởi xướng phong trào Đông Du?', NULL, 'MC', '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `QuestionBankings` VALUES (194, 10, 'Câu 2: Năm nào Bác Hồ đọc bản Tuyên ngôn Độc lập, khai sinh ra nước Việt Nam Dân chủ Cộng hòa?', NULL, 'MC', '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `QuestionBankings` VALUES (195, 10, 'Câu 3: Vị vua nào được biết đến với công lao đuổi quân Minh ra khỏi bờ cõi Việt Nam vào thế kỷ XV?', NULL, 'MC', '2024-07-04 05:12:06', '2024-07-04 05:12:06');
INSERT INTO `QuestionBankings` VALUES (196, 11, 'Cau thu MU la ai ?', NULL, 'MC', '2024-07-04 08:59:53', '2024-07-06 14:56:16');
INSERT INTO `QuestionBankings` VALUES (197, 11, 'Cau thu Man city la ai ?', NULL, 'MC', '2024-07-04 08:59:53', '2024-07-06 14:56:18');
INSERT INTO `QuestionBankings` VALUES (198, 12, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-05 14:26:13', '2024-07-06 14:46:54');
INSERT INTO `QuestionBankings` VALUES (199, 12, 'Câu 2: Thân mẫu của Hồ Chí Minh là bà Hoàng Thị Loan, Bà sinh được mấy người con?', NULL, 'MC', '2024-07-05 14:26:14', '2024-07-06 14:46:56');
INSERT INTO `QuestionBankings` VALUES (200, 15, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-06 09:53:51', '2024-07-06 09:53:51');
INSERT INTO `QuestionBankings` VALUES (201, 15, 'Câu 2: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-06 09:55:06', '2024-07-06 09:55:06');
INSERT INTO `QuestionBankings` VALUES (202, 16, 'lasao', NULL, 'MC', '2024-07-06 10:24:16', '2024-07-06 10:24:16');
INSERT INTO `QuestionBankings` VALUES (203, 16, 'haha', NULL, 'MC', '2024-07-06 10:25:07', '2024-07-06 10:25:07');
INSERT INTO `QuestionBankings` VALUES (204, 16, 'hihi', NULL, 'MC', '2024-07-06 10:25:07', '2024-07-06 10:25:07');
INSERT INTO `QuestionBankings` VALUES (205, 15, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-06 13:07:50', '2024-07-06 13:07:50');
INSERT INTO `QuestionBankings` VALUES (207, 19, 'tôi là ai ?', NULL, 'MC', '2024-07-06 13:11:09', '2024-07-06 14:15:17');
INSERT INTO `QuestionBankings` VALUES (208, 19, 'chó english là gì?', NULL, 'MC', '2024-07-06 13:11:11', '2024-07-06 14:15:20');
INSERT INTO `QuestionBankings` VALUES (209, 19, 'chó là gì ?', NULL, 'MC', '2024-07-06 13:12:30', '2024-07-06 14:15:22');
INSERT INTO `QuestionBankings` VALUES (210, 19, 'tôi là ai ?', NULL, 'MC', '2024-07-06 13:41:27', '2024-07-06 14:15:25');
INSERT INTO `QuestionBankings` VALUES (211, 19, 'tôi là ai ?', NULL, 'MC', '2024-07-06 13:42:16', '2024-07-06 14:15:27');
INSERT INTO `QuestionBankings` VALUES (212, 28, 'Which of the following is the capital city of France?\n\n', NULL, 'MC', '2024-07-09 07:04:15', '2024-07-09 07:52:45');
INSERT INTO `QuestionBankings` VALUES (213, 28, 'Which country won the FIFA World Cup in 2022?\n\n', NULL, 'MC', '2024-07-09 07:04:15', '2024-07-09 07:52:46');
INSERT INTO `QuestionBankings` VALUES (219, 30, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-09 08:59:28', '2024-07-09 09:00:17');
INSERT INTO `QuestionBankings` VALUES (220, 30, 'Câu 2: Thân mẫu của Hồ Chí Minh là bà Hoàng Thị Loan, Bà sinh được mấy người con?', NULL, 'MC', '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `QuestionBankings` VALUES (221, 30, 'Câu 3: Nguyễn Ái Quốc vào Đảng Xã Hội Pháp năm nào?', NULL, 'MC', '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `QuestionBankings` VALUES (222, 30, 'Câu 4: Nguyễn Ái Quốc gửi bản “Yêu sách của nhân dân An Nam” tới Hội nghị Vecxay vào ngày tháng năm nào?', NULL, 'MC', '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `QuestionBankings` VALUES (223, 30, 'Câu 5: Nguyễn Sinh Cung đổi tên là Nguyễn Tất Thành năm nào?', NULL, 'MC', '2024-07-09 08:59:29', '2024-07-09 09:00:18');
INSERT INTO `QuestionBankings` VALUES (224, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:16', '2024-07-10 16:42:16');
INSERT INTO `QuestionBankings` VALUES (225, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:17', '2024-07-10 16:42:17');
INSERT INTO `QuestionBankings` VALUES (226, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:18', '2024-07-10 16:42:18');
INSERT INTO `QuestionBankings` VALUES (227, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:19', '2024-07-10 16:42:19');
INSERT INTO `QuestionBankings` VALUES (228, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:20', '2024-07-10 16:42:20');
INSERT INTO `QuestionBankings` VALUES (229, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:21', '2024-07-10 16:42:21');
INSERT INTO `QuestionBankings` VALUES (230, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:22', '2024-07-10 16:42:22');
INSERT INTO `QuestionBankings` VALUES (231, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:23', '2024-07-10 16:42:23');
INSERT INTO `QuestionBankings` VALUES (232, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:24', '2024-07-10 16:42:24');
INSERT INTO `QuestionBankings` VALUES (233, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:25', '2024-07-10 16:42:25');
INSERT INTO `QuestionBankings` VALUES (234, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:26', '2024-07-10 16:42:26');
INSERT INTO `QuestionBankings` VALUES (235, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:27', '2024-07-10 16:42:27');
INSERT INTO `QuestionBankings` VALUES (236, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:28', '2024-07-10 16:42:28');
INSERT INTO `QuestionBankings` VALUES (237, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:29', '2024-07-10 16:42:29');
INSERT INTO `QuestionBankings` VALUES (238, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:30', '2024-07-10 16:42:30');
INSERT INTO `QuestionBankings` VALUES (239, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:31', '2024-07-10 16:42:31');
INSERT INTO `QuestionBankings` VALUES (240, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:32', '2024-07-10 16:42:32');
INSERT INTO `QuestionBankings` VALUES (241, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:33', '2024-07-10 16:42:33');
INSERT INTO `QuestionBankings` VALUES (242, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:34', '2024-07-10 16:42:34');
INSERT INTO `QuestionBankings` VALUES (243, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:35', '2024-07-10 16:42:35');
INSERT INTO `QuestionBankings` VALUES (244, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:36', '2024-07-10 16:42:36');
INSERT INTO `QuestionBankings` VALUES (245, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:37', '2024-07-10 16:42:37');
INSERT INTO `QuestionBankings` VALUES (246, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:38', '2024-07-10 16:42:38');
INSERT INTO `QuestionBankings` VALUES (247, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:39', '2024-07-10 16:42:39');
INSERT INTO `QuestionBankings` VALUES (248, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:40', '2024-07-10 16:42:40');
INSERT INTO `QuestionBankings` VALUES (249, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:41', '2024-07-10 16:42:41');
INSERT INTO `QuestionBankings` VALUES (250, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:42', '2024-07-10 16:42:42');
INSERT INTO `QuestionBankings` VALUES (251, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:43', '2024-07-10 16:42:43');
INSERT INTO `QuestionBankings` VALUES (252, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:44', '2024-07-10 16:42:44');
INSERT INTO `QuestionBankings` VALUES (253, 31, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:42:45', '2024-07-10 16:42:45');
INSERT INTO `QuestionBankings` VALUES (254, 31, '', NULL, 'MC', '2024-07-10 16:42:46', '2024-07-10 16:42:46');
INSERT INTO `QuestionBankings` VALUES (255, 33, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:44:53', '2024-07-10 16:44:53');
INSERT INTO `QuestionBankings` VALUES (256, 33, 'Câu 2: Thân mẫu của Hồ Chí Minh là bà Hoàng Thị Loan, Bà sinh được mấy người con?', NULL, 'MC', '2024-07-10 16:44:54', '2024-07-10 16:44:54');
INSERT INTO `QuestionBankings` VALUES (257, 33, 'Câu 3: Nguyễn Ái Quốc vào Đảng Xã Hội Pháp năm nào?', NULL, 'MC', '2024-07-10 16:44:55', '2024-07-10 16:44:55');
INSERT INTO `QuestionBankings` VALUES (258, 33, 'Câu 4: Nguyễn Ái Quốc gửi bản “Yêu sách của nhân dân An Nam” tới Hội nghị Vecxay vào ngày tháng năm nào?', NULL, 'MC', '2024-07-10 16:44:56', '2024-07-10 16:44:56');
INSERT INTO `QuestionBankings` VALUES (259, 33, 'Câu 5: Nguyễn Sinh Cung đổi tên là Nguyễn Tất Thành năm nào?', NULL, 'MC', '2024-07-10 16:44:57', '2024-07-10 16:44:57');
INSERT INTO `QuestionBankings` VALUES (260, 33, 'Câu 6: Nguyễn Tất Thành lấy tên là Nguyễn Ái Quốc vào thời gian nào?', NULL, 'MC', '2024-07-10 16:44:59', '2024-07-10 16:44:59');
INSERT INTO `QuestionBankings` VALUES (261, 33, 'Câu 7: Nguyễn Ái Quốc đã thành lập Hội Việt Nam Cách mạng Thanh niên vào thời gian nào, ở đâu ?', NULL, 'MC', '2024-07-10 16:45:00', '2024-07-10 16:45:00');
INSERT INTO `QuestionBankings` VALUES (262, 33, 'Câu 8: Bản chất của chủ nghĩa tư bản được Bác ví như là “Con đỉa có hai cái vòi, một cái vòi bám vào giai cấp vô sản ở chính quốc, một cái vòi bám vào giai cấp vô sản ở thuộc địa. Nếu muốn giết con vật ấy, người ta phải đồng thời cắt cả hai cái vòi...”. Đoạn trích này dược trích trong tác phẩm nào của Nguyễn Ái Quốc?', NULL, 'MC', '2024-07-10 16:45:01', '2024-07-10 16:45:01');
INSERT INTO `QuestionBankings` VALUES (263, 33, 'Câu 9: Giai đoạn hình thành tư tưởng yêu nước và chí hướng cách mạng của Hồ Chí Minh là giai đoạn nào?', NULL, 'MC', '2024-07-10 16:45:02', '2024-07-10 16:45:02');
INSERT INTO `QuestionBankings` VALUES (264, 33, 'Câu 10: Giai đoạn Hồ Chí Minh vượt qua khó khăn, thử thách, kiên trì con đường cách mạng Việt Nam là giai đoạn nào?', NULL, 'MC', '2024-07-10 16:45:03', '2024-07-10 16:45:03');
INSERT INTO `QuestionBankings` VALUES (265, 33, 'Câu 11: Địa danh đầu tiên Hồ Chí Minh đạt chân đến khi mới về nước , tại Cột móc 108 trên biên giới Việt - Trung thuộc huyện nào của tỉnh nào?', NULL, 'MC', '2024-07-10 16:45:04', '2024-07-10 16:45:04');
INSERT INTO `QuestionBankings` VALUES (266, 33, 'Câu 12: “Hỡi đồng bào yêu quý! Giờ quyết đinh cho vận mệnh dân tộc đã đến. Tòan quốc đồng bào hãy đứng dậy đem sức ta mà giải phóng cho ta”. Đoạn văn trên dược trích từ văn kiện nào?', NULL, 'MC', '2024-07-10 16:45:05', '2024-07-10 16:45:05');
INSERT INTO `QuestionBankings` VALUES (267, 33, 'Câu 13: “Không chúng ta thà hy sinh tất cả, chứ nhất định không chịu mất nuớc, nhất định không chịu làm nô lệ”. Lời khẳng định đanh thép này được trích trong “Lời kêu gọi toàn quốc kháng chiến” của Hồ Chí Minh. Lời kêu gọi đó được viết vào thời gian nào?', NULL, 'MC', '2024-07-10 16:45:06', '2024-07-10 16:45:06');
INSERT INTO `QuestionBankings` VALUES (268, 33, 'Câu 14: “Dân tộc ta, nhân dân ta, non sông đất nước ta đã sinh ra Hồ Chủ Tịch, người anh hùng dân tộc vĩ đại, và chính người đã làm rạng rỡ dân tộc ta, nhân dân ta và non sông đất nước ta”. Nhận định trên ở trong văn kiện nào?', NULL, 'MC', '2024-07-10 16:45:07', '2024-07-10 16:45:07');
INSERT INTO `QuestionBankings` VALUES (269, 33, 'Câu 15: “Đoàn viên và thanh niên ta nói chung là tốt, mọi việc đều hăng háy xung phong, không ngại khó khăn, có chí tiến thủ. Đảng cần phải chăm lo giáo dục đạo đức cách mạng cho họ, đào tạo họ thành những người thừa kế xây dựng chủ nghĩa xã hội “vừa hồng vừa chuyên”. Câu nói đó của Hồ Chí Minh trong văn kiện nào?', NULL, 'MC', '2024-07-10 16:45:08', '2024-07-10 16:45:08');
INSERT INTO `QuestionBankings` VALUES (270, 33, 'Câu 16: Theo Hồ Chí Minh ưu điểm lớn nhất trong học thuyết của Khổng Tử là gì?', NULL, 'MC', '2024-07-10 16:45:09', '2024-07-10 16:45:09');
INSERT INTO `QuestionBankings` VALUES (271, 33, 'Câu 17: Theo Hồ Chí Minh, học Chủ nghĩa Mác – Lênin để làm gì?', NULL, 'MC', '2024-07-10 16:45:11', '2024-07-10 16:45:11');
INSERT INTO `QuestionBankings` VALUES (272, 33, 'Câu 18: Chọn cụm từ đúng điền vào chỗ trống: “Rằng đây bốn biển một nhà ...... đều là anh em', NULL, 'MC', '2024-07-10 16:45:12', '2024-07-10 16:45:12');
INSERT INTO `QuestionBankings` VALUES (273, 33, 'Câu 19: Chọn phương án trả lời đúng cho câu hởi sau: cách mạng giải phóng dân tộc có khả năng chủ động giành thắng lợi trước cách mạng vô sản ở chính quốc vì:', NULL, 'MC', '2024-07-10 16:45:13', '2024-07-10 16:45:13');
INSERT INTO `QuestionBankings` VALUES (274, 33, 'Câu 20: Chọn cấu trả lời đúng với tư tưởng Hồ Chí Minh', NULL, 'MC', '2024-07-10 16:45:14', '2024-07-10 16:45:14');
INSERT INTO `QuestionBankings` VALUES (275, 33, 'Câu 21: Hồ Chí Minh đã dùng hình tượng nào dưới đây để chỉ chủ nghĩa tư bản?', NULL, 'MC', '2024-07-10 16:45:15', '2024-07-10 16:45:15');
INSERT INTO `QuestionBankings` VALUES (276, 33, 'Câu 22: Trong lời kết thúc buổi ra mắt của Đảng Lao Động, Hồ Chí Minh nói: “Mục đích của Đảng Lao Động Việt Nam có thể gồm trong tám chữ là: ĐOÀN KẾT TOÀN DÂN, PHỤNG SỰ TỔ QUỐC”. Buổi ra mắt đó vào lúc nào?', NULL, 'MC', '2024-07-10 16:45:16', '2024-07-10 16:45:16');
INSERT INTO `QuestionBankings` VALUES (277, 33, 'Câu 23: Ngày 27/5/1946, Hội đồng Chính phủ đã quyết định chọn ai thay Hồ Chí Minh giữ chức vụ Chủ Tịch nước trong thời gian người đi vắng?', NULL, 'MC', '2024-07-10 16:45:17', '2024-07-10 16:45:17');
INSERT INTO `QuestionBankings` VALUES (278, 33, 'Câu 24: Hồ Chí Minh đã dùng bút danh gì để viết tác phẩm “Sửa đổi lối làm việc”?', NULL, 'MC', '2024-07-10 16:45:18', '2024-07-10 16:45:18');
INSERT INTO `QuestionBankings` VALUES (279, 33, 'Câu 25: Theo Hồ Chí Minh cách mạng giải phóng dân tộc muốn giành được thắng lợi phải đi theo con đường nào?', NULL, 'MC', '2024-07-10 16:45:19', '2024-07-10 16:45:19');
INSERT INTO `QuestionBankings` VALUES (280, 33, 'Câu 26: Chọn câu trả lời đúng nhât với tư tưởng Hồ Chí Minh', NULL, 'MC', '2024-07-10 16:45:20', '2024-07-10 16:45:20');
INSERT INTO `QuestionBankings` VALUES (281, 33, 'Câu 27: Chọn cụm từ đúng điền vào dấu... “Làm cách mệnh rồi thì quyền giao cho ..., chớ để trong tay một bọn ít người”.', NULL, 'MC', '2024-07-10 16:45:21', '2024-07-10 16:45:21');
INSERT INTO `QuestionBankings` VALUES (282, 33, 'Câu 28: Loại giặc Hồ Chí Minh cho là “giặc nội xâm” là:', NULL, 'MC', '2024-07-10 16:45:22', '2024-07-10 16:45:22');
INSERT INTO `QuestionBankings` VALUES (283, 33, 'Câu 29: Trong nhiều bài nói, bài viết, Hồ Chí Minh đã nêu lên “5 đức tính tốt” chủ yếu của ngươi cán bộ cách mạng. Đó là các đức tính nào?', NULL, 'MC', '2024-07-10 16:45:24', '2024-07-10 16:45:24');
INSERT INTO `QuestionBankings` VALUES (284, 33, 'Câu 30: Hồ Chí Minh có bao nhiêu tên gọi và bút danh?', NULL, 'MC', '2024-07-10 16:45:25', '2024-07-10 16:45:25');
INSERT INTO `QuestionBankings` VALUES (285, 33, 'Câu 1: Huyện Bình Khê, nơi cụ Nguyễn Sinh Sắc, thân phụ của Hồ Chí Minh có thời kỳ làm quan tri huyện thuộc tỉnh nào?', NULL, 'MC', '2024-07-10 16:47:45', '2024-07-10 16:47:45');
INSERT INTO `QuestionBankings` VALUES (286, 33, 'Câu 2: Thân mẫu của Hồ Chí Minh là bà Hoàng Thị Loan, Bà sinh được mấy người con?', NULL, 'MC', '2024-07-10 16:47:46', '2024-07-10 16:47:46');
INSERT INTO `QuestionBankings` VALUES (287, 33, 'Câu 3: Nguyễn Ái Quốc vào Đảng Xã Hội Pháp năm nào?', NULL, 'MC', '2024-07-10 16:47:47', '2024-07-10 16:47:47');
INSERT INTO `QuestionBankings` VALUES (288, 33, 'Câu 4: Nguyễn Ái Quốc gửi bản “Yêu sách của nhân dân An Nam” tới Hội nghị Vecxay vào ngày tháng năm nào?', NULL, 'MC', '2024-07-10 16:47:48', '2024-07-10 16:47:48');
INSERT INTO `QuestionBankings` VALUES (289, 33, 'Câu 5: Nguyễn Sinh Cung đổi tên là Nguyễn Tất Thành năm nào?', NULL, 'MC', '2024-07-10 16:47:49', '2024-07-10 16:47:49');
INSERT INTO `QuestionBankings` VALUES (290, 33, 'Câu 6: Nguyễn Tất Thành lấy tên là Nguyễn Ái Quốc vào thời gian nào?', NULL, 'MC', '2024-07-10 16:47:50', '2024-07-10 16:47:50');
INSERT INTO `QuestionBankings` VALUES (291, 33, 'Câu 7: Nguyễn Ái Quốc đã thành lập Hội Việt Nam Cách mạng Thanh niên vào thời gian nào, ở đâu ?', NULL, 'MC', '2024-07-10 16:47:51', '2024-07-10 16:47:51');
INSERT INTO `QuestionBankings` VALUES (292, 33, 'Câu 8: Bản chất của chủ nghĩa tư bản được Bác ví như là “Con đỉa có hai cái vòi, một cái vòi bám vào giai cấp vô sản ở chính quốc, một cái vòi bám vào giai cấp vô sản ở thuộc địa. Nếu muốn giết con vật ấy, người ta phải đồng thời cắt cả hai cái vòi...”. Đoạn trích này dược trích trong tác phẩm nào của Nguyễn Ái Quốc?', NULL, 'MC', '2024-07-10 16:47:52', '2024-07-10 16:47:52');
INSERT INTO `QuestionBankings` VALUES (293, 33, 'Câu 9: Giai đoạn hình thành tư tưởng yêu nước và chí hướng cách mạng của Hồ Chí Minh là giai đoạn nào?', NULL, 'MC', '2024-07-10 16:47:53', '2024-07-10 16:47:53');
INSERT INTO `QuestionBankings` VALUES (294, 33, 'Câu 10: Giai đoạn Hồ Chí Minh vượt qua khó khăn, thử thách, kiên trì con đường cách mạng Việt Nam là giai đoạn nào?', NULL, 'MC', '2024-07-10 16:47:54', '2024-07-10 16:47:54');
INSERT INTO `QuestionBankings` VALUES (295, 33, 'Câu 11: Địa danh đầu tiên Hồ Chí Minh đạt chân đến khi mới về nước , tại Cột móc 108 trên biên giới Việt - Trung thuộc huyện nào của tỉnh nào?', NULL, 'MC', '2024-07-10 16:47:55', '2024-07-10 16:47:55');
INSERT INTO `QuestionBankings` VALUES (296, 33, 'Câu 12: “Hỡi đồng bào yêu quý! Giờ quyết đinh cho vận mệnh dân tộc đã đến. Tòan quốc đồng bào hãy đứng dậy đem sức ta mà giải phóng cho ta”. Đoạn văn trên dược trích từ văn kiện nào?', NULL, 'MC', '2024-07-10 16:47:56', '2024-07-10 16:47:56');
INSERT INTO `QuestionBankings` VALUES (297, 33, 'Câu 13: “Không chúng ta thà hy sinh tất cả, chứ nhất định không chịu mất nuớc, nhất định không chịu làm nô lệ”. Lời khẳng định đanh thép này được trích trong “Lời kêu gọi toàn quốc kháng chiến” của Hồ Chí Minh. Lời kêu gọi đó được viết vào thời gian nào?', NULL, 'MC', '2024-07-10 16:47:57', '2024-07-10 16:47:57');
INSERT INTO `QuestionBankings` VALUES (298, 33, 'Câu 14: “Dân tộc ta, nhân dân ta, non sông đất nước ta đã sinh ra Hồ Chủ Tịch, người anh hùng dân tộc vĩ đại, và chính người đã làm rạng rỡ dân tộc ta, nhân dân ta và non sông đất nước ta”. Nhận định trên ở trong văn kiện nào?', NULL, 'MC', '2024-07-10 16:47:58', '2024-07-10 16:47:58');
INSERT INTO `QuestionBankings` VALUES (299, 33, 'Câu 15: “Đoàn viên và thanh niên ta nói chung là tốt, mọi việc đều hăng háy xung phong, không ngại khó khăn, có chí tiến thủ. Đảng cần phải chăm lo giáo dục đạo đức cách mạng cho họ, đào tạo họ thành những người thừa kế xây dựng chủ nghĩa xã hội “vừa hồng vừa chuyên”. Câu nói đó của Hồ Chí Minh trong văn kiện nào?', NULL, 'MC', '2024-07-10 16:47:59', '2024-07-10 16:47:59');
INSERT INTO `QuestionBankings` VALUES (300, 33, 'Câu 16: Theo Hồ Chí Minh ưu điểm lớn nhất trong học thuyết của Khổng Tử là gì?', NULL, 'MC', '2024-07-10 16:48:00', '2024-07-10 16:48:00');
INSERT INTO `QuestionBankings` VALUES (301, 33, 'Câu 17: Theo Hồ Chí Minh, học Chủ nghĩa Mác – Lênin để làm gì?', NULL, 'MC', '2024-07-10 16:48:01', '2024-07-10 16:48:01');
INSERT INTO `QuestionBankings` VALUES (302, 33, 'Câu 18: Chọn cụm từ đúng điền vào chỗ trống: “Rằng đây bốn biển một nhà ...... đều là anh em', NULL, 'MC', '2024-07-10 16:48:02', '2024-07-10 16:48:02');
INSERT INTO `QuestionBankings` VALUES (303, 33, 'Câu 19: Chọn phương án trả lời đúng cho câu hởi sau: cách mạng giải phóng dân tộc có khả năng chủ động giành thắng lợi trước cách mạng vô sản ở chính quốc vì:', NULL, 'MC', '2024-07-10 16:48:03', '2024-07-10 16:48:03');
INSERT INTO `QuestionBankings` VALUES (304, 33, 'Câu 20: Chọn cấu trả lời đúng với tư tưởng Hồ Chí Minh', NULL, 'MC', '2024-07-10 16:48:04', '2024-07-10 16:48:04');
INSERT INTO `QuestionBankings` VALUES (305, 33, 'Câu 21: Hồ Chí Minh đã dùng hình tượng nào dưới đây để chỉ chủ nghĩa tư bản?', NULL, 'MC', '2024-07-10 16:48:05', '2024-07-10 16:48:05');
INSERT INTO `QuestionBankings` VALUES (306, 33, 'Câu 22: Trong lời kết thúc buổi ra mắt của Đảng Lao Động, Hồ Chí Minh nói: “Mục đích của Đảng Lao Động Việt Nam có thể gồm trong tám chữ là: ĐOÀN KẾT TOÀN DÂN, PHỤNG SỰ TỔ QUỐC”. Buổi ra mắt đó vào lúc nào?', NULL, 'MC', '2024-07-10 16:48:06', '2024-07-10 16:48:06');
INSERT INTO `QuestionBankings` VALUES (307, 33, 'Câu 23: Ngày 27/5/1946, Hội đồng Chính phủ đã quyết định chọn ai thay Hồ Chí Minh giữ chức vụ Chủ Tịch nước trong thời gian người đi vắng?', NULL, 'MC', '2024-07-10 16:48:07', '2024-07-10 16:48:07');
INSERT INTO `QuestionBankings` VALUES (308, 33, 'Câu 24: Hồ Chí Minh đã dùng bút danh gì để viết tác phẩm “Sửa đổi lối làm việc”?', NULL, 'MC', '2024-07-10 16:48:08', '2024-07-10 16:48:08');
INSERT INTO `QuestionBankings` VALUES (309, 33, 'Câu 25: Theo Hồ Chí Minh cách mạng giải phóng dân tộc muốn giành được thắng lợi phải đi theo con đường nào?', NULL, 'MC', '2024-07-10 16:48:09', '2024-07-10 16:48:09');
INSERT INTO `QuestionBankings` VALUES (310, 33, 'Câu 26: Chọn câu trả lời đúng nhât với tư tưởng Hồ Chí Minh', NULL, 'MC', '2024-07-10 16:48:10', '2024-07-10 16:48:10');
INSERT INTO `QuestionBankings` VALUES (311, 33, 'Câu 27: Chọn cụm từ đúng điền vào dấu... “Làm cách mệnh rồi thì quyền giao cho ..., chớ để trong tay một bọn ít người”.', NULL, 'MC', '2024-07-10 16:48:11', '2024-07-10 16:48:11');
INSERT INTO `QuestionBankings` VALUES (312, 33, 'Câu 28: Loại giặc Hồ Chí Minh cho là “giặc nội xâm” là:', NULL, 'MC', '2024-07-10 16:48:12', '2024-07-10 16:48:12');
INSERT INTO `QuestionBankings` VALUES (313, 33, 'Câu 29: Trong nhiều bài nói, bài viết, Hồ Chí Minh đã nêu lên “5 đức tính tốt” chủ yếu của ngươi cán bộ cách mạng. Đó là các đức tính nào?', NULL, 'MC', '2024-07-10 16:48:13', '2024-07-10 16:48:13');
INSERT INTO `QuestionBankings` VALUES (314, 33, 'Câu 30: Hồ Chí Minh có bao nhiêu tên gọi và bút danh?', NULL, 'MC', '2024-07-10 16:48:14', '2024-07-10 16:48:14');

-- ----------------------------
-- Table structure for Units
-- ----------------------------
DROP TABLE IF EXISTS `Units`;
CREATE TABLE `Units`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `competitionId` int NOT NULL,
  `isDeleted` tinyint(1) NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `competitionId`(`competitionId` ASC) USING BTREE,
  CONSTRAINT `Units_ibfk_1` FOREIGN KEY (`competitionId`) REFERENCES `Competitions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Units
-- ----------------------------
INSERT INTO `Units` VALUES (3, 'chua ', 10, 0, '2024-07-05 15:19:32', '2024-07-06 05:26:54');
INSERT INTO `Units` VALUES (4, 'd', 10, 0, '2024-07-05 15:19:32', '2024-07-05 15:19:32');
INSERT INTO `Units` VALUES (16, 'trọng đức', 19, 0, '2024-07-08 16:18:22', '2024-07-08 16:18:22');
INSERT INTO `Units` VALUES (17, 'vũ mập', 19, 0, '2024-07-08 16:18:43', '2024-07-08 16:18:43');
INSERT INTO `Units` VALUES (18, 'nhi', 19, 0, '2024-07-08 16:20:21', '2024-07-08 16:20:21');
INSERT INTO `Units` VALUES (19, 'A,B,C', 69, 0, '2024-07-10 16:19:07', '2024-07-10 16:19:07');
INSERT INTO `Units` VALUES (20, 'A', 69, 0, '2024-07-10 16:21:51', '2024-07-10 16:21:51');
INSERT INTO `Units` VALUES (21, 'B', 69, 0, '2024-07-10 16:21:58', '2024-07-10 16:21:58');

-- ----------------------------
-- Table structure for UserAnswers
-- ----------------------------
DROP TABLE IF EXISTS `UserAnswers`;
CREATE TABLE `UserAnswers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `questionId` int NOT NULL,
  `chosenOption` int NULL DEFAULT NULL,
  `correctOption` int NOT NULL,
  `isCorrect` tinyint(1) NULL DEFAULT NULL,
  `typeQuestion` enum('MC','ESSAY') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `participantId` int NOT NULL,
  `answerText` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `questionId`(`questionId` ASC) USING BTREE,
  INDEX `correctOption`(`correctOption` ASC) USING BTREE,
  INDEX `participantId`(`participantId` ASC) USING BTREE,
  CONSTRAINT `UserAnswers_ibfk_10` FOREIGN KEY (`questionId`) REFERENCES `QuestionBankings` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `UserAnswers_ibfk_11` FOREIGN KEY (`correctOption`) REFERENCES `AnswerBankings` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `UserAnswers_ibfk_12` FOREIGN KEY (`participantId`) REFERENCES `Participants` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of UserAnswers
-- ----------------------------
INSERT INTO `UserAnswers` VALUES (1, 198, 782, 785, 0, 'MC', 5, NULL, '2024-07-06 14:19:51', '2024-07-06 14:19:51');
INSERT INTO `UserAnswers` VALUES (2, 199, 788, 788, 1, 'MC', 5, NULL, '2024-07-06 14:19:51', '2024-07-06 14:19:51');
INSERT INTO `UserAnswers` VALUES (3, 198, 785, 785, 1, 'MC', 6, NULL, '2024-07-06 15:38:50', '2024-07-06 15:38:50');
INSERT INTO `UserAnswers` VALUES (4, 199, 788, 789, 0, 'MC', 6, NULL, '2024-07-06 15:38:50', '2024-07-06 15:38:50');
INSERT INTO `UserAnswers` VALUES (5, 198, 785, 785, 1, 'MC', 7, NULL, '2024-07-06 15:40:09', '2024-07-06 15:40:09');
INSERT INTO `UserAnswers` VALUES (6, 199, 788, 789, 0, 'MC', 7, NULL, '2024-07-06 15:40:09', '2024-07-06 15:40:09');
INSERT INTO `UserAnswers` VALUES (7, 198, 785, 785, 1, 'MC', 8, NULL, '2024-07-06 15:41:27', '2024-07-06 15:41:27');
INSERT INTO `UserAnswers` VALUES (8, 199, 789, 789, 1, 'MC', 8, NULL, '2024-07-06 15:41:27', '2024-07-06 15:41:27');
INSERT INTO `UserAnswers` VALUES (9, 198, 783, 785, 0, 'MC', 9, NULL, '2024-07-07 14:40:59', '2024-07-07 14:40:59');
INSERT INTO `UserAnswers` VALUES (10, 199, 786, 789, 0, 'MC', 9, NULL, '2024-07-07 14:40:59', '2024-07-07 14:40:59');
INSERT INTO `UserAnswers` VALUES (11, 198, 783, 785, 0, 'MC', 10, NULL, '2024-07-07 14:56:23', '2024-07-07 14:56:23');
INSERT INTO `UserAnswers` VALUES (12, 199, 786, 789, 0, 'MC', 10, NULL, '2024-07-07 14:56:23', '2024-07-07 14:56:23');
INSERT INTO `UserAnswers` VALUES (13, 198, 782, 785, 0, 'MC', 12, NULL, '2024-07-08 02:24:43', '2024-07-08 02:24:43');
INSERT INTO `UserAnswers` VALUES (14, 199, 788, 789, 0, 'MC', 12, NULL, '2024-07-08 02:24:43', '2024-07-08 02:24:43');
INSERT INTO `UserAnswers` VALUES (15, 198, 782, 785, 0, 'MC', 13, NULL, '2024-07-08 03:17:21', '2024-07-08 03:17:21');
INSERT INTO `UserAnswers` VALUES (16, 199, 787, 789, 0, 'MC', 13, NULL, '2024-07-08 03:17:21', '2024-07-08 03:17:21');
INSERT INTO `UserAnswers` VALUES (17, 198, 784, 785, 0, 'MC', 14, NULL, '2024-07-08 03:18:14', '2024-07-08 03:18:14');
INSERT INTO `UserAnswers` VALUES (18, 199, 788, 789, 0, 'MC', 14, NULL, '2024-07-08 03:18:14', '2024-07-08 03:18:14');
INSERT INTO `UserAnswers` VALUES (19, 198, 783, 785, 0, 'MC', 15, NULL, '2024-07-08 03:18:56', '2024-07-08 03:18:56');
INSERT INTO `UserAnswers` VALUES (20, 199, 789, 789, 1, 'MC', 15, NULL, '2024-07-08 03:18:56', '2024-07-08 03:18:56');
INSERT INTO `UserAnswers` VALUES (21, 198, 785, 785, 1, 'MC', 16, NULL, '2024-07-08 03:19:52', '2024-07-08 03:19:52');
INSERT INTO `UserAnswers` VALUES (22, 199, 789, 789, 1, 'MC', 16, NULL, '2024-07-08 03:19:52', '2024-07-08 03:19:52');
INSERT INTO `UserAnswers` VALUES (23, 198, 782, 785, 0, 'MC', 17, NULL, '2024-07-08 03:41:22', '2024-07-08 03:41:22');
INSERT INTO `UserAnswers` VALUES (24, 199, 788, 789, 0, 'MC', 17, NULL, '2024-07-08 03:41:22', '2024-07-08 03:41:22');
INSERT INTO `UserAnswers` VALUES (25, 198, 782, 785, 0, 'MC', 18, NULL, '2024-07-08 03:43:03', '2024-07-08 03:43:03');
INSERT INTO `UserAnswers` VALUES (26, 199, 787, 789, 0, 'MC', 18, NULL, '2024-07-08 03:43:03', '2024-07-08 03:43:03');
INSERT INTO `UserAnswers` VALUES (27, 198, 785, 785, 1, 'MC', 19, NULL, '2024-07-08 03:46:45', '2024-07-08 03:46:45');
INSERT INTO `UserAnswers` VALUES (28, 199, 787, 789, 0, 'MC', 19, NULL, '2024-07-08 03:46:45', '2024-07-08 03:46:45');
INSERT INTO `UserAnswers` VALUES (29, 198, 783, 785, 0, 'MC', 20, NULL, '2024-07-08 03:47:34', '2024-07-08 03:47:34');
INSERT INTO `UserAnswers` VALUES (30, 199, 786, 789, 0, 'MC', 20, NULL, '2024-07-08 03:47:34', '2024-07-08 03:47:34');
INSERT INTO `UserAnswers` VALUES (31, 198, 782, 785, 0, 'MC', 21, NULL, '2024-07-08 03:50:25', '2024-07-08 03:50:25');
INSERT INTO `UserAnswers` VALUES (32, 199, 786, 789, 0, 'MC', 21, NULL, '2024-07-08 03:50:25', '2024-07-08 03:50:25');
INSERT INTO `UserAnswers` VALUES (33, 198, 783, 785, 0, 'MC', 22, NULL, '2024-07-08 03:51:01', '2024-07-08 03:51:01');
INSERT INTO `UserAnswers` VALUES (34, 199, 787, 789, 0, 'MC', 22, NULL, '2024-07-08 03:51:01', '2024-07-08 03:51:01');
INSERT INTO `UserAnswers` VALUES (35, 198, 784, 785, 0, 'MC', 24, NULL, '2024-07-08 04:13:35', '2024-07-08 04:13:35');
INSERT INTO `UserAnswers` VALUES (36, 199, 789, 789, 1, 'MC', 24, NULL, '2024-07-08 04:13:35', '2024-07-08 04:13:35');
INSERT INTO `UserAnswers` VALUES (37, 198, 784, 785, 0, 'MC', 25, NULL, '2024-07-08 04:14:46', '2024-07-08 04:14:46');
INSERT INTO `UserAnswers` VALUES (38, 199, 787, 789, 0, 'MC', 25, NULL, '2024-07-08 04:14:46', '2024-07-08 04:14:46');
INSERT INTO `UserAnswers` VALUES (39, 198, 782, 785, 0, 'MC', 26, NULL, '2024-07-08 07:19:06', '2024-07-08 07:19:06');
INSERT INTO `UserAnswers` VALUES (40, 199, 789, 789, 1, 'MC', 26, NULL, '2024-07-08 07:19:06', '2024-07-08 07:19:06');
INSERT INTO `UserAnswers` VALUES (41, 198, 782, 785, 0, 'MC', 27, NULL, '2024-07-08 07:45:00', '2024-07-08 07:45:00');
INSERT INTO `UserAnswers` VALUES (42, 199, 788, 789, 0, 'MC', 27, NULL, '2024-07-08 07:45:00', '2024-07-08 07:45:00');
INSERT INTO `UserAnswers` VALUES (43, 198, 782, 785, 0, 'MC', 28, NULL, '2024-07-08 07:50:34', '2024-07-08 07:50:34');
INSERT INTO `UserAnswers` VALUES (44, 199, 787, 789, 0, 'MC', 28, NULL, '2024-07-08 07:50:34', '2024-07-08 07:50:34');
INSERT INTO `UserAnswers` VALUES (45, 198, 782, 785, 0, 'MC', 29, NULL, '2024-07-08 09:49:47', '2024-07-08 09:49:47');
INSERT INTO `UserAnswers` VALUES (46, 199, 788, 789, 0, 'MC', 29, NULL, '2024-07-08 09:49:47', '2024-07-08 09:49:47');
INSERT INTO `UserAnswers` VALUES (47, 198, 782, 785, 0, 'MC', 31, NULL, '2024-07-09 12:24:53', '2024-07-09 12:24:53');
INSERT INTO `UserAnswers` VALUES (48, 199, 787, 789, 0, 'MC', 31, NULL, '2024-07-09 12:24:53', '2024-07-09 12:24:53');
INSERT INTO `UserAnswers` VALUES (49, 212, 836, 835, 0, 'MC', 32, NULL, '2024-07-09 17:53:05', '2024-07-09 17:53:05');
INSERT INTO `UserAnswers` VALUES (50, 213, 838, 838, 1, 'MC', 32, NULL, '2024-07-09 17:53:05', '2024-07-09 17:53:05');
INSERT INTO `UserAnswers` VALUES (51, 198, 782, 785, 0, 'MC', 33, NULL, '2024-07-10 00:07:53', '2024-07-10 00:07:53');
INSERT INTO `UserAnswers` VALUES (52, 199, 786, 789, 0, 'MC', 33, NULL, '2024-07-10 00:07:53', '2024-07-10 00:07:53');
INSERT INTO `UserAnswers` VALUES (53, 198, 783, 785, 0, 'MC', 35, NULL, '2024-07-11 08:06:26', '2024-07-11 08:06:26');
INSERT INTO `UserAnswers` VALUES (54, 199, 787, 789, 0, 'MC', 35, NULL, '2024-07-11 08:06:26', '2024-07-11 08:06:26');

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` enum('user','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'user',
  `isDeleted` tinyint(1) NULL DEFAULT 0,
  `refreshToken` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Users
-- ----------------------------
INSERT INTO `Users` VALUES (1, 'admin', '$2a$12$LC/nvzm6W4ZncA7DlzySGO6FJXVmqg2fkooIxzqptycGHhvD7ScO2', NULL, 'admin@gmail.com', 'admin', 0, NULL, '2024-07-03 19:34:07', '2024-07-11 15:43:08', NULL);
INSERT INTO `Users` VALUES (2, 'Nhan Pham', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocLOBipCkCbDaGeUL3Hm7OQYwvHa9jrwcDI0Mp2CodMdkTKCEQ=s96-c', 'pltnhan311.pro@gmail.com', 'user', 0, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiZW1haWwiOiJwbHRuaGFuMzExLnByb0BnbWFpbC5jb20iLCJyb2xlIjoidXNlciIsImlhdCI6MTcyMDEwNjE1OSwiZXhwIjoxNzIxNDAyMTU5fQ.A-mC2EzR7PIP1-5_kHFRuQhUyII1LnTebe05uuuJLpI', '2024-07-04 14:55:01', '2024-07-04 15:15:59', NULL);
INSERT INTO `Users` VALUES (22, 'Nhân Phạm', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocL0-rXPm65sLYYRuTtqSzx17bTg8OGaQY_Asjsam3zgAumcyg=s96-c', 'nhanta311@gmail.com', 'user', 0, NULL, '2024-07-08 08:30:10', '2024-07-09 03:52:27', NULL);
INSERT INTO `Users` VALUES (23, 'Hợp Kiên Trần', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocI1xrsWZu9OL5Qq8Lz6n76DELf_E-ISv93lBcRNP4baTqSN0QAA=s96-c', 'kienlun1100@gmail.com', 'user', 0, NULL, '2024-07-09 03:52:24', '2024-07-09 14:47:23', NULL);

SET FOREIGN_KEY_CHECKS = 1;
