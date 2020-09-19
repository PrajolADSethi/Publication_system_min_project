DROP DATABASE try1;
Show databases;

CREATE DATABASE try1;
use try1;

CREATE TABLE AUTHOR (
	TITLE VARCHAR(250),
    AUTHOR_NAME VARCHAR(250) NOT NULL,
    CO_AUTHOR_NAME VARCHAR(250) ,
    EMAIL VARCHAR(100),
    AFFILIATION VARCHAR(550),
    PRIMARY KEY(AUTHOR_NAME)
);
ALTER TABLE AUTHOR ADD UNIQUE (TITLE);
ALTER TABLE AUTHOR MODIFY TITLE VARCHAR(250) NOT NULL;
DESC AUTHOR;

CREATE TABLE PUBLICATION (
PUBLICATION_ID VARCHAR(20) NOT NULL,  
P_NAME VARCHAR(50) NOT NULL,  
SUBJECT VARCHAR(20) NOT NULL,
PRIMARY KEY (PUBLICATION_ID)                             
);

CREATE TABLE READER (
    R_EMAIL VARCHAR(100) NOT NULL,
    R_NAME VARCHAR(30) NOT NULL,    
    SUBJECT VARCHAR(50) NOT NULL,
    AFFILIATION VARCHAR(250), 
    PRIMARY KEY(R_EMAIL)
); 

CREATE TABLE JOURNAL (
    JOURNAL_ID VARCHAR(10) NOT NULL,
    PUBLICATION_ID VARCHAR(20) NOT NULL,
	JOURNAL_NAME VARCHAR(250) NOT NULL,
    AREA_OF_RESEARCH VARCHAR(20) NOT NULL,  
    VOLUME INT,
    ISSUE INT,
	PRIMARY KEY(JOURNAL_ID),
    FOREIGN KEY (PUBLICATION_ID) REFERENCES PUBLICATION(PUBLICATION_ID)
 );


 CREATE TABLE ARTICLE(
	DOI VARCHAR(250) NOT NULL,
	AUTHOR_NAME VARCHAR(250) NOT NULL,
    TITLE VARCHAR(250) NOT NULL,
	DATE_OF_PUBLICATION INT,   
    JOURNAL_ID VARCHAR(100) NOT NULL,
    LINK VARCHAR(500) NOT NULL UNIQUE,
    AREA_OF_RESEARCH VARCHAR(200) NOT NULL,  
	PRIMARY KEY(DOI, TITLE),
    FOREIGN KEY (AUTHOR_NAME) REFERENCES AUTHOR(AUTHOR_NAME),
    FOREIGN KEY (JOURNAL_ID) REFERENCES JOURNAL(JOURNAL_ID)
);
ALTER TABLE ARTICLE MODIFY DATE_OF_PUBLICATION INT NOT NULL;
ALTER TABLE ARTICLE ADD UNIQUE (JOURNAL_ID);


DESC ARTICLE;
show tables;

-- drop table article;
-- drop table journal;
-- drop table journal;
-- drop table author;
 
CREATE TABLE NEW_ENTRIES (
	DOI	VARCHAR(15) NOT NULL,
    FIRST_NAME VARCHAR(15) NOT NULL,
    LAST_NAME VARCHAR(15),
    EMAIL VARCHAR(25),
    ARTICLE_TITLE VARCHAR(50),
    AREA_OF_RESEARCH VARCHAR(20) NOT NULL,
    JOURNAL_NAME VARCHAR(30) NOT NULL,
    VOLUME INT NOT NULL,
    ISSUE INT NOT NULL,
	LINK VARCHAR(250) NOT NULL,
	PRIMARY KEY(DOI)       
);
DESC NEW_ENTRIES;
CREATE TABLE FRESH_DOI
   (
   DOI1 VARCHAR(250)
   );
