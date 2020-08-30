-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 30, 2020 at 07:53 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicaldatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` int(30) NOT NULL,
  `main_ingredient` varchar(400) NOT NULL,
  `description` varchar(400) NOT NULL,
  `website` varchar(100) NOT NULL,
  `link` varchar(400) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `price`, `main_ingredient`, `description`, `website`, `link`, `image_name`) VALUES
(14, 'ADEL 40 Verintex Drop\r\n', 250, 'Acidum nitricum\r\n', 'All forms of warts, juvenile and vulgar.\r\n', '1mg\r\n', 'https://www.1mg.com/otc/adel-40-verintex-drop-otc326084\r\n', '1414jpg'),
(14, 'Ankle Ligament Support\r\n', 899, 'Support instrument', 'Strong 100 ankle support designed to help you return to your sport after a minor ankle sprain.\r\n', 'decathlon\r\n', 'https://www.decathlon.in/p/8497800/supports/strong-100-men-s-women-s-right-left-ankle-ligament-support-black#fo_c=1720&fo_k=45126fac2e0f2b845af304f45f0b965c&fo_s=gplain\r\n', '14.jpg'),
(13, 'Antiseptic Cream\r\n', 38, 'Ayurvedic\r\n', 'Antiseptic Cream is a natural product that is quite beneficial in treating wounds, burns, dermatitis and other skin ailments.\r\n', 'healthmug\r\n', 'https://www.healthmug.com/product/himalaya-antiseptic-cream-20g/1117678999\r\n', '1313.jpg'),
(16, 'Aspifast Tablet\r\n', 356, 'Ketoprofen', 'The product contains Chondroitin, Collagen Peptide, Sodium Hyaluronate and Vitamin C.\r\n', 'tabletshablet\r\n', 'https://www.tabletshablet.com/product/aspifast-tablet/\r\n', '1616.jpg'),
(2, 'Back pain relief belt', 694, 'fabric material\r\n', 'ThermaCare® Lower Back & Hip HeatWraps have a better fit for more targeted relief.\r\n', 'carethy\r\n', '\r\nhttps://in.carethy.net/hygiene-and-health/thermacare/p-95028?r=8470001593634&gclid=EAIaIQobChMIk7jwypGx6QIVVyUrCh2KvAfJEAQYBSABEgL7EPD_BwE\r\n', '0202.jpg'),
(9, 'Beardo Hair Fall Control Shampoo\r\n', 350, 'Hair shampoo', 'It is the best solution for all your hair troubles, including hair loss.\r\n', 'beardo\r\n', 'https://www.beardo.in/shampoo/beardo-shampoo/0032\r\n', '9.jpg'),
(23, 'Bestozyme Capsule\r\n', 45, 'Antihistamine', 'Bestozyme Capsule is a dietary supplement which promotes proper digestion by accelerating the digestion process in a balanced manner. Bestozyme Capsule contains a rich formulation of Alpha amylase and Papain.\r\n', '1mg\r\n', 'https://www.1mg.com/otc/bestozyme-capsule-otc294606\r\n', '23.jpg'),
(16, 'Bone Health Tablets\r\n', 850, 'Glucosamine Chondroitin and MSM \r\n', 'Glucosamine tablets are common OTC dietary supplements used for arthritis and osteoarthritis because of the claim that they have anti-inflammatory and pain-relieving properties. \r\n', 'purayati\r\n', 'https://purayati.com/products/bone-health-glucosamine-chondroitin-and-msm\r\n', '16.jpg'),
(5, 'Bro zedex\r\n', 107, 'Terbutaline sulphate\r\n', 'cough control syrup\r\n', 'shoponn\r\n', 'https://www.shoponn.in/pharma/bro_zedex_expectorant_100ml/537249\r\n', '5.jpg'),
(11, 'Crocin\r\n', 31, 'Paracetamol\r\n', 'The contents of this website are for informational purposes only and not intended to be a substitute for professional medical advice, diagnosis, or treatment.\r\n', 'netmeds\r\n', 'https://www.netmeds.com/prescriptions/crocin-650mg-tablet-15-s\r\n', '1111.jpg'),
(4, 'cureveda debility elixir\r\n', 445, 'Dashmool, Shatavari', 'Helps to rejuvenate & revitalize the body, provide strength & stamina, reduce weakness & fatigue. Especially useful for recovery post pregnancy/delivery (post natal) & convalescence, surgery and recommended with growing age.  \r\n', 'cureveda\r\n', 'https://cureveda.com/shop/health-condition/general-wellness-health-condition/cureveda-debility-elixir/?gclid=EAIaIQobChMIz8ySspix6QIVSw4rCh13Nw7nEAYYASABEgJW0PD_BwE\r\n', '4.jpg'),
(24, 'Dabur Glucose - D\r\n', 58, 'High grade Dextrose, Monohydrate, Vitamin D, Calcium.\r\n', 'Contains high grade dextrose monohydrate, vitamin-D and calcium storage.\r\n', 'nykaa\r\n', 'https://www.nykaa.com/dabur-glucose-d-green-energy-boost-free-50gm/p/752338?gclid=EAIaIQobChMIssKM8pG26QIVGh4rCh1PDg3wEAYYBSABEgJa8_D_BwE&ptype=product&skuId=752338&ef_id=EAIaIQobChMIssKM8pG26QIVGh4rCh1PDg3wEAYYBSABEgJa8_D_BwE:G:s&s_kwcid=AL!599!3!383869122205!!!u!491430375312!&utm_source=GooglePaid&utm_medium=PLA&utm_campaign=PLA_FULLSITE_GOALOPTIMISED\r\n', '24.jpg'),
(1, 'Dermadew Acne Soap\r\n', 175, 'Antibacterial soap\r\n', 'Dermadew Acne Soap contains gentle aleo base cleanser combined with anti-acne actives of both natural and synthetic origin and fortified with specific emollients, moisturisers and skin nourishes.\r\n', 'click on care\r\n', 'https://www.clickoncare.com/dermadew-acne-soap-75-gms?gclid=CjwKCAjwkun1BRAIEiwA2mJRWb74eZstu5r7YY3per3n0A_Uu1CcrYkhc7G4VqN7hWwrpUJ2AqFtVRoCW3YQAvD_BwE\r\n', '11.jpg'),
(23, 'DIGENE TABLET\r\n', 18, 'Tablet', 'It is used to provide relief from gastric acidity, bloating and irritable bowel movement.\r\n', 'tabletshablet\r\n', 'https://www.tabletshablet.com/product/digene-tablet-orange/\r\n', '2323.jpg'),
(17, 'Dr Ortho Knee Support\r\n', 320, 'Physical band', '', '1mg\r\n', 'https://www.1mg.com/otc/dr-ortho-knee-support-otc558794\r\n', '17.jpg'),
(22, 'Dry Skin Repair Intense Moisturizing Cream\r\n', 180, 'liquid moisturizer', 'Vaseline Derma Care Multipurpose Dry Skin Repair Intense Moisturizing Cream Hypoallergenic, Suitable for sensitive skin and Fragrance free.\r\n', 'charminu\r\n', 'https://www.charminu.com/skin-care-creams-lotions/1354-vaseline-derma-care-multipurpose-dry-skin-repair-intense-moisturizing-cream-80g.html\r\n', '22.jpg'),
(7, 'Emotional Freedom\r\n', 701, 'Book\r\n', 'the book helps to control emotions and to help become a better person. Also guides how to exercise ones freedom without hurting other\'s freedom.   ', 'Flipkart\r\n', 'https://www.flipkart.com/emotional-freedom/p/itme9tj38tzgnqa6?pid=9780307338198&lid=LSTBOK9780307338198H2RDGE&marketplace=FLIPKART&cmpid=content_book_8965229628_gmc\r\n', '7.jpg'),
(15, 'Eno Fruit Salt Powder\r\n', 480, 'Antacid\r\n', 'providing instant relief from acidity, gastric discomfort and heart burn, Eno gets you back on track instantly, as it begins to work in six seconds - faster than other tablet and liquid antacids.\r\n', 'shopclues\r\n', 'https://www.shopclues.com/eno-lemon-5g-sachet-pk-60-149469685.html?mcid=ps&utm_source=google&utm_medium=cpc&utm_campaign=Search-PLA-Smart-Shopping-November18&s_kwcid=AL!725!3!314402097724!!!u!!&ef_id=XrwK5QAAAV7Vtzlr:20200515153227:s\r\n', '15.jpg'),
(22, 'Eucerin\r\n', 661, 'Skin Lotion', 'Skin Calming External Analgesic Lotion offers a soothing formula that calms, moisturizes and provides immediate relief to dry, itchy skin.\r\n', 'iherb\r\n', 'https://in.iherb.com/pr/Eucerin-Skin-Calming-External-Analgesic-Lotion-Fragrance-Free-6-8-fl-oz-200-ml/45781\r\n', '2222.jpg'),
(4, 'Fast&Up Recover\r\n', 2015, 'Workout Muscle Recovery Drink\r\n', 'Fast&Up Recover is India\'s First Effervescent Post Workout Nutrition Supplement with complete profile of all 20 vegetarian amino acids with Glutathione for instant post workout muscle recovery.\r\n', 'fastandup\r\n', 'https://www.fastandup.in/product/recover-post-workout-combo-of-3tubes?gclid=EAIaIQobChMIz8ySspix6QIVSw4rCh13Nw7nEAYYAiABEgLMJPD_BwE\r\n', '44.jpg'),
(25, 'Foot Pain Arch Support \r\n', 599, '\r\nFoot belt', 'that helps to relieve pain and discomfort related to plantar fasciitis, achiles, edema, stress fracture, tendon, metatarsal and heel pain symptoms\r\n', 'shopclues\r\n', 'https://www.shopclues.com/2-pc-1-pair-heel-foot-pain-arch-support-ankle-brace-heel-warm-protector-146937958.html\r\n', '25.jpg'),
(25, 'Grip Fit Tablet\r\n', 302, 'Glucosamine Sulphate, Diacerein, Methylsulfonylmethane (MSM).\r\n', 'Glucosamine is a naturally occurring chemical found in the human body, important for making glycosaminoglycans and proteoglycans. Glucosamine assists in the healthy development of collagen around joints all over the body. It also essential in maintaining elasticity and strength in the articular joints. \r\n', '1mg\r\n', 'https://www.1mg.com/otc/grip-fit-tablet-otc323218\r\n', '2525.jpg'),
(3, 'HealthyHey Lutein\r\n', 799, 'Zeaxanthin\r\n', 'Lutein helps to improve vision in low contrast situations, which is essential for night driving', 'shopclues\r\n', 'https://www.shopclues.com/healthyhey-lutein-10-mg-with-zeaxanthin-support-eyes-health-60-veg.-capsules-pack-of-1-140554510.html?mcid=ps&utm_source=google&utm_medium=cpc&utm_campaign=Search-PLA-Smart-Shopping-November18&s_kwcid=AL!725!3!314402097724!!!u!!&ef_id=XrwK5QAAAV7Vtzlr:20200513153736:s\r\n', '33.jpg'),
(15, 'Himalaya Himcocid Suspension\r\n', 81, 'Indian Gooseberry\r\n', 'Himcocid Suspension is an Ayurvedic formulation of Himalaya for digestive problems without any known side effects.\r\n', 'healthmug\r\n', 'https://www.healthmug.com/product/himalaya-himcocid-suspension-mint-200ml/2074491475?version=1&gclid=EAIaIQobChMIj4yQxZm26QIVgdeWCh0W9gS6EAYYBSABEgLUBPD_BwE\r\n', '1515jpg'),
(3, 'Himalaya Ophthacare Eye Drops\r\n', 57, 'Eye drops\r\n', 'It is used to provide relief from Irritation and also gives cooling effect to the eyes.\r\n', 'tabletshablet\r\n', 'https://www.tabletshablet.com/product/himalaya-opthacare-eye-drop-10-ml/?gclid=EAIaIQobChMI4J6nwJSx6QIVFyQrCh3Ucws7EAYYBCABEgIkC_D_BwE\r\n', '3.jpg'),
(9, 'Indulekha Bringha Hair Anti-Hair Fall Shampoo\r\n', 135, 'Hair shampoo', 'Indulekha Bringha Hair Anti-Hair fall Shampoo, 100ml. Has a unique anti-dandruff and milk proteins formula with zpto, Nourishes hair from root to tip thereby making it stronger . Fights dandruff, and guarantees less hair fall\r\n', 'amazon\r\n', 'https://www.amazon.in/Indulekha-Bringha-Anti-Hair-Shampoo-100ml/dp/B07DCBMPZ1?source=ps-sl-shoppingads-lpcontext&psc=1\r\n', '99.jpg'),
(17, 'JSB Hf124 Professional Joint Pain Relief \r\n', 5999, 'electrical massager', 'If you are experiencing any knee pain, JSB Knee Massager will help you relieve that throbbing feeling by putting the right amount of pressure on it.\r\n', 'amazon\r\n', 'https://www.amazon.in/JSB-Professional-Massager-Relief-Vibration/dp/B0775ZSJ5Z?source=ps-sl-shoppingads-lpcontext&psc=1\r\n', '1717.jpg'),
(1, 'Kaya skin clinic\r\n', 380, 'Salicylic Acid', 'Acne Free Purifying Cleanser With Salicylic Acid\r\n', 'myntra\r\n', 'https://www.myntra.com/face-wash-and-cleanser/kaya-skin-clinic/kaya-skin-clinic-unisex-acne-free-purifying-cleanser-with-salicylic-acid-100-ml/637635/buy?gclid=CjwKCAjwkun1BRAIEiwA2mJRWZxWeLyxQmg5zAhhX6O3YUxluczMeklTg_TOLGnW6eMogubJlaX5ERoCdcUQAvD_BwE\r\n', '1.jpg'),
(11, 'Massager for pain relief in Headache\r\n', 199, 'Electronic gadget', 'MINI MASSAGER is a multi functional massager which eases muscle ache and improves blood circulation.\r\n', 'flipkart\r\n', 'https://www.flipkart.com/apna-kanha-travel-anywhere-you-massager-pain-relief-headache-neck-back-side-fully-body/p/itmfhfxfznhncjzw?pid=DHYFHFVS78DGVZMX&lid=LSTDHYFHFVS78DGVZMXHJRDXK&marketplace=FLIPKART&cmpid=content_massager_8965229628_gmc\r\n', '111.jpg'),
(6, 'Mullein Garlic Oil\r\n', 825, 'Herb Pharm', 'All of the herbs in this formula are individually extracted to ensure a broad spectrum of therapeutic plant compounds.\r\n', 'iherb\r\n', 'https://in.iherb.com/pr/Herb-Pharm-Mullein-Garlic-Oil-For-Kids-1-fl-oz-30-ml/66125\r\n', '66.jpg'),
(5, 'Natures Way Eucalyptus Raw Honey\r\n', 50, 'Raw Honey\r\n', 'Otovin Ear Drops is indicated for ear infections.', 'naattumarundhukadai', 'https://www.flipkart.com/natures-way-eucalyptus-raw-honey-the-perfect-all-natural-remedy-weight-loss-cold-coughs-headaches/p/itmfc7a7ygnzfhu3?pid=HNYFC6EQ8JTCHYGZ&lid=LSTHNYFC6EQ8JTCHYGZBWV0IG&marketplace=FLIPKART&cmpid=content_honey_8965229628_gmc\r\n', '55.jpg'),
(19, 'Neck Pain Relief Pillow\r\n', 1383, 'Neck support pillow', 'It is the latest research in the world of pillow, which is scientifically developed. It gives sound sleep & mental peace. Keep the magnetic portion of the pillow on top while sleeping.\r\n', 'snapdeal\r\n', 'https://www.snapdeal.com/product/dr-relief-magnetic-pain-relief/680217969006?supc=SDL005102140&utm_source=earth_web&utm_medium=2213_1383&utm_content=680217969006&vendorCode=S6638a&isSellerPage=true&fv=true&isSellerPage=true&fv=true\r\n', '19.jpg'),
(20, 'Neosporin Powder\r\n', 60, 'Bacitracin Topical 400IU + Neomycin 3400IU + Polymyxin B 5000IU\r\n', '', 'pasumaipharmacy\r\n', 'https://www.pasumaipharmacy.com/product/neosporin-powder-10-gm_2164\r\n', '20.jpg'),
(18, 'Omnigel  \r\n', 200, 'Pain killer', 'Extract of Linceed Oil, Diclofenac Diethylamine, Methyl Salicylate & Menthol Spray\r\n', 'flipkart\r\n', 'https://www.flipkart.com/omnigel-all-type-pain-killer-massage-cream/p/itmf9yn4vpcvyzpe?pid=BPRF9YV9P5AQGZ82&lid=LSTBPRF9YV9P5AQGZ82DT4DD2&marketplace=FLIPKART&cmpid=content_body-pain-relief_8965229628_gmc\r\n', '18.jpg'),
(24, 'ORS Liquid Apple Drink\r\n', 35, 'Sodium chloride,Potassium chloride and Citrate glucose.\r\n', 'It is used in the treatment for dehydration.\r\n', 'tabletshablet\r\n', 'https://www.tabletshablet.com/product/ors-liquid-apple-drink-200-ml/?gclid=EAIaIQobChMIre_O-ZK26QIVjjgrCh3HsArfEAYYAiABEgJ9qfD_BwE\r\n', '2424.jpg'),
(6, 'Otovin  Ear Drops\r\n', 825, 'Liquid Drops', 'All of the herbs in this formula are individually extracted to ensure a broad spectrum of therapeutic plant compounds.', 'iherb', 'https://naattumarundhukadai.com/products/otovin-ear-drops?variant=31653497241644&currency=INR\r\n', '6.jpg'),
(10, 'Pankajakasthuri Breathe Eazy\r\n', 299, 'Edible powder', 'Gives Complete cure to Asthma, Allergy, Edema, Eosinophilia attacks, Breathing disorders, Sinusitis and Rhinitis\r\n', 'clickoncare\r\n', 'https://www.clickoncare.com/pankajakasthuri-breathe-eazy-400g\r\n', '1010.jpg'),
(10, 'Romsons Respirometer respiratory exerciser \r\n', 165, '\r\nphysical exercising gadget', 'Pikays Medico Surgicals presents, Romsons Respirometer respiratory exerciser. Itsused for lung exercise..\r\n', 'amazon\r\n', 'https://www.amazon.in/Romsons-PK011-Respirometer-respiratory-exerciser/dp/B00O93N3O4?source=ps-sl-shoppingads-lpcontext&psc=1\r\n', '10.jpg'),
(13, 'Scavon VET SPRAY\r\n', 140, 'Neem,Eucalyptus,turmeric\r\n', 'Scavon’s bactericidal action controls infections.\r\n', 'himalayawellness\r\n', 'https://himalayawellness.in/products/scavon-vet-spray?variant=30301113974883&currency=INR\r\n', '13.jpg'),
(21, 'Shoulder Pad \r\n', 599, 'fabric band', 'Tima shoulder support is an ideal product to provide warmth and support to the shoulder joint.\r\n', 'amazon\r\n', 'https://www.amazon.in/Tima-Shoulder-Neoprene-Adjustable-Compression/dp/B07FSGYT98?source=ps-sl-shoppingads-lpcontext&psc=1\r\n', '21.jpg'),
(20, 'Silverex Heal Gel\r\n', 235, 'Liquid gel', 'It is used for Burns, Wound sepsis, Microbial infections on living surface and also used in Lesions of the skin, Skin injuries, Skin wounds\r\n', '1mg\r\n', 'https://www.1mg.com/otc/silverex-heal-gel-otc385792\r\n', '2020.jpg'),
(8, 'Steam Vaporizer\r\n', 269, 'Plastic heating appliance', 'It helps to relieve blocked nose, headache, colds and coughs\r\n', 'flipkart\r\n', 'https://www.flipkart.com/oxgenta-steam-vaporizer-cold-cough-mini-facial-steamer/p/itmad3bbb8d1246f?pid=FAEFK8FPP2WPHYJQ&lid=LSTFAEFK8FPP2WPHYJQOMSH9U&marketplace=FLIPKART&cmpid=content_facial-steamer_8965229628_gmc\r\n', '88.jpg'),
(8, 'The Indian Chai \r\n', 240, 'Tea leaf', 'Desi Kada Chai is traditional North Indian remedy for cold and cough. It is pretty tasty though. \r\n', 'amazon\r\n', 'https://www.amazon.in/Indian-Chai-Kadha-Masala-Cures/dp/B079GZM88D?source=ps-sl-shoppingads-lpcontext&psc=1\r\n', '8.jpg'),
(19, 'Tynor Soft Cervical Collar with Support\r\n', 235, 'Neck support band', 'Neck pain can be a really painful and disturbing problem. It can make you unable to perform your daily activities as they will seem more difficult. This Tynor Cervical Collar is designed to support, immobilize and adjust the neck in flexion, extension and hyperextension position.\r\n', 'flipkart\r\n', 'https://www.flipkart.com/tynor-soft-cervical-collar-support-xl-neck/p/itmf3ybghaqx4r9c?pid=SUPDW2SGXV2SDPHR&lid=LSTSUPDW2SGXV2SDPHRTU6TAB&marketplace=FLIPKART&cmpid=content_support_8965229628_gmc\r\n', '1919.jpg'),
(2, 'volini gel\r\n', 260, 'diclofenac diethylamine\r\n', 'Volini Spray is a pain-relieving spray utilized for muscle strains, neck torment, spinal pain, wounds, sports wounds, joint agony or joint pain, and different conditions.\r\n', '1mg\r\n', 'https://www.1mg.com/otc/volini-maxx-spray-otc457561', '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remedy`
--

