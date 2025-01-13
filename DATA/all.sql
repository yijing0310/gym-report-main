CREATE DATABASE gym_database;
USE gym_database;

-- 創建 gym 資料表，將營業星期放在開門時間前面
CREATE TABLE gyms (
  gym_id  SERIAL PRIMARY KEY,        
  name VARCHAR(255) NOT NULL,        
  address VARCHAR(255),            
  business_days TEXT,  -- 營業星期，存儲為逗號分隔的字串
  opening_hours TIME,              
  closing_hours TIME,  -- 結束營業時間
  description TEXT,  -- 描述
  contact_info VARCHAR(50),               
  email VARCHAR(255),  -- 電子郵件
  manager VARCHAR(50),  -- 負責人
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- 自動記錄創建時間
);

-- 插入資料，營業星期作為逗號分隔字串
INSERT INTO gyms (name, address, business_days, opening_hours, closing_hours, description, contact_info, email, manager)
VALUES
('健身房A', '台南市中華東路100號', 'Monday, Tuesday, Wednesday, Thursday, Friday', '08:00:00', '22:00:00', '提供各類健身器材，適合健身初學者與進階者使用，並提供專業指導課程。', '06-1234-5678', 'contactA@gym.com', '王大明'),
('健身房B', '台南市永康區中正路200號', 'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday', '07:00:00', '23:00:00', '擁有先進的重訓設備及寬敞的游泳池，設有個人化健身計劃設計服務。', '06-2345-6789', 'contactB@gym.com', '李小華'),
('健身房C', '台南市安平區建國路300號', 'Tuesday, Wednesday, Thursday, Friday, Saturday', '06:30:00', '21:30:00', '提供多樣的有氧運動課程及高效的跑步機，環境清新舒適。', '06-3456-7890', 'contactC@gym.com', '張志強'),
('健身房D', '台南市北區成功路400號', 'Monday, Wednesday, Friday, Saturday', '09:00:00', '20:00:00', '專業拳擊訓練課程、自由重訓區，專注於力量與耐力的提升。', '06-4567-8901', 'contactD@gym.com', '陳美麗'),
('健身房E', '台南市西區府前路500號', 'Monday, Tuesday, Wednesday, Thursday, Friday', '08:00:00', '22:30:00', '提供各式團體課程及無氧設備，讓您更有效率地達成健身目標。', '06-5678-9012', 'contactE@gym.com', '林俊杰');

