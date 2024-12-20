-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: news_db
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (31,'Anamul Hasan Shanto','ahs123','ahs1@gmail.com','$2a$10$0jQbO9QCUjxilsL4YM/Fhuw04ItnQJn5dT0Ly94UXIvnT7vZ5E4h.','http://localhost:8080/uploads/admins/Anamul Hasan Shanto-2024-12-02-31.jpg'),(41,'Anamul Hasan Shanto','ahs','ahs@gmail.com','$2a$10$AdYxwTykNaGg/1JsQKNUlOYKy0xo2poP/bGxjZSdnVs/.iFo.O7Gq','http://localhost:8080/uploads/admins/Anamul Hasan Shanto-2024-12-02-41.jpg');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (9,'KTM 390 Duke','The KTM 390 Duke is a powerful and agile street bike with a 399cc single-cylinder engine that delivers impressive performance. Its lightweight chassis and modern suspension system make it incredibly nimble and fun to ride. The bike is packed with advanced features like ride-by-wire throttle, cornering ABS, and multiple riding modes, making it a great choice for both experienced riders and those new to the sport. With its aggressive styling, top-notch build quality, and cutting-edge technology, the KTM 390 Duke is a true performance machine that will leave you grinning from ear to ear.','http://localhost:8080/uploads/news/KTM 390 Duke_2024-11-06.jpg','Sports','2024-11-06'),(10,'Japan','Japan is an island nation located in East Asia, known for its rich history, culture, and technological advancements. It consists of four main islands: Honshu, Hokkaido, Kyushu, and Shikoku, along with many smaller islands. Tokyo, the capital city, is one of the most populous and technologically advanced cities in the world. Japan is renowned for its traditional arts, such as tea ceremonies, calligraphy, and kimono, as well as its modern contributions to global technology and entertainment. The country is famous for its cuisine, including sushi, ramen, and tempura. Japan also boasts breathtaking natural landscapes, from snow-capped mountains to serene gardens and hot springs. The country has a rich cultural heritage, deeply influenced by Shintoism and Buddhism. Japan\'s economy is one of the largest in the world, and it is a leader in automotive and electronics industries. The Japanese are known for their politeness, respect for tradition, and dedication to excellence. Japan has a fascinating blend of ancient traditions and cutting-edge modernity.','http://localhost:8080/uploads/news/Japan-2024-11-13.jpg','Entertainment','2024-11-13'),(11,'Bangladesh ','Bangladesh is a South Asian country bordered by India, Myanmar, and the Bay of Bengal. Its capital, Dhaka, is one of the most densely populated cities in the world. Bangladesh is known for its rich cultural heritage, with influences from Hindu, Buddhist, and Islamic traditions. The country gained independence in 1971 after a bloody war of independence against Pakistan. The official language is Bengali, and the majority of the population practices Islam. Bangladesh has a vibrant textile industry, being one of the largest garment exporters globally. The country is famous for its lush green landscapes, including the world\'s largest mangrove forest, the Sundarbans, home to the Bengal tiger. Rice, fish, and vegetables form the staple diet of Bangladeshis, with dishes like bhorta and panta bhat being popular. Despite facing challenges like poverty and natural disasters, Bangladesh has made significant strides in areas like education and healthcare. The people of Bangladesh are known for their resilience, warmth, and hospitality.','http://localhost:8080/uploads/news/Bangladesh -2024-11-13.jpg','Politics','2024-11-13'),(12,'Savar','”বংশাবতীর পূর্বতীরে সর্বেশ্বর নগরী\r\nবৈসে রাজা হরিশ্চন্দ্র জিনি সুরপুরী।”\r\nছড়াটিতে বংশাবতী বলতে আজকের বংশী ও সেকালের বংশাবতী নদীকেই বুঝাচ্ছে। যার পূর্বতীরে সর্বেশ্বর নগরী। এই নগরীর রাজা হরিশ্চন্দ্র। এ সময় তাঁর রাজ্য ছিল সুখ শান্তিতে ভরপুর। এই সুখময় রাজ্য সর্বেশ্বর নগরীর অপভ্রংশই আজকের সাভার। আবার কারো কারো মতে ইতিহাস খ্যাত পাল বংশীয় রাজা হরিশ্চন্দ্রের সর্বেশ্বর রাজ্যের রাজধানীর নাম ছিল সম্ভার এবং সম্ভার নাম থেকেই সাভার নামের উৎপত্তি। সাভার অতি প্রাচীন স্থলভূমি। ঢাকার ইতিহাসে দেখা যায় ধলেশ্বরী এবং বংশী নদীর সঙ্গম স্থলে বংশী নদীর পূর্বতটে ঢাকা থেকে ১৩ মাইল বায়ু কোনে অবস্থিত সাভার। খৃষ্টীয় অষ্টম শতাব্দী পর্যন্ত এই স্থান সম্ভাগ বা সম্ভাস প্রদেশের রাজধানী ছিল। ঢাকার ধামরাইয়ের উত্তর পশ্চিম কোনে সম্ভাগ নামে যে ক্ষুদ্র পল্লী আছে তা আজো সম্ভাগ প্রদেশের অতীত স্মৃতি বহন করে। বৌদ্ধ নৃপতিগণের শাসনাধীনে প্রাচীন সম্ভাগ তার বিপুল বৈভব ও প্রতাপে পরিপূর্ণ ছিল। সাভার বা সম্ভার নামের পূর্ব কথন বলে অনেক ঐতিহাসিক এই মতের সমর্থন করেন।\r\n\r\nযেহেতু বৌদ্ধ আমলের অসংখ্য বৌদ্ধ ধ্বংসস্তুপ ও বৌদ্ধ মূর্তি সাভার এলাকার মাটির নিচে আবিস্কৃত হয়েছে এবং আজও হচ্ছে সেহেতু ধরে নেয়া যায় যে বৌদ্ধ শাসনামলে এই শহর গড়ে উঠেছিল। গৌতমবুদ্ধ অথবা মৌয্য বংশের শ্রেষ্ঠ সম্রাট আশোকের সময়ও যদি এই রাজ্যের পত্তন হয়ে থাকে তবুও আজকের সাভারের বয়স দুই হাজার দুইশত বছরের অধিক। হরিশচন্দ্র পালই রাজা হরিশচন্দ্র নামে সাভারের সিংহাসনে আরোহণ করেন। রাজা হরিশচন্দ্রের রাজবাড়ী সাভারের পূর্বপাশে রাজাশন গ্রামের অবহেলিত এক কোনে মাটির নিচে চাপা পরে আছে। রাজাশনের আশপাশে লুপ্তপ্রায় বহু দীঘি, বৌদ্ধ স্থাপত্যের নিদর্শন রাজোদ্যান, খাল, পরিখা আজও কালের সাক্ষী হয়ে বিরাজমান। রাজার সেনানিবাস কোঠাবাড়ী সাভারের উত্তর পাশে অবস্থিত। রাজা হরিশ্চন্দ্রের এক রানী কর্ণবতীর নামে কর্ণপাড়া এবং অপর মহিষী ফুলেশ্বরীর নামে রাজফুলবাড়ীয়া সাভারের দক্ষিণে এক মাইল অন্তর অবস্থিত।\r\n\r\nদ্বাদশ শতাব্দীর মাঝামাঝি সময়ে বিজয় সেন পাল সাম্রাজ্যকে সমূলে ধ্বংস করে বাংলার সিংহাসনে বসেন। তার অত্যাচারে বৌদ্ধরা হয় মৃত্যবরণ করেন নতুবা দেশ ত্যাগে বাধ্য হন। কথিত মতে প্রাচীন সম্ভার রাজ্য ধ্বংস প্রাপ্ত হয়। এ সময় এ স্থান স্বর্বেশ্বর নগরী নামে প্রসিদ্ধি লাভ করে এবং ধর্মান্তরিত অবস্থায় পাল বংশীয় লোকেরাই সাভার শাসন করতে থাকে।\r\n\r\nময়নামতির তান্ত্রিক মহারানীর পুত্র গোপীনাথের সঙ্গে হরিশচন্দ্র রাজার জেষ্ঠা কন্যা অনুদার বিয়ে এবং কনিষ্ঠ কন্যা পদুনাকে যৌতুক প্রদানের গল্প কাহিনী সাভারের অনেকের কাছেই শোনা যায়। হরিশচন্দ্রের দ্বাদশ পুরুষ শিবচন্দ্র রায় তার শেষ জীবন কাশী গয়ায় অতিবাহিত করে প্রয়াত হন। শিবচন্দ্রের একাদশ পুরুষ তরুরাজ খাং এর প্রথম ও দ্বিতীয় পুত্র শুভরাজ ও যুবরাজ হুগলীতে চলে যান। তৃতীয় ও চতুর্থ পুত্র বুদ্ধিমন্ত ও ভাগ্যমন্ত পবিত্র ইসলাম ধর্ম গ্রহণ করেন। তাদের এক বংশধর সিদ্ধ পুরুষ খ্যাতি লাভ করেন এবং তার সমাধী কোন্ডা গ্রামে খন্দকারের দরগা নামে আজও বিদ্যমান।\r\n\r\nআরব উপত্যকায় সমুদ্র উপকূলবর্তী সাবাহ রাজ্যের (অর্থাৎ আজকের ইয়েমেন) প্রায় সাড়ে তিন হাজার বছর আগে ব্যবসা বাণিজ্যে বিশ্বজোড়া নাম ছিল। গ্রিক ঐতিহাসিকদের বিবরণিতে জানা যায় সাবাহর ব্যবসায়ীরা চীন, জাপান এবং কোরিয়ার সঙ্গে ব্যবসা করতো। সেই সময় আজকের সাভার ছিল সমুদ্র উপকূলবর্তী নগর। আসা যাওয়ার পথে সাবাহর ব্যবসায়ীরা বাণিজ্যতরীর নোঙ্গর ফেলতো সাভারের উপকূলে। সে সময় সাভার \'সাবাহর\' নামে পরিচিতি লাভ করে। \'সাবাহর\' অর্থাৎ স্বয়ম্ভর নগরী যেখানে সবকিছু পাওয়া যায়। সম্ভার, সভর, সম্ভোগ, সাবাহ-উর সব কয়টি নামের অর্থ সাদৃশ্যপূর্ণ অর্থাৎ স্বয়ম্ভর, স্বয়ংসম্পূর্ণ, আত্ননির্ভরশীল। তাই ইতিহাস থেকে বলা যায় সাভার অতি প্রাচীনকাল থেকেই সমৃদ্ধ এক অঞ্চল ছিল।\r\n\r\nসাভারে সর্বপ্রথম শিক্ষা ব্যবস্থার সূচনা করেন রাখালচন্দ্র সাহা। তিনি তাঁর পিতার নামে অধরচন্দ্র উচ্চ বিদ্যালয় প্রতিষ্ঠা করেন। তিনি মাতার নামে ছেলেদের থাকার বোর্ডিং, কাকার নামে মহেশচন্দ্র দাতব্য চিকিৎসালয় প্রতিষ্ঠা করেন। তিনি সাভারের দানবীর নামে পরিচিত।[৩]','http://localhost:8080/uploads/news/Savar-2024-11-22.jpg','Politics','2024-11-22'),(34,'Heavy Rains Flood Dhaka Streets, Disrupt Traffic','Dhaka, the capital of Bangladesh, experienced severe waterlogging on Sunday after hours of heavy rainfall, leaving residents struggling to navigate through submerged streets. The downpour, which began in the early morning hours, intensified throughout the day, causing widespread disruption to daily life and halting traffic in several areas of the city.\r\n\r\nKey roads in areas like Dhanmondi, Mirpur, and Motijheel were under several feet of water, forcing vehicles to stall and commuters to wade through knee-deep floodwaters. Public transportation came to a standstill, and ride-sharing services faced a surge in demand, further exacerbating the challenges faced by citizens.\r\n\r\nMany office-goers and students were forced to stay home due to the inaccessibility of roads. Residents living in low-lying areas reported water seeping into their homes, damaging property and raising concerns about the sanitation crisis that typically follows such floods.\r\n\r\nOfficials from the Dhaka Water Supply and Sewerage Authority (WASA) stated that they were working to clear the blocked drains that caused waterlogging in many areas. However, residents criticized the lack of adequate infrastructure to handle heavy rains, a recurring problem during the monsoon season.\r\n\r\n\"We have faced the same issue year after year, but no long-term solutions seem to be implemented,\" said Anwar Hossain, a resident of Dhanmondi.\r\n\r\nMeteorologists predict more rain in the coming days, urging citizens to take precautions and avoid unnecessary travel. Emergency services have been placed on alert to address any immediate needs arising from the situation.\r\n\r\nThis incident highlights the urgent need for sustainable urban planning and infrastructure upgrades in Dhaka to combat the recurring challenges posed by seasonal rains. Until then, residents continue to bear the brunt of a city struggling to adapt to nature’s fury.','http://localhost:8080/uploads/news/Heavy Rains Flood Dhaka Streets, Disrupt Traffic-2024-12-02.jpg','Random','2024-12-02'),(35,'Bangladesh Cricket Team Enters World Cup Semifinals','In a thrilling encounter at the ongoing ICC Cricket World Cup, the Bangladesh cricket team secured its place in the semifinals after defeating South Africa in a nail-biting match held at the iconic Eden Gardens stadium. This historic win marks a significant milestone for the team, showcasing their resilience and ability to compete at the highest levels of international cricket.\r\n\r\nBatting first, Bangladesh set an impressive target of 315 runs, led by a stellar century from their captain, Shakib Al Hasan. Shakib’s composed innings, combined with support from Litton Das and Mushfiqur Rahim, helped the team recover from an early setback after losing two quick wickets. The middle-order partnership ensured that the Tigers ended their innings on a high, with a flurry of boundaries in the final overs.\r\n\r\nSouth Africa, known for their aggressive batting lineup, started their chase strongly. However, Bangladesh\'s bowling attack, led by Mustafizur Rahman and Taskin Ahmed, dismantled the opposition with strategic deliveries and impeccable fielding. Mustafizur’s exceptional death-over bowling proved pivotal, restricting the South African batsmen in the last stretch of the match.\r\n\r\nThe win sparked celebrations across Bangladesh, with fans taking to the streets to express their joy. Social media platforms were flooded with congratulatory messages for the team, with #BangladeshTigers trending globally.\r\n\r\n\"This victory means a lot to us. We’ve worked hard as a team, and the support from our fans has been incredible,\" said Shakib during the post-match presentation.\r\n\r\nWith this win, Bangladesh has advanced to the semifinals for the first time in its cricketing history, bringing renewed hope and enthusiasm to its supporters. The Tigers will face a formidable opponent in the next round, but the team’s current form has left fans optimistic about their chances of clinching the coveted World Cup trophy.\r\n\r\n','http://localhost:8080/uploads/news/Bangladesh Cricket Team Enters World Cup Semifinals-2024-12-02.jpg','Sports','2024-12-02'),(36,'Gas Pipeline Leak Causes Panic in Chattogram','Chattogram, Bangladesh’s bustling port city, faced a tense situation on Saturday when a gas pipeline leak in the Agrabad area caused widespread panic among residents. The strong smell of gas prompted fears of a potential explosion, leading authorities to evacuate nearby buildings and suspend gas supply in the affected region.\r\n\r\nThe leak was reported early in the morning, with residents initially noticing an unusual odor spreading through the area. Many alerted the authorities, fearing a disaster similar to past incidents linked to gas leaks. Responding swiftly, the Fire Service and Civil Defence units arrived on the scene, cordoning off the area to ensure public safety.\r\n\r\nEngineers from the Karnaphuli Gas Distribution Company Limited (KGDCL) identified the source of the leak as a damaged section of the pipeline, likely caused by ongoing construction work in the vicinity. Repair teams worked for several hours to seal the pipeline and restore normalcy.\r\n\r\n“We were terrified because the smell of gas was overwhelming. It’s a densely populated area, and even a small spark could have caused a major accident,” said Mizanur Rahman, a local resident.\r\n\r\nAuthorities assured the public that the situation was under control and urged residents to report any lingering odors or signs of leakage. They also emphasized the importance of adhering to safety protocols during construction projects near gas pipelines.\r\n\r\nThe incident has reignited concerns about the safety of Bangladesh’s aging gas infrastructure, which has been prone to leaks and accidents in recent years. Experts are calling for stricter monitoring and regular maintenance of gas pipelines to prevent similar occurrences.\r\n\r\nWhile no injuries were reported, the event served as a stark reminder of the potential dangers posed by inadequate safety measures and the need for proactive infrastructure management.','http://localhost:8080/uploads/news/Gas Pipeline Leak Causes Panic in Chattogram-2024-12-01.jpg','Random','2024-12-01'),(37,'Apple Launches Vision Pro Headset, Pioneering Spatial Computing','Apple has officially launched its much-anticipated Vision Pro headset, marking its entry into the world of spatial computing. The revolutionary device, revealed during the company’s annual developer conference, combines augmented reality (AR) and virtual reality (VR) capabilities in a sleek, lightweight design.\r\n\r\nDubbed a “spatial computer,” the Vision Pro offers users an immersive experience by blending digital content seamlessly with the physical world. Powered by the all-new Apple M2 and R1 chips, the headset delivers unparalleled performance, low-latency visuals, and realistic 3D graphics.\r\n\r\nKey Features of Vision Pro:\r\n\r\nSeamless AR/VR Integration: Switch between augmented and virtual environments with a simple gesture.\r\nEye-Tracking Technology: Advanced sensors detect where you’re looking, enabling intuitive control.\r\nUltra-High-Resolution Displays: Dual 4K displays provide crystal-clear visuals for gaming, productivity, and entertainment.\r\nImmersive Audio: Spatial audio delivers a surround-sound experience tailored to your environment.\r\nApple CEO Tim Cook described Vision Pro as “the beginning of a new era in personal computing,” emphasizing its potential to transform industries like gaming, education, and remote work.\r\n\r\nThe headset’s operating system, visionOS, allows users to interact with familiar apps like Safari, FaceTime, and Messages in a 3D space. It also supports third-party applications, with companies like Adobe and Unity already announcing compatibility with the platform.\r\n\r\nRetailing at $3,499, the Vision Pro is set to hit stores in early 2024. While the price point has sparked debates, tech enthusiasts and analysts agree that the device could redefine how we interact with technology.\r\n\r\nWith this launch, Apple joins other tech giants like Meta and Microsoft in shaping the future of immersive computing, signaling a competitive race to dominate the AR/VR market.','http://localhost:8080/uploads/news/Apple Launches Vision Pro Headset, Pioneering Spatial Computing-2024-11-30.jpg','Technology','2024-11-30'),(38,'Google Unveils Gemini AI to Compete with OpenAI’s ChatGPT','Google has officially introduced Gemini, its next-generation artificial intelligence (AI) model, developed by its DeepMind research division, to challenge the dominance of OpenAI’s ChatGPT and Microsoft’s AI systems. Gemini is an advanced, multimodal AI that can process not only text but also images and videos, marking a significant leap forward in AI capabilities. Unlike many existing models that focus primarily on text generation, Gemini integrates real-time internet connectivity, allowing it to retrieve up-to-date information and enhance its responses.\r\n\r\nOne of the key features of Gemini is its ability to generate and understand text, images, and other multimedia formats, which provides a versatile platform for creative and professional use. Google has emphasized Gemini’s advanced text generation capabilities, stating that it can write essays, articles, and even generate code with remarkable coherence. In addition to these functions, the AI can also analyze images and documents to offer insights or generate creative content.\r\n\r\nIn terms of customization, Gemini offers a unique feature where it tailors its responses according to user preferences, making it more adaptable and personalized than other models currently available. It is also seamlessly integrated into Google’s suite of services, including Google Docs, Sheets, and Gmail, enhancing its utility for professionals and businesses.\r\n\r\nSundar Pichai, CEO of Google, commented on the launch, saying, “Gemini represents the culmination of years of research and innovation. It’s a step forward in making AI more accessible and useful for everyone.” With this release, Google is making a significant move to regain leadership in the rapidly evolving AI landscape. While OpenAI’s ChatGPT and Microsoft’s Copilot have been widely adopted, Gemini’s unique features and integration with Google’s ecosystem make it a strong competitor. Currently available in beta, Gemini is expected to be released to the public early next year, with experts predicting it could drastically reshape the future of AI-powered tools.\r\n\r\n','http://localhost:8080/uploads/news/Google Unveils Gemini AI to Compete with OpenAI’s ChatGPT-2024-11-28.jpg','Technology','2024-11-28'),(39,'Microsoft Announces Groundbreaking Quantum Computing Partnership with IBM','Microsoft has announced a major partnership with IBM to accelerate the development of quantum computing, a field that promises to revolutionize industries by solving problems that are currently beyond the reach of classical computers. The collaboration, unveiled at the annual Microsoft Tech Summit, aims to combine IBM’s expertise in quantum hardware with Microsoft’s strength in software development and cloud services to create scalable, accessible quantum computing solutions.\r\n\r\nThe partnership focuses on advancing quantum algorithms and improving the infrastructure needed to build and operate quantum computers. While quantum computing holds immense potential in areas like cryptography, materials science, and complex modeling, it has been limited by technological hurdles such as qubit stability and error rates. By combining IBM\'s state-of-the-art quantum processors with Microsoft’s Azure Quantum platform, the two companies aim to overcome these challenges and create practical quantum solutions for enterprises.\r\n\r\nMicrosoft’s Azure Quantum is already one of the leading platforms for quantum development, offering cloud-based access to quantum hardware and software tools. By integrating IBM’s quantum systems with Azure, the partnership is expected to enhance scalability, enabling businesses of all sizes to experiment with and adopt quantum computing technologies.\r\n\r\nIn a statement, Satya Nadella, CEO of Microsoft, said, “Quantum computing will be a foundational technology in the future, and we are committed to driving its development with industry-leading partners like IBM. Together, we aim to unlock new possibilities that were once unimaginable.”\r\n\r\nThis collaboration is expected to bring quantum computing closer to mainstream adoption, allowing industries to solve previously intractable problems. Experts believe that the fusion of IBM’s hardware capabilities with Microsoft’s software and cloud expertise could lead to major breakthroughs in artificial intelligence, machine learning, and data security. The partnership also highlights the growing trend of tech companies joining forces to advance emerging technologies, as they recognize that collaboration is key to overcoming the challenges of cutting-edge innovation.\r\n\r\n','http://localhost:8080/uploads/news/Microsoft Announces Groundbreaking Quantum Computing Partnership with IBM-2024-12-03.jpg','Technology','2024-12-03'),(40,'বাংলাদেশে শুরু হয়েছে ৫জি সেবা','বাংলাদেশে ৫জি সেবা চালু হয়েছে, যা দেশের স্মার্টফোন ব্যবহারকারীদের জন্য ইন্টারনেট গতির ক্ষেত্রে নতুন দিগন্ত উন্মোচন করবে। টেলিযোগাযোগ মন্ত্রী মোস্তাফা জব্বার এ সেবা উদ্বোধন করেন এবং ৫জি প্রযুক্তির মাধ্যমে দেশের ডিজিটাল অগ্রগতিতে গুরুত্বপূর্ণ ভূমিকা রাখবে বলে আশা প্রকাশ করেন।\r\n\r\n৫জি প্রযুক্তি ব্যবহারকারীদের আগের তুলনায় অনেক দ্রুত ইন্টারনেট সেবা প্রদান করবে, যা শিক্ষা, স্বাস্থ্য, ব্যবসা ও অন্যান্য সেক্টরে উল্লেখযোগ্য পরিবর্তন আনবে। বিশেষত, ইন্টারনেট অব থিংস (IoT), অটোমেশন এবং এআই-চালিত সিস্টেমের উন্নয়ন এই প্রযুক্তির মাধ্যমে আরও ত্বরান্বিত হবে।\r\n\r\nবর্তমানে ঢাকা, চট্টগ্রাম, রাজশাহী এবং খুলনায় ৫জি সেবা চালু করা হয়েছে, এবং আগামী কয়েক মাসে সারা দেশে এই সেবা সম্প্রসারিত হবে।','http://localhost:8080/uploads/news/বাংলাদেশে শুরু হয়েছে ৫জি সেবা-2024-11-28.jpg','Technology','2024-11-28'),(41,'রাজধানীতে ধর্ষণের অভিযোগে এক যুবক গ্রেপ্তার','ঢাকা: রাজধানীর মহাখালী এলাকা থেকে ধর্ষণের অভিযোগে এক যুবককে গ্রেপ্তার করেছে পুলিশ। গতকাল রাত ১০টার দিকে, ওই যুবক তার পরিচিত এক নারীকে ধর্ষণের পর তাকে আহত অবস্থায় ছেড়ে পালিয়ে যায়। ভুক্তভোগী নারী পুলিশকে জানালে, তদন্ত শুরু করা হয় এবং অভিযুক্ত যুবককে কিছু সময়ের মধ্যে আটক করা হয়।\r\n\r\nপুলিশ জানায়, অভিযুক্ত যুবক তার পরিচিতির মাধ্যমে ভুক্তভোগী নারীকে ডাকেন এবং এক পর্যায়ে তাকে একা পেয়ে ধর্ষণ করে। ঘটনার পর, ভুক্তভোগী তাৎক্ষণিকভাবে থানায় অভিযোগ দায়ের করেন। পুলিশ তাৎক্ষণিকভাবে অভিযুক্তকে গ্রেপ্তার করতে সক্ষম হয় এবং তাকে আদালতের মাধ্যমে রিমান্ডে নেওয়া হয়েছে।\r\n\r\nস্থানীয়দের মতে, এ ধরনের ঘটনার পুনরাবৃত্তি রোধে এলাকায় নিরাপত্তা ব্যবস্থা আরও জোরদার করা উচিত। বিশেষত, রাতের সময়ে মহাখালী এলাকায় চলাচল করা নারী ও শিশুদের জন্য নিরাপত্তা ঝুঁকি তৈরি হতে পারে। পুলিশ জানিয়েছে, এই ধরনের অপরাধের বিরুদ্ধে তারা কঠোর পদক্ষেপ নেবে।\r\n\r\nতদন্তকারী কর্মকর্তা জানান, অভিযুক্ত যুবকের বিরুদ্ধে ধর্ষণ, মারধর, এবং অপহরণের অভিযোগ আনা হয়েছে, এবং তাকে দৃষ্টান্তমূলক শাস্তি দেওয়ার জন্য আইনগত পদক্ষেপ গ্রহণ করা হবে।','http://localhost:8080/uploads/news/রাজধানীতে ধর্ষণের অভিযোগে এক যুবক গ্রেপ্তার-2024-11-27.jpg','Crime','2024-11-27'),(42,'বিশ্ব স্বাস্থ্য সংস্থা (WHO) ঘোষণা করেছে','ঢাকা: বিশ্ব স্বাস্থ্য সংস্থা (WHO) জানিয়েছে, বাংলাদেশে ডেঙ্গু ভাইরাসের প্রাদুর্ভাব ব্যাপক আকার ধারণ করেছে এবং এ পরিস্থিতি মোকাবিলায় বিশেষ পদক্ষেপ নিতে হবে। গত মাসে দেশের বিভিন্ন অঞ্চলে ডেঙ্গু আক্রান্ত রোগীর সংখ্যা বেড়ে যাওয়ার ফলে স্বাস্থ্য মন্ত্রণালয় এবং স্থানীয় প্রশাসনকে আরও সতর্ক থাকার আহ্বান জানানো হয়েছে।\r\n\r\nWHO’র পক্ষ থেকে জানানো হয়েছে, ২০২৩ সালে ডেঙ্গুর রোগী সংখ্যা পূর্ববর্তী বছরের তুলনায় দ্বিগুণ হয়ে গেছে, এবং বিশেষ করে ঢাকা এবং চট্টগ্রামসহ বড় শহরগুলোতে এই রোগের প্রভাব বেশি। স্বাস্থ্য বিশেষজ্ঞরা বলছেন, ডেঙ্গু মহামারি হিসেবে বাংলাদেশে দ্রুত ছড়িয়ে পড়ছে, যা স্বাস্থ্য খাতে গুরুতর চাপ সৃষ্টি করছে।\r\n','http://localhost:8080/uploads/news/বিশ্ব স্বাস্থ্য সংস্থা (WHO) ঘোষণা করেছে-2024-11-30.jpg','Health','2024-11-30');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_categories`
--

DROP TABLE IF EXISTS `user_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_categories`
--

LOCK TABLES `user_categories` WRITE;
/*!40000 ALTER TABLE `user_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (15,'Rezaul Karim','mrk','mrk@gmail.com','$2a$10$vAYDBcrtRuZMxS2qumHsMuOJt46wb8cSqVZVA99rtHNGWzbtfB.Qm','http://localhost:8080/uploads/users/Rezaul Karim-2024-12-02-15.jpg','2024-11-10 20:26:22','2024-12-01 21:31:43'),(18,'user','mrk1234','mrk1234@gmail.com','$2a$10$oniXeKdAmgF5YmdgWjBnAutX7/OnC9oBjigtUj9CyEQD7h7mkv1iS','http://localhost:8080/uploads/users/mrk1234.jpg','2024-11-30 08:28:14','2024-11-30 11:10:45'),(22,'Anamul Hasan Shanto','ahs1','ahs1@gmail.com','$2a$10$H09ognFCUWUG68X9oJn75uUqwfdocJ7ghiqK9P2C53cWJi6zBw8O2','http://localhost:8080/uploads/users/ahs1.jpg','2024-11-30 08:52:54','2024-11-30 08:52:54'),(23,'Anamul Hasan Shanto','ahs12','ahs12@gmail.com','$2a$10$n3gSS.Z/LC0bdk2//MkdVe1lEUNbvcH5z0G2UnmrBM2QQuFxCgRR.','http://localhost:8080/uploads/users/ahs2.jpg','2024-11-30 09:00:28','2024-12-01 19:02:32'),(26,'user A','usera','usera@gmail.com','$2a$10$.qq4xt1Tc95xInomrHwMMetmoiov98c2XUG9snlMdWt5iOStjFgx2','http://localhost:8080/uploads/users/usera.jpg','2024-12-02 07:17:39','2024-12-02 07:17:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04 23:33:02