DROP TABLE IF EXISTS `remedy`;
CREATE TABLE IF NOT EXISTS `remedy` (
  `id` int(10) NOT NULL,
  `ailment` varchar(50) NOT NULL,
  `common_causes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `self_treatment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `related_condition` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `seek_medic` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `remedy`
--

INSERT INTO `remedy` (`id`, `ailment`, `common_causes`, `self_treatment`, `related_condition`, `seek_medic`) VALUES
(1, 'Acne', 'A skin condition that occurs when hair follicles plug with oil and dead skin cells. Acne is most common in teenagers and young adults. Symptoms range from uninflamed blackheads to pus-filled pimples or large, red and tender bumps.', 'Treatments include over-the-counter creams and cleanser, as well as prescription antibiotics. Benzoyl peroxide / Salicylic acid and Antibacterial soap.', 'Allergies', 'See a doctor immediately if you:\r\nif the acne growth is more severe than normal\r\n'),
(2, 'Back pain', 'Back pain can have causes that aren\'t due to underlying disease. Examples include overuse such as working out or lifting too much, prolonged sitting and lying down, sleeping in an uncomfortable position or wearing a poorly fitting backpack.', 'If pain is severe, resting for up to two days may help. Taking a pain reliever, such as ibuprofen, paracetamol, diclofenac or naproxen may also ease discomfort.', 'Muscle strain, Obesity, Slipped disc', 'See a doctor immediately if you:\r\nExperienced a trauma such as a car crash or fall, Develop a fever\r\n, Have trouble passing stool or urinating.'),
(3, 'Blurry vision', 'Blurred vision can have causes that aren\'t due to underlying disease. Examples include eye rubbing, dry eyes, crying, ageing or incorrect eyeglass prescription.', 'Not suggested.', 'Cataracts, Astigmatism, Farsighted', 'See a doctor immediately if you:\r\nSuddenly develop blurred vision\r\nGet severe symptoms, especially in only one eye\r\nFeel eye pain, Lose part of your field of vision, Have an Immune disorder, such as HIV or AIDS\".'),
(4, 'Body feels weak', 'Weakness can have causes that aren\'t due to underlying disease. Examples include poor physical conditioning, recovery from strength training or extreme fatigue.\r\n', 'Rest is recommended, intake of glucouse restores energy\r\n', 'Hypovolemia, Embolic stroke, Cervical radiculopathy\r\n', 'See a doctor immediately if you:\r\nExperience sudden weakness in one area of the body\r\nHave sudden weakness along with symptoms such as changes in speech\"\r\n'),
(5, 'Cough', 'Coughing can have causes that aren\'t due to underlying disease. Examples include normal clearing of airways, irritants such as smoke and gas, tobacco use or improperly swallowing food and liquids.\r\n', 'Liquids, lozenges, cough drops, vapourisers and steamy showers may help to soothe a cough. Cough medicine may also help, but it\'s best to check with a doctor before administering to a child under six.\r\n', 'Upper respiratory infection, Asthma, Common cold\r\n', 'See a doctor immediately if you:\r\nThe cough is severe and persists for a more than 2 days.\r\n'),
(6, 'Ear ache', 'Ear pain can have causes that aren\'t due to underlying disease. Examples include tight head wear, poorly fitting headphones, sleeping on a hard surface, ear piercings, grinding teeth or getting an object stuck in the ear.\r\n', 'Using a warm, moist compress on the ear may help to relieve pain. Taking pain medication may also help, but it\'s best to avoid giving aspirin to children because this may cause a rare, serious condition.\r\n', 'Ear infections, Swimmer\'s ear, Mastoiditis.\r\n', 'See a doctor immediately if you:\r\nHave discharge from the ear, Feel severe pain, Experience difficulty hearing.\r\n'),
(7, 'Emotional pain', 'Personal loss, loss of loved ones, stress ,watching socially unethical or emotional content.\r\n', 'Talking to family, friends should bring down the stress.\r\n', 'Mental disorder,Pain disorder,Borderline personality disorder.', 'See a doctor immediately if you:\r\ntalking doesn\'t solve the pain.'),
(8, 'Feeling cold', 'A cold virus enters your body through your mouth, eyes or nose. The virus can spread through droplets in the air when someone who is sick coughs, sneezes or talks.\r\n', 'Nasal washing, Throat lozenge, Menthol\r\n', ' Cough, sore throat, low-grade fever, nasal congestion, runny nose, and sneezing.\r\n', 'See a doctor immediately if you:\r\nFever greater than 101.3 F (38.5 C), Fever lasting five days or more or returning after a fever-free period, Shortness of breath, Wheezing, Severe sore throat, headache or sinus pain\r\n'),
(9, 'Hair falling out', 'Hair loss occurs when this cycle of hair growth and shedding is disrupted or when the hair follicle is destroyed and replaced with scar tissue.\r\n', 'Scalp massage, removal of splits, oil application and massage\r\n', 'Pattern baldness, deficiency.', 'See your doctor if :\r\nyour child or you are distressed by hair loss and want to pursue treatment. Also talk to your doctor if you notice sudden or patchy hair loss or more than usual hair loss when combing or washing your or your child\'s hair. Sudden hair loss can signal an underlying medical condit'),
(10, 'Hard to breath', 'Most cases of shortness of breath are due to heart or lung conditions. Your heart and lungs are involved in transporting oxygen to your tissues and removing carbon dioxide, and problems with either of these processes affect your breathing.\r\n', 'Avoiding smoking, secondhand smoke and areas with high air pollution or elevations over 5,000 feet may help ease shortness of breath. Losing weight and exercising regularly may also help.\r\n', ' Asthma, bronchitis, pneumonia, pneumothorax, anemia, lung cancer, inhalation injury, pulmonary embolism, anxiety, COPD, high altitude with lower oxygen levels, congestive heart failure, arrhythmia, allergic reaction, anaphylaxis, subglottic stenosis, interstitial lung disease, obesity, tuberculosis', 'See a doctor immediately if you:\r\nExperience sudden and severe symptoms, Feel short of breath while at rest, Have chest pain, cold sweats, fainting or nausea, Develop a blue tinge to lips or fingers, Can\'t work or complete daily tasks\r\n'),
(11, 'Head ache', 'Headaches can have causes that aren\'t due to underlying disease. Examples include lack of sleep, an incorrect eyeglass prescription, stress, loud noise exposure or tight head wear.\r\n', 'Remedies that may reduce headache pain include aspirin, paracetamol and ibuprofen. Resting in a darkened room may also help\r\n', 'Stress, Migraine, Tension type, headaches, concussion, cluster headaches\r\n', 'See a doctor immediately if you:\r\nFeel worse than usual, Get a sudden, severe headache, Become confused, slur your speech or faint, Have one-sided numbness or paralysis, or trouble seeing, speaking or walking, Develop a fever higher than 102°F (39°C), Experience nausea or vomiting\r\n'),
(12, 'Head hurts', 'A brain injury caused by a blow to the head or a violent shaking of the head and body. This occurs from a mild blow to the head, either with or without loss of consciousness, and can lead to temporary cognitive symptoms. Symptoms may include headache, confusion, lack of coordination, memory loss,nau', 'Reducing activity for a short period of time following an injury to promote healing.', 'Concussion', 'See a doctor immediately if you:\r\nThe pain persists after a few days of self care.'),
(13, 'Infected wound', 'Most infected wounds are caused by bacterial colonization, originating either from the normal flora on the skin, or bacteria from other parts of the body or the outside environment.\r\n', 'Prompt and proper wound cleansing to reduce bioburden, Maintaining proper nutrition and hydration.', 'Diabetes worsens the condition.', 'See a doctor immediately if you:\r\nThe wound doesn\'t heal normally, formation of puss.'),
(14, 'Injury from sports', 'A sports injury can be caused by an accident, impact, poor training practices, improper equipment, lack of conditioning, or insufficient warmup and stretching. \r\n', 'The RICE method is a common treatment regimen for sports injuries. It stands for, rest,ice,compression,elevation\r\n', 'Difficulty breathing, dizziness, fever\r\n', 'See a doctor immediately if you:\r\nThere are signs of swelling or if it hurts to place weight on the affected area. If the problem is in the location of a previous injury, seek medical attention right away. Contact a healthcare provider if you don’t see any improvement after 24 to 36 hours of RICE.\r\n'),
(15, 'Internal pain', 'injuries to internal organs, such as the gallbladder, intestines, bladder, or kidneys.\r\ndamage to the core muscles or abdominal wall.\r\nspasms in the core muscles.acid indigestion.other digestive problems such as constipation.infections in the digestive and renal systems.Internal pain, also known as ', 'Best to consult a doctor.', 'Irritable bowel syndrome, Shingles, Kidney stone, Somatic symptom disorder', 'See a doctor immediately.'),
(16, 'Joint pain', 'Joint pain can have causes that aren\'t due to underlying disease. Examples include overuse such as heavy physical activity, lack of use, sprains or strains\r\n', 'Exercising regularly may help to decrease pain and increase mobility and flexibility without causing joint damage. Low-impact activities, ice packs and pain medications may also help.\r\n', 'Aethritis, Osteoarthritis, Muscle strain, Osteoarthritis, Fibromyalgia, Bursitis \r\n', ' See a doctor immediately if you:\r\nHave intense pain or joint deformity, Experience sudden swelling, Can no longer move the joint, Develop a fever of 102°F (39°C) or more.'),
(17, 'Knee pain', 'Knee pain can have causes that aren\'t due to underlying disease. Examples include heavy physical activity, lack of use, injuries such as sprains or strains, sitting in a constrained area or sitting on knees for a prolonged period.\r\n', 'Losing weight may help relieve long-term knee pain. For new pain, resting, applying ice several times a day, keeping the injured area elevated and wrapping the area with an elastic bandage may help. Avoiding squatting and climbing stairs may also help\r\n', 'Sprained knee, ACL injury, Patellofemoral pain syndrome, osteoarthrities, Buursitis \r\n', 'See a doctor immediately if you:\r\nHeard a popping sound when your knee was injured, Notice your knee looks deformed, Feel severe pain, Have sudden swelling, Can\'t use your knee.\r\n'),
(18, 'Muscle pain', 'Muscle pain can have causes that aren\'t due to underlying disease. Examples include exercise, prolonged sitting or lying down, doing a new physical activity for the first time, sprains or strains.\r\n', 'Using rest, ice, compression and elevation (RICE) may help to reduce muscle pain. Taking pain medication such as paracetamol or ibuprofen may also help\r\n', 'Fibromyalgia, muscle strain, mypsitis, Rhabdomyolysis, Polymyalgia, Rhusmatica\r\n', 'See a doctor immediately if you:\r\nHave trouble breathing or dizziness, Experience extreme muscle weakness, Develop a high fever and stiff neck\r\n'),
(19, 'Neck pain', 'Neck pain can have causes that aren\'t due to underlying disease. Examples include prolonged straining (looking up or down), sleeping in an uncomfortable position, stress, chiropractic manipulation or wearing heavy necklaces\r\n', 'Alternating an ice pack with heat, several times a day for 30 minutes, gentle stretching and massage may help to relieve neck pain. Gentle exercise and good posture may also help to prevent it. Pain relievers such as paracetamol and ibuprofen may also be useful.\r\n', 'Poor sleep hygiene, muscle strain, Whiplash, Arthritis.\r\n', 'See a doctor immediately if you:\r\nExperience pain after trauma or injury, Feel weakness in an arm or leg, Have trouble walking, Develop a high fever,Have neck stiffness.\r\n'),
(20, 'Open wound', 'An open wound is an injury involving an external or internal break in body tissue, usually involving the skin. Nearly everyone will experience an open wound at some point in their life. Most open wounds are minor and can be treated at home.\r\n', 'Minor wounds can be treated at home. First, wash and disinfect the wound to remove all dirt and debris. Use direct pressure and elevation to control bleeding and swelling.\r\nWhen wrapping the wound, always use a sterile dressing or bandage. Very minor wounds may heal without a bandage. You’ll need to', 'Abrasion, Laceration, Puncture, Avulsion\r\n', 'See a doctor immediately if you:\r\nAn open wound is deeper than 1/2 inch, bleeding doesn’t stop with direct pressure, bleeding lasts longer than 20 minutes, bleeding is the result of a serious accident.\r\n'),
(21, 'Shoulder pain', 'Shoulder pain can have causes that aren\'t due to underlying disease. Examples include overuse, disuse, sprain, strain or sleeping on side.\r\n', 'Resting and avoiding movements that cause pain may relieve physical discomfort. Icing the painful area and taking pain medication such as ibuprofen, paracetamol or diclofenac may also help.\r\n', 'Swimmer\'s shoulder, Angina, Bursitis, Dislocated shoulder, Rotator cuff injury\r\n', 'See a doctor immediately if you:\r\nFeel severe pain, Get sudden swelling, Can\'t move your shoulder joint, Have a visible deformity, particularly after an injury.\r\n'),
(22, 'Skin issue', 'Bacteria trapped in skin pores and hair follicles, fungus, parasites, or microorganisms living on the skin, viruses,a weakened immune system ,contact with allergens, irritants, or another person’s infected skin ,genetic factors ,illnesses affecting the thyroid, immune system, kidneys', 'Wash your hands with soap and warm water frequently. Avoid sharing eating utensils and drinking glasses with other people. Avoid direct contact with the skin of other people who have an infection. Clean things in public spaces, such as gym equipment, before using them. Don’t share personal items, su', 'Eczema, diaper,rash, seborrheic, dermatitis, chickenpox, measles, warts, acne, fifth disease, hives, ringworm, rashes from bacterial or fungal, infections, rashes from allergic reactions.\r\n', 'See a doctor immediately if you:\r\nThe skin ailment causes pain or has harsh symptoms.\r\n'),
(23, 'Stomach ache', 'Abdominal pain can have causes that aren\'t due to underlying disease. Examples include constipation, wind, overeating, stress or muscle strain.\r\n', 'Taking an antacid or anti-wind medication and eating smaller meals may help to relieve heartburn or wind. It\'s best to avoid taking aspirin or ibuprofen as these medications can worsen some abdominal pain.\r\n', 'Stomach flu, ovulation pain, appendicitis, diverticulitis, gastrities\r\n', 'See a doctor immediately if you:\r\nFeel severe pain that worsens with movement, Develop a fever, Vomit or have bloody diarrhea, Experience abdominal swelling, Have chest pain or pressure.\r\n'),
(24, 'Feeling dizzy', 'Dizziness can have causes that aren\'t due to underlying disease. Examples include spinning in circles, intoxication, medication side effects or standing up too quickly.\r\n', 'Moving more slowly from a sitting or lying position to a standing one may help reduce dizziness. Drinking plenty of decaffeinated fluids and avoiding smoking may also help.\r\n', 'Motion sickness, begin paroxysmal, positional vertigo, dehydration, migraine, alcohol poisoning', 'See a doctor immediately if you:\r\nExperience chest pain, an irregular heartbeat or shortness of breath, Have severe headache, difficulty walking, trouble speaking, vision changes, facial weakness or numbness, Become dizzy after a head injury, Develop a high fever, stiff neck or persistent vomiting.'),
(25, 'Foot ache', 'Foot pain can have causes that aren\'t due to underlying disease. Examples include poorly fitting shoes, prolonged period on feet, overuse such as long walks or running a marathon, sprains, strains or trauma.', 'Resting the foot as much as possible, avoiding activities that worsen pain and icing the area for up to 20 minutes, several times a day, may help to relieve pain. Taking pain medication such as paracetamol or ibuprofen may also help.\r\n', 'Plantar fasciitis, Flat feet, Hammer toe, Bunions, Sprained ankle', 'See a doctor immediately if you:\r\nHave an open wound or obvious deformity, Experience severe pain or swelling, Can\'t bear any weight on your foot, Show signs of infection, such as redness or fever, Have a wound that isn\'t healing.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL,
  `password` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`) VALUES
(19, '2', '$2b$12$tmGIcxYNoltZX8Kw5URlguPdt7NWN7TIrLlDEOrodDQTM96VxG6WW', '2@gmail.com'),
(20, '3', '$2b$12$qMq8RjrVQBC88vO4mjBE4eJFzeibrGmKZuPRSH6FAZMtv.W7lJFsS', '3@gmail.com'),
(21, '4', '$2b$12$7OymXIO1TrTNcAKo1C8GkeQYVyjmD6ENOVVJccs511crUw/xXhxN2', '4@g.com'),
(22, '1', '$2b$12$ItwvF2UK..GZfaJ3lJFM9.tXrOjY1Eo4fLROxVKO23PLP.YXzKm7W', '1@gmail.com'),
(23, '2', '$2b$12$5ogn3ZpqnIcX.9nwyt1Zo.wM4bPXgNHCLRwgMTPttJ3Q2DG7MAira', '2@gmai'),
(24, '5', '$2b$12$TEQVpbOgcNhdb0/XUYbtw.dHAD7OvVqSNG.9PYQuftXZguL6qbjlu', '5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
CREATE TABLE IF NOT EXISTS `user_data` (
  `id` int(10) NOT NULL,
  `date` varchar(200) NOT NULL,
  `text` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `classification` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `date`, `text`, `classification`) VALUES
(20, '09:53:35 PM, Tuesday, 28 July 2020', 'back pain', 'Back pain'),
(20, '09:58:30 PM, Tuesday, 28 July 2020', 'back pain', 'Back pain'),
(20, '09:58:39 PM, Tuesday, 28 July 2020', 'knee pain', 'Knee pain'),
(20, '09:58:45 PM, Tuesday, 28 July 2020', 'knee pain', 'Knee pain'),
(20, '09:59:23 PM, Tuesday, 28 July 2020', 'knee pain', 'Knee pain'),
(20, '10:48:45 PM, Tuesday, 28 July 2020', 'head hurts', 'Head ache'),
(20, '11:03:28 PM, Tuesday, 28 July 2020', '', 'Stomach ache'),
(24, '11:36:55 PM, Tuesday, 28 July 2020', 'back paijn', 'Back pain'),
(24, '09:49:04 PM, Friday, 31 July 2020', 'backpain', 'Back pain');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`id`) REFERENCES `remedy` (`id`);

--
-- Constraints for table `user_data`
--
ALTER TABLE `user_data`
  ADD CONSTRAINT `user_data_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