INSERT INTO AUTHOR VALUES
    ('MRI evaluation of involvement of parotid and submandibular glands by tongue squamous cell carcinoma','Panchbhai A.','Bhowate R.','APanchbhai@dmims.edu.in','DMIMS, Nagpur'),
    ('Determinants of Tobacco Use among Children of a Rural Village in India: An Exploratory Qualitative Study','Goyal A.','Sharma A.','GoyalA@dmims.edu.in','DMIMS, Nagpur'),
    ('Role of Eustachian Dysfunction and Primary Sclerotic Mastoid Pneumatisation Pattern in Aetiology of Squamous Chronic Otitis Media: A Correlative Study','Jain. S','Singh P.',NULL,'Department of Otorhinolaryngology and Head and Neck Surgery, Jawahar Lal Nehru Medical College, Datta Meghe Institute of Medical Sciences (DU), Sawangi, Wardha, Maharashtra 442004, India'),
    ('Apparent and true resistant hypertension: definition, prevalence and outcomes','E Judd','D A Calhoun',NULL,'Vascular Biology and Hypertension Program, University of Alabama at Birmingham, Birmingham, AL, USA.'),
    ('Roles for sleep in memory: insights from the fly','Jeffrey M Donlea',NULL,'jdonlea@ucla.edu.','Department of Neurobiology, David Geffen School of Medicine at the University of California Los Angeles, Los Angeles, CA 90095-1763, USA.'),
    ('The neurobiology of love','S Zeki',NULL,'zeki.pa@ucl.ac.uk','University College, Department of Anatomy, London, UK'),
    ('Pattern formation of a predator-prey model with the cost of anti-predator behaviors','Xiaoying Wang','Xingfu Zou',NULL,'Department of Applied Mathematics, University of Western Ontario, London, ON, Canada N6A 5B7.'),
    ('Vegan-vegetarian diets in pregnancy: danger or panacea? A systematic narrative review','G B Piccoli','R Clari,',NULL,'SS Nephrology, Department of Biological and Clinical Sciences, University of Torino, Torino, Italy.'),
    ('Stem Cell Therapy in Heart Diseases - Cell Types, Mechanisms and Improvement Strategies','Paula Müller','Heiko Lemcke 1',NULL,'Reference and Translation Center for Cardiac Stem Cell Therapy (RTC), Department of Cardiac Surgery, Rostock University Medical Center, Rostock, Germany.'),
    ('Human embryonic stem cells vs human induced pluripotent stem cells for cardiac repair','Lili Barad','Revital Schick','binah@tx.technion.ac.il.','Department of Physiology, Technion, Haifa, Israel; The Rappaport Family Institute, Technion, Haifa, Israel; Ruth and Bruce Rappaport Faculty of Medicine, Technion, Haifa, Israel.'),
    ('What Is Cancer?','Daniel M Hausman',NULL,NULL,NULL),
    ('A two-dimensional theory of health','Per-Anders Tengland ',NULL,'per-anders.tengland@hs.mah.se','Health and Society, Malmö University, 206 05, Malmö, Sweden'),
    ('Hunting for health, well-being, and quality of life','Ove Svensson ','Lillemor R-M Hallberg',NULL,'School of Social and Health Sciences, Halmstad University, Sweden.'),
    ('Travelling along a road with obstacles: experiences of managing life to feel well while living with migraine','Stina Rutberg','Kerstin Ohrling','stina.rutberg@ltu.se','Department of Health Sciences, Luleå University of Technology, Luleå, Sweden.'),
    ('Living with obsessive-compulsive disorder (OCD): a South African narrative','Kirsten Celeste Kohler','Bronwynè Jo''sean Coetzee',NULL,'Department of Psychology, Stellenbosch University, Stellenbosch, South Africa.'),
    ('Parkinson''s Disease and Parkinsonism','Michael T Hayes',NULL,'mthayes@bwh.harvard.edu.','Department of Neurology, Brigham and Women''s Hospital, Harvard Medical School, Boston, Mass. '),
    ('Control of Reactive Oxygen Species for the Prevention of Parkinson''s Disease: The Possible Application of Flavonoids','Tae Yeon Kim','Eunju Leem',NULL,'School of Life Sciences, BK21 plus KNU Creative BioResearch Group, Kyungpook National University, Daegu 41566, Korea.'),
    ('Is evolution predictable?','David Reznick','Joseph Travis','david.reznick@ucr.edu.','Department of Evolution, Ecology and Organismal Biology, University of California, Riverside, CA 92521, USA'),
    ('Eppendorf & Science Prize. Essays on science and society. Making a bigger brain by regulating cell cycle exit','Anjen Chenn',NULL,NULL,'Department of Pathology, Northwestern University, The Feinberg School of Medicine, Chicago, IL 60611-3008, USA.'),
    ('The neuropharmacology of sleep paralysis hallucinations: serotonin 2A activation and a novel therapeutic drug','Baland Jalal',NULL,'bj272@cam.ac.uk.','Department of Psychiatry and Behavioural and Clinical Neuroscience Institute, University of Cambridge, Cambridge, UK.'),
    ('Hallucinogenic 5-HT2AR agonists LSD and DOI enhance dopamine D2R protomer recognition and signaling of D2-5-HT2A heteroreceptor complexes','Dasiel O Borroto-Escuela ','Romero-Fernandez W','Dasiel.Borroto-Escuela@ki.se.','Department of Neuroscience, Karolinska Institutet, Stockholm, Sweden.'),
    ('Technosphere inhaled insulin (Afrezza)','M Rendell',NULL,'Rendell@asndi.com.','Creighton University Diabetes Center, Omaha, Nebraska, USA.'),
    ('Hippocampus and epilepsy: Findings from human tissues','G Huberfeld','T Blauwblomme 2','gilles.huberfeld@upmc.fr.','Département de neurophysiologie, Sorbonne universités, UPMC - université Paris 06, UPMC, CHU de la Pitié-Salpêtrière, 47-83, boulevard de l''Hôpital, 75013 Paris, France; INSERM Unit U1129 Infantile Epilepsies and Brain Plasticity, University Paris Descartes, Sorbonne Paris Cité, CEA, 12, rue de l''École-de-Médecine, 75006 Paris, France.'),
    ('Neuroinflammation and Not Tauopathy Is a Predominant Pathological Signature of Nodding Syndrome','An Hotterbeekx',NULL,NULL,'Global Health Institute, University of Antwerp, Antwerp, Belgium.'),
    ('Zika Virus','Ryan F Relich','Michael Loeffelholz','rrelich@iupui.edu.','Department of Pathology and Laboratory Medicine, Indiana University School of Medicine, 350 West 11th Street, Suite 6027, Indianapolis, IN 46202, USA.'),
    ('Roboticists should never look at their creations in the same way again','Robin R. Murphy','-','robin.r.murphy@tamu.edu','Texas A&M University'),
    ('Enhancing insect flight research with a lab-on-cables','Sanjay P. Sane','-','sane@ncbs.res.in','National Centre for Biological Sciences'),
    ('Tensegrity metamaterials for soft robotics','Li Wen','Fei Pan','liwen@buaa.edu.cn','School of Mechanical Engineering and Automation'),
    ('Integrating chemical fuels and artificial muscles for untethered microrobots','Ryan L. Truby','Shuguang Li','rltruby@mit.edu','Computer Science and Artificial Intelligence Laboratory'),
    ('Structural batteries take a load off','Jodie L. Lutkenhaus','Paraskevi Flouda','jodie.lutkenhaus@tamu.edu','Artie McFerrin Department of Chemical Engineering'),
    ('3D-printed programmable tensegrity for soft robotics','Hajun Lee','Yeonwoo Jang','jiyunkim@unist.ac.kr','School of Material Science and Engineering'),
    ('An 88-milligram insect-scale autonomous crawling robot driven by a catalytic artificial muscle','Xiufeng Yang','Longlong Chang','xiufeng@usc.edu','Department of Aerospace and Mechanical Engineering'),
    ('Biomorphic structural batteries for robotics','Mingqiang Wang','Drew Vecchio','huangyd@hit.edu.cn','School of Chemistry and Chemical Engineering'),
    ('µ-Opioid receptor–induced synaptic plasticity in dopamine neurons mediates the rewarding properties of anabolic androgenic steroids','Leonardo Bontempi','Antonello Bonci','leonardo.bontempi@iit.it','Intramural Research Program, Synaptic Plasticity Section'),
    ('14-3-3 binding creates a memory of kinase action by stabilizing the modified state of phospholamban','Julia Menzel','Daniel Kownatzki-Danger','blanche.schwappach@med.uni-goettingen.de','Department of Molecular Biology'),
    ('Mechanisms of autoregulation of C3G, activator of the GTPase Rap1, and its catalytic deregulation in lymphomas','Arturo Carabias','María Gómez-Hernández','pereda@usal.es','Centro de Investigación del Cáncer and Instituto de Biología Molecular y Celular del Cáncer'),
    ('Flipping an exosome switch','Annalisa M. VanHook',NULL,'avanhook@aaas.org','Science Signaling'),
    ('Three-dimensional structure of 22 uncultured ssRNA bacteriophages: Flexibility of the coat protein fold and variations in particle shapes','Jānis Rūmnieks','Ilva Liekniņa','kaspars@biomed.lu.lv','Latvian Biomedical Research and Study Center'),
    ('Histone exchange is associated with activator function at transcribed promoters and with repression at histone loci','Sari Kassem','Paolo Ferrari','michel.strubin@unige.ch','Department of Microbiology and Molecular Medicine'),
    ('A trusted node–free eight-user metropolitan quantum communication network','Siddarth Koduru Joshi','Djeylan Aktas','joshi@bristol.ac.uk','Quantum Engineering Technology Labs'),
    ('Unprecedented reduction and quick recovery of the South Indian Ocean heat content and sea level in 2014–2018','Denis L. Volkov','Sang-Ki Lee','denis.volkov@noaa.gov','Cooperative Institute for Marine and Atmospheric Studies'),
    ('Meiotic chromosome synapsis depends on multivalent SYCE1-SIX6OS1 interactions that are disrupted in cases of human infertility','Fernando Sánchez-Sáez','Laura Gómez-H','owen.davies@newcastle.ac.uk','Molecular Mechanisms Program, Centro de Investigación del Cáncer and Instituto de Biología Molecular y Celular del Cáncer (CSIC-Universidad de Salamanca), Salamanca'),
    ('DSCAM regulates delamination of neurons in the developing midbrain','Nariko Arimura','Mako Okada','n-arimur@ncnp.go.jp','Department of Biochemistry and Cellular Biology, National Institute of Neuroscience, National Center of Neurology and Psychiatry,'),
    ('A Janus emitter for passive heat release from enclosures','Se-Yeon Heo','Gil Ju Lee','ymsong@gist.ac.kr','School of Electrical Engineering and Computer Science (EECS)'),
    ('Widespread hematite at high latitudes of the Moon','Shuai Li','Paul G. Lucey','shuaili@hawaii.edu','Hawai’i Institute of Geophysics and Planetology'),
    ('Ancient Beringian paleodiets revealed through multiproxy stable isotope analyses','Carrin M. Halffman','Ben A. Potter','cmhalffman@alaska.edu','Department of Anthropology, University of Alaska Fairbanks'),
    ('Excitation of San Andreas tremors by thermal instabilities below the seismogenic zone','Lifeng Wang','Sylvain Barbot','sbarbot@usc.edu','State Key Laboratory of Earthquake Dynamics'),
    ('The past and future human impact on mammalian diversity','Tobias Andermann','Søren Faurby','tobias.andermann@bioenv.gu.se','Department of Biological and Environmental Sciences'),
    ('Revealing the in vivo growth and division patterns of mouse gut bacteria','Liyuan Lin','Qiuyue Wu','wwang@shsmu.edu.cn','Institute of Molecular Medicine'),
    ('Dose-dependent effects of transcranial alternating current stimulation on spike timing in awake nonhuman primates','Luke Johnson','Ivan Alekseichuk','aopitz@umn.edu','Department of Neurology, University of Minnesota'),
    ('COVID 19 IN INDIA- CHALLENGES AHEAD','Deepali Giri','Rajat Puri','deepaligiridmamchrc@gmail.com','DMIMS, Nagpur.'),
    ('Immune response against SARS‐CoV‐2 in pediatric patients including young infants','Yoshiki Kawamura','Yuki Higashimoto',NULL,NULL),
    ('It’s X-Related: Biological Bases of Increased COVID-19 Morbidity and Mortality in Men','Philip K Angelides, MSc','Ishita Jindal, MD',NULL,NULL),
    ('POTENTIAL OF PREVENTIVE ROLE OF AYURVEDIC MANAGEMENT IN FLUE LIKE SYMPTOMS IN CHILDREN: A REVIEW','Yogita K Shrivas','R P Tiwari',NULL,NULL),
    ('Asthma and COVID-19: What do we know?','Nurhan Sarıoğlu',NULL,NULL,'Department of Chest Diseases, Faculty of Medicine, Balikesir University, Balikesir, Turkey.'),
    ('Efficacy of chloroquine and hydroxychloroquine in the treatment of COVID-19','S A Meo','D C Klonoff,','sultanmeo@hotmail.com.','Department of Physiology, College of Medicine, King Saud University, Riyadh, Saudi Arabia.'),
    ('COVID-19 and type 1 diabetes: dealing with the difficult duo','Subhankar Chowdhury','Soumik Goswami',NULL,'Department of Endocrinology and Metabolism, IPGME&R and SSKM Hospital, Kolkata, India.'),
    ('COVID-19: is it just a lung disease? A case-based review','Spuntarelli V','Luciani M',NULL,'Internal Medicine Ward, Sant''Andrea Hospital - La Sapienza University, Via di Grottarossa 1035, Rome, Italy'),
    ('The digestive system and the COVID-19','Huma Qureshi',NULL,NULL,'Gastroenterologist, Doctor''s Plaza, Clifton, Karachi, Pakistan.'),
    ('Neurologic complications of COVID-19','Rachel Bridwel','Brit Long ',NULL,'Department of Emergency Medicine, Brooke Army Medical Center, San Antonio, TX, United States of America.'),
    ('On Popular Music','T. W. Adorno','George Simpson',NULL,NULL),
    ('Radio as an Instrument of Reducing Personal Insecurity','Harold D. Lasswell','-',NULL,NULL),
    ('The Body Electric','Simon Frith','-',NULL,NULL),
    ('Voices from nowhere','CHRIS FRITH','PAUL FLETCHER',NULL,NULL),
    ('DANCE-BASED EXERCISE PROGRAM IN RHEUMATOID ARTHRITIS','Noreau','Luc',NULL,'From the Rehabilitation Institute of Quebec City and Physiotherapy Department'),
    ('Foot and ankle injuries in dance.','Brown TD','Micheli LJ',NULL,'Department of Orthopaedic Surgery'),
    ('Increased Accumulation of Tissue ACE in Human Atherosclerotic Coronary Artery Disease','Frank Diet','Richard E. Pratt',NULL,'the Division of Cardiovascular Medicine'),
    ('Effect of exercise on depression','NORTH T. CHRISTIAN','McCULLAGH',NULL,NULL),
    ('The Winner''s Curse and Public Information in Common Value Auctions','John H. Kagel','Dan Levin',NULL,NULL),
    ('The Great Recession and the bulimia of US consumers: deep causes and possible ways out','Stefano BartolinStefano Bartolini','Luigi Bonatti',NULL,NULL),
    ('Is flexible labour good for innovation? Evidence from firm-level data','Alfred Kleinknecht','Flore N. van Schaik',NULL,NULL),
    ('Blurred Lines: National Security and the Civil-Military Struggle for Control of Telecommunications Policy during World War II','Jonathan Reed Winkler',NULL,NULL,NULL),
    ('Thomas Eakins and His Arcadian Works','Marc Simpson',NULL,NULL,NULL),
    ('The Magic Square of Three in Old Chinese Philosophy and Religion','Schuyler Cammann',NULL,NULL,NULL),
    ('History of Religions','Charles S. J. White',NULL,NULL,NULL);

    
    INSERT INTO PUBLICATION VALUES
    ('PI01','scopus','Science'),
    ('PI02','Science Robotics','Technology'),
    ('PI03','JCR','Covid'),
    ('PI04','JSTOR','General');
    
    
    INSERT INTO READER VALUES
    ('lahvak@aol.com','Glayds Draves  ','Science','Harvard University'),
    ('skoch@yahoo.com','Madaline Shelman  ','Covid','College of William and Mary'),
    ('jmcnamara@comcast.net','Armand Lemley  ','General','Boston University'),
    ('scitext@verizon.net','Marin Deppen  ','General','Vanderbilt University'),
    ('juliano@sbcglobal.net','Dalila Deweese  ','Covid','George Washington University'),
    ('barjam@yahoo.com','Prudence Ragin  ','Science','Columbia University'),
    ('tlinden@yahoo.com','Teena Threatt  ','Science','Santa Clara University'),
    ('mwandel@hotmail.com','Filiberto Esteves  ','Covid','United States Military Academy'),
    ('stomv@live.com','Tabetha Domina  ','General','Pomona College'),
    ('andale@gmail.com','Myles Veit  ','General','California Institute of Technology'),
    ('ninenine@mac.com','Cecile Rosas  ','Science','United States Air Force Academy'),
    ('dbindel@hotmail.com','Ira Crawshaw  ','Science','Washington and Lee University'),
    ('flaviog@att.net','Theressa Scherer  ','Science','College of William and Mary'),
    ('grothoff@att.net','Cristobal Coby  ','Covid','United States Military Academy'),
    ('gmcgath@live.com','Brigid Kang  ','Covid','Harvard University'),
    ('gfxguy@mac.com','Marketta Hesler  ','Covid','Boston University'),
    ('sinkou@sbcglobal.net','Ermelinda Godin  ','Science','Columbia University'),
    ('hstiles@live.com','Orval Ruggeri  ','General','Washington and Lee University'),
    ('keutzer@mac.com','Wilbert Spinks  ','General','Santa Clara University'),
    ('sblack@icloud.com','Katlyn Vanzandt  ','Science','George Washington University'),
    ('bockelboy@yahoo.com','Verona Walworth  ','Science','United States Air Force Academy'),
    ('choset@me.com','Jaclyn Camp  ','Covid','California Institute of Technology'),
    ('hmbrand@sbcglobal.net','Lashell Posada  ','Science','Pomona College'),
    ('weazelman@aol.com','Vonnie Stermer  ','General','Vanderbilt University'),
    ('british@outlook.com','Marx Tingle  ','General','Pomona College'),
    ('kiddailey@live.com','Everett Morello  ','Science','Harvard University'),
    ('shang@live.com','Deeanna Vandorn  ','Covid','California Institute of Technology'),
    ('nachbaur@msn.com','Ngan Charley  ','Covid','Santa Clara University'),
    ('eurohack@live.com','Candy Alphin  ','Science','Vanderbilt University'),
    ('gerlo@mac.com','Angele Tirado  ','Covid','George Washington University');
    
    INSERT INTO JOURNAL VALUES
    ('JI01','PI01','Scopus','Medical',102,1),
    ('JI02','PI01','Scopus','Medical',21,1),
    ('JI03','PI01','Scopus','Medical',71,1),
    ('JI04','PI01','Pubmed','Medical',28,8),
    ('JI05','PI01','Pubmed','Medical',54,NULL),
    ('JI06','PI01','Pubmed','Medical',581,14),
    ('JI07','PI01','Pubmed','Medical',15,3),
    ('JI08','PI01','Pubmed','Medical',122,5),
    ('JI09','PI01','Pubmed','Medical',48,6),
    ('JI10','PI01','Pubmed','Medical',30,11),
    ('JI11','PI01','Pubmed','Medical',62,4),
    ('JI12','PI01','Pubmed','Medical',28,4),
    ('JI13','PI01','Pubmed','Medical',6,2),
    ('JI14','PI01','Pubmed','Medical',5,8),
    ('JI15','PI01','Pubmed','Medical',1,12),
    ('JI16','PI01','Pubmed','Medical',132,7),
    ('JI17','PI01','Pubmed','Medical',9,7),
    ('JI18','PI01','Pubmed','Medical',359,6377),
    ('JI19','PI01','Pubmed','Medical',298,5594),
    ('JI20','PI01','Pubmed','Medical',235,11),
    ('JI21','PI01','Pubmed','Medical',443,1),
    ('JI22','PI01','Pubmed','Medical',50,12),
    ('JI23','PI01','Pubmed','Medical',171,3),
    ('JI24','PI01','Pubmed','Medical',78,11),
    ('JI25','PI01','Pubmed','Medical',253,267),
    ('JI26','PI02','Science Robotics','Robotics',5,45),
    ('JI27','PI02','Science Robotics','Robotics',5,45),
    ('JI28','PI02','Science Robotics','Robotics',5,45),
    ('JI29','PI02','Science Robotics','Robotics',5,45),
    ('JI30','PI02','Science Robotics','Robotics',5,45),
    ('JI31','PI02','Science Robotics','Robotics',5,45),
    ('JI32','PI02','Science Robotics','Robotics',5,45),
    ('JI33','PI02','Science Robotics','Robotics',5,45),
    ('JI34','PI02','Science Signaling','Signaling',13,647),
    ('JI35','PI02','Science Signaling','Signaling',13,647),
    ('JI36','PI02','Science Signaling','Signaling',13,647),
    ('JI37','PI02','Science Signaling','Signaling',13,647),
    ('JI38','PI02','Science Advances','Advances',6,36),
    ('JI39','PI02','Science Advances','Advances',6,36),
    ('JI40','PI02','Science Advances','Advances',6,36),
    ('JI41','PI02','Science Advances','Advances',6,36),
    ('JI42','PI02','Science Advances','Advances',6,36),
    ('JI43','PI02','Science Advances','Advances',6,36),
    ('JI44','PI02','Science Advances','Advances',6,36),
    ('JI45','PI02','Science Advances','Advances',6,36),
    ('JI46','PI02','Science Advances','Advances',6,36),
    ('JI47','PI02','Science Advances','Advances',6,36),
    ('JI48','PI02','Science Advances','Advances',6,36),
    ('JI49','PI02','Science Advances','Advances',6,36),
    ('JI50','PI02','Science Advances','Advances',6,36),
    ('JI51','PI03','Scopus','Covid',7,10),
    ('JI52','PI03','Wiley online library','Covid',NULL,NULL),
    ('JI53','PI03','Journal of the Endocrine Society','Covid',NULL,NULL),
    ('JI54','PI03','Scopus','Covid',7,10),
    ('JI55','PI03','Pubmed','Covid',68,2),
    ('JI56','PI03','Pubmed','Covid',24,8),
    ('JI57','PI03','Pubmed','Covid',1,6),
    ('JI58','PI03','Pubmed','Covid',1,6),
    ('JI59','PI03','Pubmed','Covid',70,5),
    ('JI60','PI03','Pubmed','Covid',38,7),
    ('JI61','PI04','Zeitschrift für Sozialforschung','General',9,1),
    ('JI62','PI04','Zeitschrift für Sozialforschung','General',9,1),
    ('JI63','PI04','Wiley online library','General',37,2),
    ('JI64','PI04','Wiley online library','General',37,2),
    ('JI65','PI04','American Journal of Physical Medicine & Rehabilitation','General',76,2),
    ('JI66','PI04','American Journal of Orthopedics','General',33,6),
    ('JI67','PI04','AHA Journals','General',94,11),
    ('JI68','PI04','Exercise and sport sciences reviews','General',18,1),
    ('JI69','PI04','The American Economic Review','General',76,5),
    ('JI70','PI04','Cambridge Journal of Economics','General',38,5),
    ('JI71','PI04','Cambridge Journal of Economics','General',38,5),
    ('JI72','PI04','Information & Culture','General',51,4),
    ('JI73','PI04','Smithsonian Studies in American Art','General',1,2),
    ('JI74','PI04','History of Religions','General',1,1),
    ('JI75','PI04','History of Religions','General',18,1);
    

   
    
    INSERT INTO ARTICLE VALUES('10.1016','Panchbhai A.','MRI evaluation of involvement of parotid and submandibular glands by tonguesquamous cell carcinoma',2020,'JI01','https://www.scopus.com/inward/record.uri?eid=2-s2.0-85077202628&doi=10.1016%2fj.oraloncology.2019.104557&partnerID=40&md5=c0713ebb02901b3a72bbbb9e7b2299b9','Medical');
	INSERT INTO ARTICLE VALUES('10.31557','Goyal A.','Determinants of Tobacco Use among Children of a Rural Village in India: AnExploratory Qualitative Study',2020,'JI02','https://www.scopus.com/inward/record.uri?eid=2-s2.0- 85078340291&doi=10.31557%2fAPJCP.2020.21.1.81&partnerID=','Medical');
   -- ('10.1007/s12070-018-1259-x','Jain. S','Role of Eustachian Dysfunction and Primary Sclerotic Mastoid Pneumatisation Pattern in Aetiology of Squamous Chronic Otitis Media: A Correlative Study',2019,'JI03','https://www.scopus.com/record/display.uri?eid=2-s2.0-85045132509&doi=10.1007%2fs12070-018-1259-x&origin=inward&txGid=314e14ff29b821316643f5583ae13266','Medical');
    INSERT INTO ARTICLE VALUES('10.1038/jhh.2013.140','E Judd','Apparent and true resistant hypertension: definition, prevalence and outcomes',2014,'JI04','https://pubmed.ncbi.nlm.nih.gov/24430707/','Medical');
    -- INSERT INTO ARTICLE VALUES('10.1016/j.conb.2018.10.006','Jeffrey M Donlea ','Roles for sleep in memory: insights from the fly',2019,'JI05','https://pubmed.ncbi.nlm.nih.gov/30366270/','Medical');
    -- INSERT INTO ARTICLE VALUES('10.1016/j.febslet.2007.03.094','S Zeki ','The neurobiology of love',2007,'JI06','https://pubmed.ncbi.nlm.nih.gov/17531984/','Medical');
    INSERT INTO ARTICLE VALUES('10.3934/mbe.2018035','Xiaoying Wang','Pattern formation of a predator-prey model with the cost of anti-predator behaviors',2018,'JI07','https://pubmed.ncbi.nlm.nih.gov/30380330/','Medical');
   -- INSERT INTO ARTICLE VALUES('10.1111/1471-0528.13280','G B Piccoli ','Vegan-vegetarian diets in pregnancy: danger or panacea? A systematic narrative review',2015,'JI08','https://pubmed.ncbi.nlm.nih.gov/25600902/','Medical');
    INSERT INTO ARTICLE VALUES('10.1159/000492704','Paula Müller','Stem Cell Therapy in Heart Diseases - Cell Types, Mechanisms and Improvement Strategies',2018,'JI09','https://pubmed.ncbi.nlm.nih.gov/30121644/','Medical');
    INSERT INTO ARTICLE VALUES('10.1016/j.cjca.2014.06.023','Lili Barad','Human embryonic stem cells vs human induced pluripotent stem cells for cardiac repair',2014,'JI10','https://pubmed.ncbi.nlm.nih.gov/25442431/','Medical');
    INSERT INTO ARTICLE VALUES('10.1353/pbm.2019.0046','Daniel M Hausman','What Is Cancer?',2019,'JI11','https://pubmed.ncbi.nlm.nih.gov/31761807/','Medical');
    INSERT INTO ARTICLE VALUES('10.1007/s11017-007-9043-z','Per-Anders Tengland ','A two-dimensional theory of health',2007,'JI12','https://pubmed.ncbi.nlm.nih.gov/17909986/','Medical');
   -- INSERT INTO ARTICLE VALUES('10.3402/qhw.v6i2.7137','Ove Svensson','Hunting for health, well-being, and quality of life',2011,'JI13','https://pubmed.ncbi.nlm.nih.gov/21629582/','Medical');
   -- INSERT INTO ARTICLE VALUES('10.3402/qhw.v8i0.19900','Stina Rutberg','Travelling along a road with obstacles: experiences of managing life to feel well while living with migraine',2013,'JI14','https://pubmed.ncbi.nlm.nih.gov/23395107/','Medical');
    INSERT INTO ARTICLE VALUES('10.1186/s13033-018-0253-8','Kirsten Celeste Kohler','Living with obsessive-compulsive disorder (OCD): a South African narrative',2018,'JI15','https://pubmed.ncbi.nlm.nih.gov/30519281/','Medical');
    INSERT INTO ARTICLE VALUES('10.1016/j.amjmed.2019.03.001','Michael T Hayes','Parkinson''s Disease and Parkinsonism',2019,'JI16','https://pubmed.ncbi.nlm.nih.gov/30890425/','Medical');
    INSERT INTO ARTICLE VALUES('10.3390/antiox9070583','Tae Yeon Kim','Control of Reactive Oxygen Species for the Prevention of Parkinson''s Disease: The Possible Application of Flavonoids',2020,'JI17','https://pubmed.ncbi.nlm.nih.gov/32635299/','Medical');
    INSERT INTO ARTICLE VALUES('10.1126/science.aas9043','David Reznick','Is evolution predictable?',2018,'JI18','https://pubmed.ncbi.nlm.nih.gov/29449475/','Medical');
    INSERT INTO ARTICLE VALUES('10.1126/science.1079328','Anjen Chenn','Eppendorf & Science Prize. Essays on science and society. Making a bigger brain by regulating cell cycle exit',2002,'JI19','https://pubmed.ncbi.nlm.nih.gov/12399574/','Medical');
    INSERT INTO ARTICLE VALUES('10.1007/s00213-018-5042-1','Baland Jalal','The neuropharmacology of sleep paralysis hallucinations: serotonin 2A activation and a novel therapeutic drug',2018,'JI20','https://pubmed.ncbi.nlm.nih.gov/30288594/','Medical');
    -- INSERT INTO ARTICLE VALUES('10.1016/j.bbrc.2013.11.104','Dasiel O Borroto-Escuela','Hallucinogenic 5-HT2AR agonists LSD and DOI enhance dopamine D2R protomer recognition and signaling of D2-5-HT2A heteroreceptor complexes',2014,'JI21','https://pubmed.ncbi.nlm.nih.gov/24309097/','Medical');
    INSERT INTO ARTICLE VALUES('10.1358/dot.2014.50.12.2233894','M Rendell','Technosphere inhaled insulin (Afrezza)',2014,'JI22','https://pubmed.ncbi.nlm.nih.gov/25588086/','Medical');
    -- INSERT INTO ARTICLE VALUES('10.1016/j.neurol.2015.01.563','G Huberfeld ','Hippocampus and epilepsy: Findings from human tissues',2015,'JI23','https://pubmed.ncbi.nlm.nih.gov/25724711/','Medical');
    INSERT INTO ARTICLE VALUES('10.1093/jnen/nlz090','An Hotterbeekx','Neuroinflammation and Not Tauopathy Is a Predominant Pathological Signature of Nodding Syndrome',2019,'JI24','https://pubmed.ncbi.nlm.nih.gov/31553445/','Medical');
    INSERT INTO ARTICLE VALUES('10.1016/j.cll.2017.01.002','Ryan F Relich','Zika Virus',2017,'JI25','https://pubmed.ncbi.nlm.nih.gov/28457349/','Medical');
    INSERT INTO ARTICLE VALUES('10.1126/scirobotics.abd2616','Robin R. Murphy','Roboticists should never look at their creations in the same way again',2020,'JI26','https://www.sciencemag.org/about/science-licenses-journal-article-reuse','Robotics');
    INSERT INTO ARTICLE VALUES('10.1126/scirobotics.abd7941','Sanjay P. Sane','Enhancing insect flight research with a lab-on-cables',2020,'JI27','https://robotics.sciencemag.org/content/5/45/eabd7941','Robotics');
    INSERT INTO ARTICLE VALUES('10.1126/scirobotics.abd9158','Li Wen','Tensegrity metamaterials for soft robotics',2020,'JI28','https://www.sciencemag.org/about/science-licenses-journal-article-reuses','Robotics'); -- added s in end of link coz was same as -2
    INSERT INTO ARTICLE VALUES('10.1126/scirobotics.abd7338','Ryan L. Truby','Integrating chemical fuels and artificial muscles for untethered microrobots',2020,'JI29','https://robotics.sciencemag.org/content/5/45/eabd7338','Robotics');
    INSERT INTO ARTICLE VALUES('10.1126/scirobotics.abd7026','Jodie L. Lutkenhaus','Structural batteries take a load off',2020,'JI30','https://www.sciencemag.org/about/science-licenses-journal-article-reused','Robotics'); -- added d
    INSERT INTO ARTICLE VALUES('10.1126/scirobotics.aay9024','Hajun Lee','3D-printed programmable tensegrity for soft robotics',2020,'JI31','https://robotics.sciencemag.org/content/5/45/eaay9024','Robotics');
    INSERT INTO ARTICLE VALUES('10.1126/scirobotics.aba0015','Xiufeng Yang','An 88-milligram insect-scale autonomous crawling robot driven by a catalytic artificial muscle',2020,'JI32','https://robotics.sciencemag.org/content/5/45/eaba0015','Robotics');
    INSERT INTO ARTICLE VALUES('10.1126/scirobotics.aba1912','Mingqiang Wang','Biomorphic structural batteries for robotics',2020,'JI33','https://robotics.sciencemag.org/content/5/45/eaba1912','Robotics');
    INSERT INTO ARTICLE VALUES('10.1126/scisignal.aba1169','Leonardo Bontempi','µ-Opioid receptor–induced synaptic plasticity in dopamine neurons mediates the rewarding properties of anabolic androgenic steroids',2020,'JI34','https://stke.sciencemag.org/content/13/647/eaba1169','Signaling');
    INSERT INTO ARTICLE VALUES('10.1126/scisignal.aaz1436','Julia Menzel','14-3-3 binding creates a memory of kinase action by stabilizing the modified state of phospholamban',2020,'JI35','https://stke.sciencemag.org/content/13/647/eaaz1436','Signaling');
    INSERT INTO ARTICLE VALUES('10.1126/scisignal.abb7075','Arturo Carabias','Mechanisms of autoregulation of C3G, activator of the GTPase Rap1, and its catalytic deregulation in lymphomas',2020,'JI36','https://stke.sciencemag.org/content/13/647/eabb7075','Signaling');
	INSERT INTO ARTICLE VALUES('10.1126/scisignal.abe5296','Annalisa M. VanHook','Flipping an exosome switch',2020,'JI37','https://stke.sciencemag.org/content/13/647/eabe5296','Signaling');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.abc0023','Jānis Rūmnieks','Three-dimensional structure of 22 uncultured ssRNA bacteriophages: Flexibility of the coat protein fold and variations in particle shapes',2020,'JI38','https://advances.sciencemag.org/content/6/36/eabc0023','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.abb0333','Sari Kassem','Histone exchange is associated with activator function at transcribed promoters and with repression at histone loci',2020,'JI39','https://advances.sciencemag.org/content/6/36/eabb0333','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.aba0959','Siddarth Koduru Joshi','A trusted node–free eight-user metropolitan quantum communication network',2020,'JI40','https://advances.sciencemag.org/content/6/36/eaba0959','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.abc1151','Denis L. Volkov','Unprecedented reduction and quick recovery of the South Indian Ocean heat content and sea level in 2014–2018',2020,'JI41','https://advances.sciencemag.org/content/6/36/eabc1151','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.abb1660','Fernando Sánchez-Sáez','Meiotic chromosome synapsis depends on multivalent SYCE1-SIX6OS1 interactions that are disrupted in cases of human infertility',2020,'JI42','https://advances.sciencemag.org/content/6/36/eabb1660','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.aba1693','Nariko Arimura','DSCAM regulates delamination of neurons in the developing midbrain',2020,'JI43','https://advances.sciencemag.org/content/6/36/eaba1693','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.abb1906','Se-Yeon Heo','A Janus emitter for passive heat release from enclosures',2020,'JI44','https://advances.sciencemag.org/content/6/36/eabb1906','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.aba1940','Shuai Li','Widespread hematite at high latitudes of the Moon',2020,'JI45','https://advances.sciencemag.org/content/6/36/eaba1940','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.abc1968','Carrin M. Halffman','Ancient Beringian paleodiets revealed through multiproxy stable isotope analyses',2020,'JI46','https://advances.sciencemag.org/content/6/36/eabc1968','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.abb2057','Lifeng Wang','Excitation of San Andreas tremors by thermal instabilities below the seismogenic zone',2020,'JI47','https://advances.sciencemag.org/content/6/36/eabb2057','Advances');
    -- INSERT INTO ARTICLE VALUES('10.1126/sciadv.abb2313','Tobias Andermann','The past and future human impact on mammalian diversity',2020,'a','https://advances.sciencemag.org/content/6/36/eabb2313','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.abb2531','Liyuan Lin','Revealing the in vivo growth and division patterns of mouse gut bacteria',2020,'JI49','https://advances.sciencemag.org/content/6/36/eabb2531','Advances');
    INSERT INTO ARTICLE VALUES('10.1126/sciadv.aaz2747','Luke Johnson','Dose-dependent effects of transcranial alternating current stimulation on spike timing in awake nonhuman primates',2020,'JI50','https://advances.sciencemag.org/content/6/36/eaaz2747','Advances');
    INSERT INTO ARTICLE VALUES('10.31838/jcr.07.10.19','Deepali Giri','COVID 19 IN INDIA- CHALLENGES AHEAD',2020,'JI51','http://www.jcreview.com/?mno=109983','Covid');
    INSERT INTO ARTICLE VALUES('https://doi.org/10.1002/jmv.26493','Yoshiki Kawamura','Immune response against SARS‐CoV‐2 in pediatric patients including young infants',2020,'JI52','https://onlinelibrary.wiley.com/doi/10.1002/jmv.26493','Covid');
    INSERT INTO ARTICLE VALUES('https://doi.org/10.1210/jendso/bvaa133','Philip K Angelides, MSc','It’s X-Related: Biological Bases of Increased COVID-19 Morbidity and Mortality in Men',2020,'JI53','https://academic.oup.com/jes/advance-article/doi/10.1210/jendso/bvaa133/5903073?searchresult=1','Covid');
    INSERT INTO ARTICLE VALUES('10.31838/jcr.07.10.13','Yogita K Shrivas','POTENTIAL OF PREVENTIVE ROLE OF AYURVEDIC MANAGEMENT IN FLUE LIKE SYMPTOMS IN CHILDREN: A REVIEW',2015,'JI54','http://www.jcreview.com/?mno=109976','Covid');
    INSERT INTO ARTICLE VALUES('10.5578/tt.69775','Nurhan Sarıoğlu','Asthma and COVID-19: What do we know?',2020,'JI55','https://pubmed.ncbi.nlm.nih.gov/32755114/','Covid');
    -- INSERT INTO ARTICLE VALUES('10.26355/eurrev_202004_21038','Meo SA','Efficacy of chloroquine and hydroxychloroquine in the treatment of COVID-19',2020,'JI56','https://pubmed.ncbi.nlm.nih.gov/32373993/','Covid');
    INSERT INTO ARTICLE VALUES('10.1007/s13410-020-00846-z','Subhankar Chowdhury','COVID-19 and type 1 diabetes: dealing with the difficult duo',2020,'JI57','https://pubmed.ncbi.nlm.nih.gov/32837091/','Covid');
    -- INSERT INTO ARTICLE VALUES('10.1007/s42399-020-00418-6','Valerio Spuntarelli','COVID-19: is it just a lung disease? A case-based review',2020,'JI58','https://pubmed.ncbi.nlm.nih.gov/32838177/','Covid');
    INSERT INTO ARTICLE VALUES('10.5455/JPMA.19','Huma Qureshi','The digestive system and the COVID-19',2020,'JI59','https://pubmed.ncbi.nlm.nih.gov/32515381/','Covid');
    -- INSERT INTO ARTICLE VALUES('10.1016/j.ajem.2020.05.024','Rachel Bridwell','Neurologic complications of COVID-19',2020,'JI60','https://pubmed.ncbi.nlm.nih.gov/32425321/','Covid');
    INSERT INTO ARTICLE VALUES('https://doi.org/10.5840/zfs1941913','T. W. Adorno','On Popular Music',1941,'JI61','https://www.pdcnet.org/zfs/content/zfs_1941_0009_0001_0017_0048','General');
    INSERT INTO ARTICLE VALUES('https://doi.org/10.5840/zfs1941914','Harold D. Lasswell','Radio as an Instrument of Reducing Personal Insecurity',1941,'JI62','https://www.pdcnet.org/zfs/content/zfs_1941_0009_0001_0049_0064','General');
    INSERT INTO ARTICLE VALUES('10.1111/j.1467-8705.1995.tb01048.x','Simon Frith','The Body Electric',1995,'JI63','https://onlinelibrary.wiley.com/doi/10.1111/j.1467-8705.1995.tb01048.x','General');
    INSERT INTO ARTICLE VALUES('10.1111/j.1467-8705.1995.tb01057.x','CHRIS FRITH','Voices from nowhere',1995,'JI64','https://onlinelibrary.wiley.com/doi/10.1111/j.1467-8705.1995.tb01057.x','General');
    INSERT INTO ARTICLE VALUES('109113','Noreau','DANCE-BASED EXERCISE PROGRAM IN RHEUMATOID ARTHRITIS',1997,'JI65','https://journals.lww.com/ajpmr/Fulltext/1997/03000/DANCE_BASED_EXERCISE_PROGRAM_IN_RHEUMATOID.5.aspx','General');
    INSERT INTO ARTICLE VALUES('15239359','Brown TD','Foot and ankle injuries in dance.',2004,'JI66','https://europepmc.org/article/med/15239359','General');
    INSERT INTO ARTICLE VALUES('10.1161/01','Frank Diet','Increased Accumulation of Tissue ACE in Human Atherosclerotic Coronary Artery Disease',1996,'JI67','https://www.ahajournals.org/doi/full/10.1161/01.CIR.94.11.2756','General');
    INSERT INTO ARTICLE VALUES('379476','NORTH T. CHRISTIAN','Effect of exercise on depression',1990,'JI68','https://journals.lww.com/acsm-essr/Citation/1990/01000/Effect_of_Exercise_on_Depression.16.aspx','General');
    INSERT INTO ARTICLE VALUES('10.2307/1816459','John H. Kagel','The Winner''s Curse and Public Information in Common Value Auctions',1986,'JI69','https://www.jstor.org/stable/1816459','General');
    -- INSERT INTO ARTICLE VALUES('10.2307/24695055','Stefano Bartolini','The Great Recession and the bulimia of US consumers: deep causes and possible ways out',2014,'JI70','https://www.jstor.org/stable/24695055','General');
    INSERT INTO ARTICLE VALUES('10.2307/24695063','Alfred Kleinknecht','Is flexible labour good for innovation? Evidence from firm-level data',2014,'JI71','https://www.jstor.org/stable/24695063','General');
    INSERT INTO ARTICLE VALUES('10.2307/44667587','Jonathan Reed Winkler','Blurred Lines: National Security and the Civil-Military Struggle for Control of Telecommunications Policy during World War II',2015,'JI72','https://www.jstor.org/stable/44667587','General');
    INSERT INTO ARTICLE VALUES('10.2307/3108945','Marc Simpson','Thomas Eakins and His Arcadian Works',1987,'JI73','https://www.jstor.org/stable/3108945','General');
    INSERT INTO ARTICLE VALUES('10.2307/1061970','Schuyler Cammann','The Magic Square of Three in Old Chinese Philosophy and Religion',1961,'JI74','https://www.jstor.org/stable/1061970','General');
    INSERT INTO ARTICLE VALUES('10.2307/1062249','Charles S. J. White','History of Religions',1978,'JI75','https://www.jstor.org/stable/1062249','General');

    

   Show Tables;
   
   Select * from ARTICLE where AREA_OF_RESEARCH='Signaling' OR  AREA_OF_RESEARCH='Robotics';
   Select * from JOURNAL;
   Select * from AUTHOR;
   Select * from PUBLICATION;
   Select * from READER;    
   Select * from NEW_ENTRIES;
   
