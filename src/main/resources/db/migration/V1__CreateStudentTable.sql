CREATE TABLE IF NOT EXISTS student (
    student_id UUID PRIMARY KEY NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(20),
    gender VARCHAR(6) NOT NULL
        CHECK (
            gender = 'MALE' OR
            gender = 'male' OR
            gender = 'FEMALE' OR
            gender = 'famale'
            )

);

insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('27cbbe0b-4469-4ef6-9c18-bfa4d4128c3d', 'Ermina', 'Levens', 'elevens0@123-reg.co.uk', '+62 (572) 314-3452', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('d369647a-2a8f-4a96-adc1-3de674a1be26', 'Hettie', 'Gillbey', 'hgillbey1@topsy.com', '+52 (492) 317-6226', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('b7bb116f-c091-4d43-bd79-f4d4bf0a9435', 'Anallise', 'Pickton', 'apickton2@amazon.com', '+62 (757) 755-5028', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('98157de9-2ab4-4c55-874f-826f24e35078', 'Sonny', 'Mullineux', 'smullineux3@discovery.com', '+62 (827) 983-8681', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('eca2e9ca-cb10-4016-9605-437a9d3cdfd2', 'Zorine', 'Fawdry', 'zfawdry4@constantcontact.com', '+48 (592) 592-5704', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('910dcb2f-e5c3-4b86-9bcc-b7b93c96c41a', 'Dorothea', 'Hanington', 'dhanington5@youtu.be', '+48 (785) 121-7677', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('737b0069-e817-4860-8533-6832ca6cc1a9', 'Thomasa', 'Mowatt', 'tmowatt6@lycos.com', '+81 (731) 300-1880', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('38b34aa2-c0d4-489d-85f0-bada90222072', 'Pate', 'Arend', 'parend7@smugmug.com', '+51 (603) 161-9879', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('1096c818-f6dc-4881-82dd-14fb7a52d1e8', 'Ysabel', 'Torre', 'ytorre8@technorati.com', '+62 (403) 767-9733', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('c7d47f31-2ce0-4985-a2ef-5f23ec710d0b', 'Red', 'Fraschetti', 'rfraschetti9@psu.edu', '+7 (910) 336-0484', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('e4a71966-96a4-4d32-b211-9a9250860dab', 'Arty', 'Pedron', 'apedrona@slashdot.org', '+507 (761) 755-8330', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('6ee7eeee-04d2-4588-879d-d3b28e4d6c74', 'Estel', 'Jefferys', 'ejefferysb@creativecommons.org', '+7 (540) 934-7660', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('077072cf-acc3-44fb-ada7-73ad4ddca2dd', 'Yves', 'Kleisel', 'ykleiselc@nymag.com', '+62 (745) 753-9135', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('7e6678d4-e286-4569-96b3-94c0e9638b5a', 'Anni', 'Mallall', 'amallalld@blogs.com', '+62 (806) 500-7762', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('4d2f5d39-22a5-4066-ab29-222d59903b46', 'Ernesta', 'Vanini', 'evaninie@dropbox.com', '+51 (897) 971-6811', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('024e77da-6485-44bf-bb71-0ec98111dfad', 'Bjorn', 'Merton', 'bmertonf@eventbrite.com', '+63 (297) 631-2403', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('15a37ce6-57a2-4f0f-abc3-c951162c9a55', 'Corey', 'Hunston', 'chunstong@stanford.edu', '+55 (552) 817-4320', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('5cae6003-a077-4308-8b4c-6ea8fa5b2a81', 'Aubine', 'Boncore', 'aboncoreh@accuweather.com', '+66 (670) 129-1934', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('90237a43-6ad1-4ce3-b8a8-6c2ef3449f2b', 'Krystalle', 'Glasspool', 'kglasspooli@amazonaws.com', '+55 (753) 802-8322', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('428a86f6-1c3a-4353-9e2f-9f1110e4fff9', 'Umeko', 'Wilcocks', 'uwilcocksj@instagram.com', '+86 (526) 651-1829', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('12066809-b71f-47b6-a1ba-bed164f7f5c4', 'Louisette', 'Crut', 'lcrutk@icq.com', '+7 (152) 890-3239', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('93c34906-599f-4519-86ac-a9edb0222a40', 'Berti', 'Rittelmeyer', 'brittelmeyerl@symantec.com', '+1 (206) 763-3308', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('7b90bb62-d9cc-453c-b040-bf2d6a722ab2', 'Dougie', 'Poker', 'dpokerm@netvibes.com', '+66 (383) 590-5246', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('cc54f2dc-42cd-43f3-9905-146c5a9e9d1e', 'Carrie', 'Rogeon', 'crogeonn@linkedin.com', '+251 (914) 448-3869', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('3b072c5b-3917-430e-8f1e-53cb3fe653d9', 'Hynda', 'Tansill', 'htansillo@sina.com.cn', '+225 (457) 249-4064', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('daaf32bd-dafc-4c28-9a10-8bc7278345f7', 'Sydney', 'Downing', 'sdowningp@deviantart.com', '+62 (220) 566-7352', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('522955bf-2d60-42e2-8b51-463a0b3d9f43', 'Ronny', 'Hughland', 'rhughlandq@vimeo.com', '+84 (611) 873-1146', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('1b29cd5f-9f21-453a-bd16-071a51004b6f', 'Midge', 'Jaimez', 'mjaimezr@php.net', '+235 (791) 147-4019', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('ece640e8-4662-43f4-8bb3-8bc3d07ce768', 'Janot', 'Jansky', 'jjanskys@hc360.com', '+63 (632) 189-9223', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('195c5b6b-7f60-410a-80a0-273146cf3636', 'Winne', 'Lewendon', 'wlewendont@cbc.ca', '+216 (367) 401-0535', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('95042b92-01c6-433e-99e6-691bf2d8754a', 'Cecily', 'Ramlot', 'cramlotu@amazonaws.com', '+1 (303) 646-7443', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('0f110636-4b66-4bb3-98fe-c36ca0dacc2d', 'Beatrice', 'Longden', 'blongdenv@cargocollective.com', '+852 (193) 752-7961', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('4c6feaca-8424-473e-aee5-155b32ce1ab8', 'Donaugh', 'Standley', 'dstandleyw@newsvine.com', '+62 (870) 897-9420', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('d0ef823c-2974-4a11-9efa-46c1e1967fdb', 'Netta', 'Kapelhof', 'nkapelhofx@pagesperso-orange.fr', '+231 (529) 416-1088', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('4104395f-405b-4ea3-a199-74975750d52a', 'Son', 'Gillopp', 'sgilloppy@lycos.com', '+62 (636) 287-3871', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('cd690abb-014c-42d9-b7ec-762bd431604d', 'Daryn', 'Gedge', 'dgedgez@pen.io', '+62 (427) 833-9484', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('80e2917f-036e-4276-a72d-91aed9e77e29', 'Lexie', 'Prettyjohn', 'lprettyjohn10@google.com.hk', '+966 (797) 143-5532', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('0c845317-b81d-4bf6-85f3-021c9b6c3099', 'Shaun', 'Briscow', 'sbriscow11@vimeo.com', '+62 (142) 487-0416', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('07209550-b910-4f46-b44e-10f90cffe2ae', 'Catlee', 'Matthai', 'cmatthai12@comcast.net', '+258 (109) 901-8113', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('20fa6ce8-5ace-4900-9e2a-86328d13ebf9', 'Jonah', 'Leighton', 'jleighton13@cbsnews.com', '+86 (847) 926-6469', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('fa081008-c24c-428d-9dc2-74ace8037003', 'Addie', 'Halpin', 'ahalpin14@buzzfeed.com', '+353 (219) 724-2197', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('efa37fc6-9d96-4922-902f-b50d652766b7', 'Mitchael', 'Boram', 'mboram15@reuters.com', '+46 (106) 482-4266', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('c1ab1f8f-a7d8-49af-b2d4-9ef87626c855', 'Todd', 'Hendin', 'thendin16@is.gd', '+420 (341) 508-6755', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('dc5128af-3305-4187-a1be-b2839f97d862', 'Roscoe', 'McClinton', 'rmcclinton17@google.ca', '+86 (830) 679-4885', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('0a3a914b-2199-4025-8096-ae968712d5b3', 'Anna-diana', 'Menichi', 'amenichi18@angelfire.com', '+62 (610) 611-3922', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('e6101039-68e1-4dd6-b818-bf5c9b3cfc19', 'Dawna', 'Burree', 'dburree19@rediff.com', '+30 (573) 129-7253', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('f657f49f-2cfb-40aa-8496-4961b752c53d', 'Adam', 'Doubleday', 'adoubleday1a@newyorker.com', '+33 (851) 783-5093', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('a22b5f19-fd56-47af-a23f-2dd032f7a6e5', 'Darryl', 'Lerner', 'dlerner1b@bizjournals.com', '+1 (608) 689-4427', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('71505437-6fbd-40a4-a487-3ded7019fe2f', 'Gusty', 'Palphramand', 'gpalphramand1c@technorati.com', '+63 (396) 388-3162', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('a9911b9f-973c-498f-8aca-565b5178811c', 'Corbie', 'Corbin', 'ccorbin1d@icio.us', '+351 (677) 810-4459', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('95b99ebb-7384-4a69-ae30-25ab0e817771', 'Nicolea', 'Starking', 'nstarking1e@cbc.ca', '+62 (471) 776-6432', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('b8e30993-196e-43c9-a45f-0d8d0217a16b', 'Padgett', 'Cubin', 'pcubin1f@bloglovin.com', '+86 (565) 177-8258', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('5667d9de-686a-48ea-9325-5e578c0985cf', 'Regan', 'O''Rowane', 'rorowane1g@si.edu', '+48 (296) 851-7051', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('97ab6f84-81c7-498b-a6ba-94093d2b49f3', 'Nannette', 'Ornils', 'nornils1h@arizona.edu', '+1 (570) 298-5925', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('af70f843-477b-4fe2-a240-cb05ffe3d073', 'Bondy', 'Buckoke', 'bbuckoke1i@eventbrite.com', '+216 (707) 712-9178', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('06ff4488-10dc-4f30-8823-5bda75958486', 'Calhoun', 'Tevlin', 'ctevlin1j@gnu.org', '+46 (368) 541-4034', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('76e0615d-7105-4bfe-ad67-74ca35e07d4c', 'Gerick', 'Fishpond', 'gfishpond1k@ycombinator.com', '+53 (958) 748-6002', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('b84984fa-4520-49b0-9aca-df9ef3db3d8e', 'Dody', 'Leethem', 'dleethem1l@purevolume.com', '+62 (552) 156-8741', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('61e7301e-72ba-4c9a-9cb2-fd5c28a542d2', 'Fleur', 'Skinner', 'fskinner1m@engadget.com', '+55 (852) 403-1058', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('923559b7-1055-4eb6-b0cc-1c037daae27e', 'Chico', 'Durtnall', 'cdurtnall1n@stumbleupon.com', '+420 (767) 292-2139', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('e5011154-cd8b-48e8-acb5-2420e3ecb069', 'Jude', 'Feitosa', 'jfeitosa1o@canalblog.com', '+81 (659) 881-4418', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('d1532973-e1a8-42b8-80a1-6062e1f36c94', 'Nonna', 'Henric', 'nhenric1p@issuu.com', '+1 (315) 755-1505', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('c1f9ee15-91c4-4aa1-90fe-549b7a31da72', 'Gavin', 'Burgis', 'gburgis1q@businesswire.com', '+92 (478) 395-2421', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('06c28046-1141-45fa-8742-58fca6ec124d', 'Melba', 'Lintot', 'mlintot1r@wisc.edu', '+86 (181) 344-1496', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('5aaa2b9c-c560-4f22-9cc0-341c7f3aeab5', 'Lenard', 'Bray', 'lbray1s@va.gov', '+63 (723) 230-2264', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('67243079-3a24-4142-9617-2a40109f1051', 'Tome', 'Selbie', 'tselbie1t@elegantthemes.com', '+967 (800) 830-4702', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('9e2ec79d-4570-45af-a779-6eecd325f64f', 'Ware', 'Hedger', 'whedger1u@wiley.com', '+7 (211) 273-0754', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('1cc44f1b-b081-449f-b5a5-4b833121ca2d', 'Jeana', 'Farmloe', 'jfarmloe1v@list-manage.com', '+386 (164) 390-4457', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('b978f9e3-f6b5-49cc-bdc1-803e73599630', 'Venus', 'Shuker', 'vshuker1w@archive.org', '+62 (640) 844-4841', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('0884a4ec-4317-4c52-8fcd-6ba30dce841a', 'Ephrem', 'Zimmerman', 'ezimmerman1x@symantec.com', '+55 (468) 797-4663', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('72424d69-bcdb-42bb-b366-137e5b3b6fd7', 'Gael', 'Butter', 'gbutter1y@chronoengine.com', '+62 (308) 813-3015', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('f4127120-bc7b-4520-ab12-562496eec7c0', 'Brigit', 'Rysdale', 'brysdale1z@techcrunch.com', '+505 (329) 565-7604', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('14eeb769-b611-4c44-a233-c829336c6a5a', 'Kellie', 'Grene', 'kgrene20@taobao.com', '+591 (275) 973-9610', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('68b7d158-1a2c-4a82-b1dd-e139e6cba47a', 'Gayla', 'Boothe', 'gboothe21@furl.net', '+86 (243) 345-8892', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('598aca05-b038-45ae-a557-cfeec8739dda', 'Maddi', 'Rousby', 'mrousby22@123-reg.co.uk', '+1 (495) 384-9321', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('65654d1e-929b-450c-816c-161e4d413604', 'Filip', 'Lepper', 'flepper23@dailymotion.com', '+374 (512) 412-4211', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('255d27db-d518-4d97-bebd-9f4cda8383d5', 'Izaak', 'Holtaway', 'iholtaway24@furl.net', '+62 (668) 633-3941', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('635d9dd9-eb48-486e-9063-ab1f0b8e7b07', 'Fedora', 'Kelson', 'fkelson25@nih.gov', '+55 (388) 559-7286', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('58e5c5a2-dc6a-45e5-80df-c8c2d36d8bb7', 'Haleigh', 'Wardley', 'hwardley26@aboutads.info', '+358 (957) 655-4821', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('42f09e05-6e53-458d-9799-e405171c0f60', 'Alvin', 'Blaise', 'ablaise27@cbc.ca', '+86 (167) 997-5218', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('2e9b5aa5-88fd-4e36-8c2b-12ebfe1bbbf6', 'Artur', 'Syversen', 'asyversen28@mlb.com', '+86 (933) 510-2019', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('b8afbaab-80b9-43a8-b226-adc87b1dc8e6', 'Hedwiga', 'Bettleson', 'hbettleson29@indiegogo.com', '+994 (188) 549-9410', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('b614c26d-9848-4510-9c77-974ad0104f6b', 'Falito', 'Stetlye', 'fstetlye2a@studiopress.com', '+351 (287) 516-5552', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('48d3b318-cf26-4843-8dfd-7983f002ad29', 'Henrietta', 'Sword', 'hsword2b@youtu.be', '+46 (278) 145-7553', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('54b5f8b4-40bb-4e8d-94ad-86807de932da', 'Adelice', 'Liccardi', 'aliccardi2c@constantcontact.com', '+359 (160) 263-5139', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('4470b5f1-008f-435a-84b1-834a167c1d62', 'Ellie', 'Cope', 'ecope2d@histats.com', '+55 (215) 863-5921', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('b66d168e-539e-423a-ae9d-6e3dd57457c9', 'Murvyn', 'Gaynes', 'mgaynes2e@theguardian.com', '+57 (371) 763-9354', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('60df9bf0-243d-48cb-a4d1-3559322528a8', 'Peggy', 'Szymanek', 'pszymanek2f@etsy.com', '+351 (102) 448-0377', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('cb2641ec-5b2a-4426-a8f9-b44d3c513036', 'Wilburt', 'McGarrell', 'wmcgarrell2g@netvibes.com', '+82 (139) 884-9227', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('e0473e4c-2157-4457-bb14-734a6fec0e23', 'La verne', 'Ellissen', 'lellissen2h@gizmodo.com', '+55 (875) 476-9539', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('b4d6e778-494d-47b4-9033-eed409c5e5e7', 'Araldo', 'Camin', 'acamin2i@archive.org', '+63 (729) 113-8476', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('de799eea-ed58-4e92-91cf-2d910cb5de74', 'Briggs', 'Dacks', 'bdacks2j@nydailynews.com', '+380 (453) 619-9400', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('d419292a-1459-43e9-ae29-2c443d509ecb', 'Evangelina', 'Gant', 'egant2k@seattletimes.com', '+86 (585) 218-8409', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('47ceb829-4d28-4731-9da5-31f8a386108f', 'Lurline', 'Jiggle', 'ljiggle2l@jiathis.com', '+680 (919) 411-8133', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('7fbddb3b-6fd2-4a09-8722-32bafc053dbb', 'Hilly', 'Cicero', 'hcicero2m@weibo.com', '+593 (290) 398-0262', 'MALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('a04df05e-87d4-4d8a-ba91-739a38ff5b53', 'Gabbie', 'Gatchel', 'ggatchel2n@smugmug.com', '+54 (485) 992-7622', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('2d0c6f8a-3458-40dd-9224-2fb8aea7ea63', 'Inna', 'O''Brian', 'iobrian2o@techcrunch.com', '+30 (166) 851-4059', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('3784e160-4f3d-46ba-801d-ec53cf732a75', 'Jerrie', 'Edmonson', 'jedmonson2p@google.es', '+86 (847) 405-7641', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('4927265d-ba97-4514-9206-22aa8b6a03b0', 'Susy', 'Nock', 'snock2q@com.com', '+62 (123) 371-7749', 'FEMALE');
insert into student (student_id, first_name, last_name, email, phone_number, gender) values ('4b64e55b-3d8c-439b-84ea-d5d130fb866e', 'Welch', 'Mealiffe', 'wmealiffe2r@tmall.com', '+593 (608) 138-4087', 'MALE');