-- 文章列表 
CREATE TABLE articles (
    article_id INTEGER PRIMARY KEY auto_increment,
    title VARCHAR(255),
    content TEXT,
    author_id INTEGER,
    uploadStatus INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- 最新消息 
INSERT INTO articles (title, content, author_id,uploadStatus) VALUES
('如何開始健身：初學者指南', '健身對許多人來說是個全新的挑戰，對於初學者而言，最重要的是從基礎開始，避免過度訓練而受傷。本文將介紹如何開始健身，包括選擇適合自己的運動項目、如何安排每週的訓練計劃、以及訓練前後應該注意的事項。對於初學者，最好的建議是從輕度的有氧運動和基礎力量訓練入手，逐步增加強度與挑戰。', 1,0),
('健身與飲食的關聯性', '很多人會認為只要多運動就能保持健康或減重，但其實飲食在健身過程中扮演著更為關鍵的角色。本文將深入探討運動和飲食的關係，從蛋白質的攝取到碳水化合物和脂肪的平衡，幫助你了解如何通過調整飲食來提升健身效果。飲食應該根據個人的健身目標來調整，增肌的人需要更多的蛋白質，而減脂的人則需要控制碳水化合物的攝取量。', 2,1),
('高效燃脂的運動方式', '如果你的目標是燃燒脂肪，選擇正確的運動方式至關重要。本文將介紹幾種高效的燃脂運動，包括有氧運動（如跑步、游泳、騎自行車等）和高強度間歇訓練（HIIT）。這些運動不僅能幫助你在訓練中燃燒大量卡路里，還能提高新陳代謝，讓你在運動後持續燃燒脂肪。了解每種運動的特點，選擇最適合自己的方式，並且搭配適當的飲食，才能達到最佳燃脂效果。', 3,1),
('增肌飲食建議：如何增加肌肉量', '增肌不僅僅是進行重量訓練，更重要的是合理的飲食計劃。本文將分享一些增肌飲食的基本原則，包括高蛋白飲食、適量的碳水化合物和健康的脂肪來源。增肌期間應該攝取足夠的蛋白質以支持肌肉修復與增長，並且保持熱量盈餘來促進肌肉的合成。此外，飲食時間的安排也很關鍵，運動前後攝取合適的營養有助於增肌效果。', 4,1),
('如何避免健身過度訓練', '過度訓練是許多健身愛好者的常見問題，尤其是對於那些熱衷於快速達到健身目標的人來說。過度訓練會導致身體疲勞、免疫力下降、以及肌肉受傷。本文將討論如何避免過度訓練，並介紹有效的休息與恢復策略。合理安排訓練頻率、避免重複高強度訓練、並且注意聽從身體的信號，這些都是防止過度訓練的關鍵。', 5,1),
('每週健身計劃：如何設置訓練目標', '設定一個具體的每週健身計劃是達到健身目標的關鍵。本文將教你如何根據自己的目標設置一個合理的每週訓練計劃，無論你的目標是減脂、增肌還是提高耐力。建立一個合理的訓練計劃不僅要考慮運動類型，還要充分考慮休息與恢復的時間，以避免過度訓練。每週的計劃應該有足夠的挑戰性，同時保持可持續性，這樣才能達到長期的健身效果。', 1,0),
('居家健身器材推薦', '無需去健身房，居家也可以輕鬆進行高效訓練。本文將介紹幾款推薦的居家健身器材，包括啞鈴、彈力帶、壺鈴和瑜伽墊等，這些器材可以幫助你進行力量訓練、拉伸和瑜伽等各類運動。適合居家的健身器材不僅佔用空間小，而且價格相對便宜，是提升健身效果的好幫手。了解如何利用這些器材進行不同的運動，幫助你在家也能保持健康與身形。', 2,0),
('運動後如何進行恢復', '運動後的恢復過程對於增強訓練效果及防止受傷至關重要。本文將探討運動後應該做哪些恢復工作，包括伸展、按摩、補充水分、補充營養等。適當的恢復不僅能緩解肌肉酸痛，還能促進肌肉的修復與增長。本文將提供一些具體的恢復技巧，如使用泡沫軸進行自我按摩，或者進行低強度的有氧運動來促進血液循環。', 3,1),
('核心肌群訓練：必做的幾個動作', '強健的核心肌群對於日常生活中的動作和運動表現至關重要。本文將介紹幾個經典且高效的核心訓練動作，包括平板支撐、俄式轉體、死蟲式等。這些動作可以幫助你提升腹部、背部和髖部的穩定性，對於提高運動表現和預防運動傷害都有極大幫助。每週進行幾次核心訓練，讓你的核心更加穩定，動作更流暢。', 4,1),
('有氧運動與重量訓練的區別', '有氧運動和重量訓練在健身中的作用各有不同。本文將分析有氧運動（如跑步、游泳）與重量訓練（如舉重、阻力訓練）的區別，並討論它們對健身目標的影響。有氧運動有助於提升心肺功能，增強耐力，而重量訓練則有助於增強肌肉力量與增肌。了解它們的不同，可以根據自己的目標選擇適合的運動方式，並將兩者結合起來達到全面的健身效果。', 5,1),
('健身中的常見誤區', '在健身過程中，許多人會犯一些常見的誤區，這些誤區可能會影響到健身效果，甚至導致受傷。本文將列舉一些常見的健身誤區，包括過度依賴有氧運動、忽略力量訓練、過度訓練等，並提供如何避免這些誤區的建議。了解這些誤區，幫助你更加科學、有效地進行訓練，從而達到最佳的健身效果。', 1,0),
('如何提高運動表現：訓練技巧分享', '想要提高運動表現，除了勤加練習，還需要掌握一些訓練技巧。本文將分享一些提升運動表現的小技巧，包括如何正確進行熱身、如何安排訓練計劃、如何進行有效的力量訓練等。掌握這些技巧，能夠讓你的訓練更加高效，提升運動表現，達到更好的健身效果。', 2,0),
('健身中的營養補充：你需要知道的事情', '健身時，適當的營養補充至關重要，特別是蛋白質的攝取。本文將介紹健身過程中的營養補充，包括運動前後如何補充營養，補充蛋白質的最佳時間，以及如何根據訓練強度選擇合適的營養品。合理的營養補充能幫助你的肌肉更快恢復，達到更好的增肌效果。', 3,1),
('減重期間如何保持肌肉量', '在減重的過程中，如何保持肌肉量是非常關鍵的。本文將分享一些保持肌肉量的技巧，包括如何設計訓練計劃、如何進行合理的飲食調整、以及如何避免過度減少熱量攝取等。保持足夠的蛋白質攝取並搭配力量訓練，是減重期間保持肌肉量的關鍵。', 4,1),
('簡單的伸展運動，預防運動傷害', '伸展運動對於預防運動傷害非常重要，尤其是進行高強度訓練或長時間坐著工作後。本文將介紹一些簡單易學的伸展動作，幫助你保持肌肉的靈活性和彈性。這些動作可以幫助你減少受傷的風險，並促進肌肉的恢復。', 5,0),
('如何使用健身追蹤器來提高訓練效果', '健身追蹤器能幫助你更好地監控訓練過程，進一步提升運動效果。本文將介紹如何使用健身追蹤器來測量心率、計算卡路里消耗、跟蹤訓練進度等。通過數據分析，你可以更精確地了解自己訓練的強度與效果，從而做出調整，提升健身效果。', 1,1),
('有效的肌肉恢復方法：放鬆與按摩技巧', '運動後的肌肉恢復是提高訓練效果的關鍵。本文將介紹一些有效的肌肉恢復方法，包括使用泡沫軸進行自我按摩、深層組織按摩以及靜態拉伸等。這些方法能幫助放鬆肌肉，減少酸痛，並加速肌肉恢復。', 2,0),
('為什麼你的健身計劃無法成功？', '很多人都會在健身計劃開始時充滿熱情，但過了一段時間後發現成效不如預期。本文將分析為什麼健身計劃無法成功，並提供一些解決方案，幫助你克服困難，持之以恆。', 3,0);
-- 最新消息 
CREATE TABLE gym_news (
    news_id INT AUTO_INCREMENT PRIMARY KEY,  
    title VARCHAR(255) NOT NULL,                
    content TEXT NOT NULL,                      
    author_id INT NOT NULL,                      
    uploadStatus INT DEFAULT 0,                  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);
INSERT INTO gym_news (title, content, author_id, uploadStatus, created_at, updated_at) VALUES
('健身房最新開設瑜伽課程', '我們的健身房將於下個月開始提供瑜伽課程，歡迎大家報名參加！', 1, 1, NOW(), NOW()),
('夏季優惠活動開始了', '我們的夏季優惠活動開始了，現在報名即可享受9折優惠！', 2, 1, NOW(), NOW()),
('新的健身器材上架', '我們的健身房已經更新了全新的健身器材，快來體驗吧！', 3, 1, NOW(), NOW()),
('健身挑戰賽活動', '健身房將於下個月舉辦健身挑戰賽，獎品豐富，大家不要錯過！', 4, 1, NOW(), NOW()),
('節假日開放時間公告', '即將到來的節假日期間，健身房將按照特別時間營業，請查詢具體時間表。', 5, 1, NOW(), NOW()),
('加入我們的團隊，招聘健身教練', '我們正在招聘全職健身教練，如果你有健身經驗並熱愛這份工作，快來加入我們！', 6, 0, NOW(), NOW()),
('新設計健身房布局', '我們近期對健身房進行了重新設計，新增了更多運動空間，提升了整體的使用體驗。', 7, 1, NOW(), NOW()),
('健身房會員專屬優惠券', '健身房為所有會員提供專屬的優惠券，可在下次使用時享受折扣。', 8, 1, NOW(), NOW()),
('健康飲食講座即將開講', '我們將舉辦一次健康飲食講座，專家將分享如何在健身的同時保持均衡飲食。', 9, 1, NOW(), NOW()),
('健身房即將舉辦公益活動', '健身房將於下個月舉辦公益活動，邀請大家來一起參加，為社區貢獻愛心。', 10, 0, NOW(), NOW());