-- delimiter //
-- create trigger updateArticle after insert on new_entries for each row
-- begin
-- insert into Article(DOI,AUTHOR_NAME,TITLE,LINK, AREA_OF_RESEARCH) values (new.DOI, new.FIRST_NAME, new.ARTICLE_TITLE, new.LINK, new.AREA_OF_RESEARCH);
-- end //
-- delimiter ;
-- drop trigger updateArticle;   
-- grant and revoke

GRANT ALL PRIVILEGES ON try1.* TO'root'@'localhost';
revoke ALL ON * from root@localhost;
GRANT SELECT  ON try1.* TO 'root'@'localhost';
GRANT SELECT  ON try1.author TO 'root'@'localhost';

show grants for 'root'@'localhost';

create user 'admin2'@'localhost' identified by 'focus!';
GRANT SELECT  ON try1.* TO 'admin2'@'localhost';
show grants for 'admin2'@'localhost';
GRANT UPDATE ON try1.new_entries TO 'admin2'@'localhost'; 
REVOKE UPDATE ON try1.new_entries FROM 'root'@'localhost';
  
 delimiter //
 create trigger updateArticle after insert on new_entries for each row
 begin
 insert into fresh_doi(DOI1) values (new.DOI);
 end //
 delimiter ;  
  
 select * from fresh_doi ; 



 
