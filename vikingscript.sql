/****** Object:  Database [dbViking]    Script Date: 10/07/2015 11:05:20 ******/
CREATE DATABASE [dbViking] ON  PRIMARY 
( NAME = N'dbViking', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\dbViking.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbViking_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\dbViking_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbViking] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbViking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbViking] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [dbViking] SET ANSI_NULLS OFF
GO
ALTER DATABASE [dbViking] SET ANSI_PADDING OFF
GO
ALTER DATABASE [dbViking] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [dbViking] SET ARITHABORT OFF
GO
ALTER DATABASE [dbViking] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [dbViking] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [dbViking] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [dbViking] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [dbViking] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [dbViking] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [dbViking] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [dbViking] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [dbViking] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [dbViking] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [dbViking] SET  DISABLE_BROKER
GO
ALTER DATABASE [dbViking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [dbViking] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [dbViking] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [dbViking] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [dbViking] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [dbViking] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [dbViking] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [dbViking] SET  READ_WRITE
GO
ALTER DATABASE [dbViking] SET RECOVERY SIMPLE
GO
ALTER DATABASE [dbViking] SET  MULTI_USER
GO
ALTER DATABASE [dbViking] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [dbViking] SET DB_CHAINING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 10/07/2015 11:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tblUser](
	[fldID] [int] IDENTITY(1,1) NOT NULL,
	[fldName] [varchar](50) NOT NULL,
	[fldUser] [varchar](20) NOT NULL,
	[fldPassword] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON
INSERT [dbo].[tblUser] ([fldID], [fldName], [fldUser], [fldPassword]) VALUES (1, N'Admin', N'admin', N'admin')
INSERT [dbo].[tblUser] ([fldID], [fldName], [fldUser], [fldPassword]) VALUES (2, N'Soren', N'soren', N'password')
INSERT [dbo].[tblUser] ([fldID], [fldName], [fldUser], [fldPassword]) VALUES (3, N'Iuliana', N'iuliana', N'password')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
/****** Object:  Table [dbo].[tblSubject]    Script Date: 10/07/2015 11:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSubject](
	[fldSubID] [int] IDENTITY(1,1) NOT NULL,
	[fldTitle] [varchar](50) NOT NULL,
	[fldText] [varchar](max) NOT NULL,
	[fldImage] [varchar](70) NULL,
 CONSTRAINT [PK_tblSubject] PRIMARY KEY CLUSTERED 
(
	[fldSubID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSubject] ON
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (19, N'Velkommen til vikingetiden', N'Vikingetiden varede fra slutningen af 700-tallet til slutningen af 1000-tallet. For godt 1200 år siden grundlagde vikingerne Århus – i det niveau, hvor du står nu.
Hvem var vikingerne?
Vikingerne var skandinaver – svenskere, nordmænd og danskere. Almindeligvis forbinder man ordet viking med sørøveri og plyndringer, men vikingernes aktiviteter var langt mere omfattende.
Krigere og sørøvere
Vikingerne var frygtede i deres samtid, fordi deres overlegne skibsteknologi muliggjorde overraskende commandoraids. Deres krigeriskhed og voldsomhed er beskrevet i samtidige kilder, der oftest er blevet til i de klostre, som var ofre for angrebene.
Købmænd og nybyggere
Vikingerne beskæftigede sig også med handelsvirksomhed fra Rhinlandet i vest til Rusland i øst. De koloniserede i England, Normandiet og på De nordatlantiske Øer. De nåede endda til Nordamerika, hvor de slog sig ned i en kort periode på spidsen af Newfoundland.
Fredelige bønder
Det er denne udfarende side af vikingerne, vi hører mest om. Men langt de fleste vikinger var fredelige bønder, der passede deres gårde hjemme eller i de områder, hvor de havde slået sig ned. ', N'velkommentilvirkliheden_1510061414586519.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (20, N'Fra handelsplads til storby', N'I dagens Århus er der liv og glade dage omkring åen ved Immervad. Det var der også i den tidlige vikingetid i sidste del af 700-tallet, hvorfra man har spor af bebyggelse langs åens nordside tæt på udløbet til havet. Bebyggelsen fik navnet Aros, der netop betyder byen ved åmundingen.
Byen befæstes
En række genstandsfund og kulstof-dateringer fortæller om en bebyggelse fra 770’erne på stedet, hvor Århus’ centrum ligger den dag i dag.
Den danske kongemagt mistede i  934 kontrollen over landets vigtigste by Hedeby og forsvarsvolden Dannevirke, og det kan have været frygten for den tyske kejser, der fik den danske konge til at befæste sine to tilbageværende handelsbyer Ribe og Aros. Den ældste vold omkring Aros omkring 934 har været 2-3 m høj og 10 m bred. Den var forsynet med en beskeden voldgrav, dér hvor der ikke var vand i forvejen.
Harald Blåtands forstærkning af befæstningen
En planke fra Pustervig, årringsdateret til efter 957, fortæller, at det med stor sandsynlighed var HaraldBlåtand (ca. 958-987), der stod for forstækningen af byens befæstning. Volden voksede nu til ca. 6 m i højden og 18 m i bredden. Den blev forsynet med en bred voldgrav nord og vest for byen. Mod vest afgravede man yderligere et 60-70 m bredt bælte, så der dannedes en lavvandet sump.
Senest under Harald Blåtand byggede manen trækirke vest for byen, og der opstod hurtigt en bydel omkring kirken. Det var på det sted, hvor senere byens Skt. Nicolai Domkirke rejste sig fra ca. 1070. Dele af denne kirke er bevaret i Vor Frue klosterkirke.', N'handelogtransport_1510061415401452.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (22, N'Angreb og forsvar', N'Aros´ placering direkte ud mod det åbne hav var en ulempe for forsvaret af byen.
Tidlig advarsel
På Djursland findes mindst otte stednavne, hvori navnet Baunehøj indgår. På toppen af disse høje blev der ifølge traditionen tændt store bål, bavne, når faren truede udefra.
Når fjenden blev opdaget, tændes bavnene som en løbeild, begyndende på Djurslands nord- eller nordøstkyst, fortsættende ind over land til Agri Bavnehøj på Mols og Ellemandsbjerget på Helgenæs. Sidste bålsignal kunne i nogenlunde klart vejr ses fra Aros en god times tid efter, at den første bavn blev tændt, og ca. 8 timer før, fjenden kunne forventes fremme.
Fremskudt søforsvar
Fjendens fremrykning mod Aros kunne forsinkes af et fremskudt forsvar af snekker (mindre eller mellemstore krigsskibe) mellem Helgenæs og Issehoved på Samsø, hvor en indsnævring af farvandet dannede en naturlig forsvarsposition.
Angreb på Aros
Det årvågne vagtmadskab på Bavnehøj ved Bønnerup opdager i den tidlige morgendæmring en stor fjentlig flåde, der hurtigt nærmer sig nordøstsiden af Djursland nordfra. Vagterne tænder omgående deres bavn, der straks blusser op under stor røgudvikling…
', N'angreb-og-forsvar_1510061415509952.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (23, N'Dagligliv', N'Fundene fra Aros er præget af dagliglivet i byen: husgeråd, personligt udstyr og affald af enhver slags. Enkelte fund afspejler i særlig grad byborenes hovederhverv: handel og håndværk.
Byen vågner
I Aros startede dagen, når byens haner galede ved daggry. Der blev tændt op i ildstederne, så man kunne få tilberedt morgenmaden. Vand til husholdningen blev hentet i den nærmeste brønd. Hvis man havde en ko på matriklen, skulle den malkes, før den blev fulgt ud på engene langs åen, hvor den under opsyn af børnene kunne græsse i dagens løb. Hønsenes æg skulle også indsamles.
Daglige gøremål
Herefter var det tid for dagens sysler. Kvinderne tog sig af madlavning, tøjvask, lugning i kålhaven og puslen om familiens mindste. Der skulle også spindes og væves – i mange hustomter har man fundet både tenvægte og vævevægte. Mændene beskæftigede sig med håndværk og handel.
Hvis manden var håndværker, foregik det meste af hans arbejde hjemme på bymatriklen, hvor familiens hus lå. I løbet af dagen skulle han ned til skibsbroen for at se, om han kunne afsætte sine produkter eller bytte sig til nyttige varer. Her kunne han også høre de sidste nyheder fra den store verden, som handelsskibene kom fra.
Mørkning 
I mørkningen hen under aften blev koen drevet hjem til matriklen. Familien samlede sig omkring husets ildsted for at indtage et solidt aftensmåltid. Oftest grød, men kogt eller stegt kød kunne også være på menuen. Hertil drak man vand og tyndt øl. Eneste lyskilde var gløderne, ilden i ildstedet og måske en lille olielampe, så det var begrænset, hvad man kunne se at lave, når mørket havde sænket sig.', N'dagligliv2_1510061416060803.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (24, N'Runesten', N'Runesten kendes især fra vikingetiden og er blevet rejst gennem hele perioden. Skikken blev for alvor populær, efter at Harald Blåtand rejste den store Jellingesten over sin far Gorm den Gamle og sin mor Thyra omkring 970. Fra samfundets øverste top spredte traditionen sig til større dele af samfundet.
Runesten fra Aarhus
Som de fleste andre runesten er de seks runesten fra Aarhus by blevet genbrugt efter vikingetiden, og deres oprindelige plads er derfor ukendt. Den berømte maskesten er fundet under Aarhus Vandmølle. En anden runesten er fundet i en trappe ved Aarhus Katedralskole. Indskriften afslører, at den oprindelig har været del af en stensætning, da indskriften lyder ”Esger Bj… disse sten”. De øvrige runesten fra Aarhus er fundet i bygninger, der lå lige ved den vigtige vej til Aarhus fra vest, i dag Vestergade, hvor de meget vel kan have stået oprindeligt. Runestenene fra Aarhus er udstillet i runehallen på Moesgård Museum. De stammer fra perioden ca. 975-1025.
Hedenskab og kristendom
Runestenene kan være dekoreret med både hedenske og kristne symboler, og ikke overraskende findes de kristne tegn, som regel kors, på de yngste runesten. Men religiøse udtryk er sjældne på de danske sten. Betydningen af masken på den største af stenene fra Aarhus er uklar, men der kan være tale om et symbol, der skulle afværge ondt.
Bag dig står en kopi af Hørningstenen.
Hørningstenen blev fundet i 1849 ved Bering Bro ca. 12 km sydvest for Aarhus, ved den gamle vej mellem Jelling og Aarhus. Indskriften på stenen fra Hørning, lyder:
tuki smithr rith stin ift thurkisl kuth mutaR
Toke smed rejste stenen efter Troels Gudmunds søn,
Sun is hanum kaf kul uk frialsi
Som gav ham guld (?) og frelse (dvs. frihed)', N'runesten_1510061416212407.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (25, N'Ben, tak og glas', N'Vikingerne friserede hyppigt hår og skæg, og de holdt af at pynte sig med perler og smykker. I Aros er der fundet affald efter kammageri mange steder, og fund af glasperler og halvfabrikita afspejler lokal glasperleproduktion.
Kammageren
Hjortetakker og dyreknogler blev brugt som råmateriale til mange forskellige genstande og redskarber såsom nåle, prene, skafter, spillebrikker og frem for alt kamme.
Foruden kammagerens færdige produkter har man fundet mængder af affald fra kammageriet. Afsavede ender af hjortegevirer og dele af knogler og diverse fejlprodukter er fundet i koncentrerede mænger i vikingetidslagene inden for voldene, blandt andet under Nordea Bank ved Skt. Clemens Stræde og lige om hjørnet under Store Torv. Her må kammagerne have haft deres værksteder.
Glasperlemageren
Man har også fremstillet glasperler i Aros. Det viser de mange fund af halvfabrikata, fejlproducerede glasperler og mængder af vellykkede perler. En del af de færdige perler kan også være kommet til Aros udefra, for eksempel fra Ribe og Hedeby, hvor der har været en omfattende glasperleproduktion.
', N'bentak_1510061416318589.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (26, N'Metal og træ', N'Med byernes opståen blev håndværksproduktionen, der før da overvejende fandt sted ude i landsbyerne, placeret i byerne, hvor der efterhånden udviklede sig flere og flere håndværksgrene. Således også i Aros, hvor vi har fundet resterne af håndværkernes værksteder, redskaber, råmaterialer, affald og frem fir alt produkterne.

Metalhåndværk
Smeden og metalstøberen har efterlaft sig mængder af affald fra deres produktion, blandt andet smedeslagger, støbeforme, smeltedigler, metalbarrer og essesten. Arbejdsredskaber, som hammer, tant, punsel og mejsel, kendes også.
Grovsmeden er den, der har efterladt sig flest spor. Stort set overalt, hvor der var huse, har der på et eller andet tidspunkt været smedet jern. Ofte har smeden også forarbejdet bronze og andre mere ædle metaller. Under Vestergade 3, uden for voldene, fandt man for et par år siden en smedehytte med esse og spor efter forarbejdning af jern og bronze. Den er fra midten af 1000-årene.

Smykkefremstilling
Der er også blevet produceret smykker i Aros. Man har fundet brudstykker af støbeforme og også smykkerne selv, for eksempel et forgyldt metalbeslag med vikingetidens slyngede ornamentik. Et lille fint hammerhoved kan netop have været brugt til bearbejdning af ædelmetal til smykker.

Træforarbejdning
Træforarbejdning var sandsynligvis det håndværk, der beskæftigede flest hænder. Der skulle bygges huse og skibe, laves møbler og skæres kar og skåle til husholdningen. Alligevel er fundene fra produktionen sparsomme. Træ kræver fugt for at kunne bevares, og i Århus, hvor jorden er tør og sandet, er sporene efter der omfattende træhåndsværk for længst forsvundet. Dog ikke alle.
', N'metal-og-tree_1510061416435293.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (27, N'Analysemetoder', N'C14-datering, dendrokronologi og pollenanalyse er vigtige hjælpemidler, når fundene skal tolkes.

C14-datering
Med C14-metoden kan man relativt præcist datere alderen på organisk materiale. Dateringen bestemmes ud fra målinger af koncentrationen af den radioaktive C14-isotop (kulstof 14) i materialet. Mængden af radioaktivt C14 henfalder hele tiden efter endt optagelse, og man kan derfor ud fra den tilbageblevne mængde C14 måle sig frem til prøvens alder.

Dendrokronologi
Præcise dateringer er sjældne inden for arkæologien. Her er dendrokronologien en stor hjælp, da man kan sætte årstal på fund ved måling af årringe i bevaret træ. Målinger på egetræ fra en brøndkasse i Randlevlandsbyen viser, at brønden er fra omkring år 900.

Pollenanalyse
Da brønden i begyndelsen af 900-årene stod åben, dryssede plantepollen fra omegnens vegetation ned på bunden. Pollenanalyser viser, at vikingebebyggelsens nærmeste omgivelser har været et åbent landskab præget af græsningsarealer til husdyrene.
', N'analysemethoder_1510061416533440.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (28, N'Vindue til Vikingerenes Aros', N'I 1963-1964 foretog Moesgård Museum en omfattende udgravning på dette sted. Arkæologerne gravede sig igennem resterne af middelalderens huse og affaldsdynger ned til vikingernes Aros – ca. 3 meter under nutiden gadeniveau. Udgravningen har givet os et enestående indblik i vikingernes Aros.

Moesgård Museum viser i denne udstilling et udvalg af de genstande, der ikke har set dagens lys i 1000 år. Under udgravningen blev der fundet spor efter syv halvt nedgravede grubehuse, hvoraf det ene kan ses som rekonstruktion. Fire andre grubehuse er markeret på gulvet præcis der, hvor de har været gravet ned. Derudover blev der udgravet en mængde fund blandt andet skår fra lerkar, dyreknogler, jernknive, hvæsesten, kværnsten, pilespidser, bennåle og perler.
', N'vinduetilvikingernes_1510061417073471.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (29, N'Husene', N'Husene i Aros har varieret meget i størrelse of funktion – fra små grubehuse til større langhuse, der har været brugt til beboelse, værksteder og andre aktiviteter.

Grubehuset
Grubehuset kaldes sådan, fordi det er gravet ca. en meter ned i jorden. Af samme grund er det også den hustype, der er bedst bevaret. Nedgravningen har uden tvivl haft en isolerende effekt.
Grubehusene har ofte haft flere funktioner. De kan være forsynet med ildsteder og vægbænke. Ofte er der også levn fra forskellige former for håndværk, så disse huse kan have tjent både som beboelse og værksted. Hvor ildstedet eller ovnen mangler, har huset måske kun været brugt til opbevaring.

Byhusene
Der er fundet mange rester af gulvlag, vægforløb, ildsteder, ovne og stolpehuller fra større byhuse, som ikke var gravet ned i undergrunden. De har været relativt store, godt 5 meter brede og op til 10 meter lange. Denne type huse, der kunne rumme både familieliv, værksted, lager, håndværksaktiviteter og nogle få husdyr, har utvivlsomt været den mest almindelige hustype fra omkring år 900 og frem.

Første stenbygning
Hen mod vikingetidens slutning begyndte man at anvende frådsten, kildekalk, som byggemateriale, i første omgang til kirkebyggeriet. Frådsten blev brugt for første gang i Århus, da man omkring 1070 påbegyndte byggeriet af Skt. Nicolai Domkirke. Denne første stenkirke i Århus er stadig delvist bevaret i Vor Frue Klosterkirkes krypt og nordmur, som det ældste stående bygningslevn i Danmark.
', N'husene2_1510061417225648.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (30, N'Grubehuset', N'Det rekonstruerede hus er et grubehus. Det karakteristiske for grubehuse er, at de er små og gravet ca. en meter ned i jorden. Som grubehuse i almindelighed har dette rekonstruerede hus været brugt både som værksted og beboelseshus.

Rekonstruktionen er opført få meter fra det sted, hvor tomten af det oprindelige grubehus blev udgravet. Huset har træbeklædte vægbænke, som man kan både sidde og sove på. Lammeskindet har gjort bænken blødere at sidde på om dagen og varmere at sove på om natten. På gulvet er der et ildsted, hvor man kan tilberede mad, og som man kan varme sig ved.
På opstadsvæven er husets frue i gang med at væve tekstiler af uld og hør til en dragt. Hendes kjole er en typisk kvindedragt fra slutning af 900-tallet, enkel i snittet og praktisk at arbejde i. Kjolens stof er vævet i baner, og der er syet kiler i for at give bevægelsesfrihed.
I huset ses forskellige almindelige husholdningsredskaber som for eksempel træøser, træfade, kar og drikkeskåle af keramik og en stor stavbygget spand. Der ses også et importeret klæberstenskar fra Norge og smedede genstande som kniv, ildstål og saks.
', N'grubehuset_1510061417333943.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (31, N'De nordiske guder', N'I den nordiske mytologi er der et væld af guder, der har forskellige egenskaber, og som der er knyttet forskellige historier til.

Frej, Freja og Njord
Njord er tilknyttet havet og far til tvillingerne Frej og Freja. Frej er frugtbarhedsguden, som sørger for god høst. Hans søster Freja er knyttet til kærlighed og sex, og sammen med Odins kone Frigg tilbedes hun i forbindelse med fødsler. Freja kører i en kærre drevet af to katte, og når hun rider til kamp, deler hun de faldne med Odin.
Njord, Freja og Frej er af vanernes slægt. Myterne fortæller, at vanerne var i krig med asernes slægt, som Odin og de fleste andre guder tilhørte. Da der blev sluttet fred, gav slægterne hinanden gidsler. Det var Njord, Frej og Freja, der blev udleveret til aserne.

Thor
Thor er tordenguden og den stærkeste af guderne. Thor beskytter guderne mod jætterne med sin hammer Mjølner.
De mange stednavne i Norden, hvori navnet Thor forekommer, for eksempel færøske Thorshavn, og de mange fund af amuletter formet som Thorshamre viser, at Thor var en populær gud i Vikingetiden. Ligesom Odin var Thor en gud, der kunne beskytte og sikre retfærdighed. Hvor Odin synes at have været gud for de udvalgte, var Thor i højere grad gud for bønderne.
Torsdag betyder Thors dag.

Odin og Frigg
Odin er sejrens og kampens gud. Fra hans hjem Valhalla hersker han over gudernes land Asgård. Odin har givet sit ene øje for at drikke af visdommens brønd og har ravnene Hugin og Munin, der fortæller ham om det, der sker i verden. Hans våben Gungner, et spyd, er symbol på retten og den kongelige magt. Før et slag blev der ofret til Odin.
Frigg er Odins kloge hustru og gudinde for ægteskab og kærlighed. Sammen har de sønnerne Thor og Tyr.
Onsdag betyder Odins dag, og fredag betyder Friggs dag.

Loke
Lokes far er jætte, men han er blodbror med Odin og lever sammen med guderne. Loke blev ikke dyrket som guddom, men er en figur i den nordiske mytologi, der har den funktion, at han får ting til at ske.
Han er mor til Odins hest Sleipner og far til Fenrisulven, dødsguden Hel og Midgårdsormen, der ligger rundt om menneskenes land, Midgård. Han har skaffet guderne Thors hammer Mjølner og Odins spyd Gungner. Flere gange sikrer hans snilde, at guderne vinder over jætterne, men ved Ragnarok kæmper han på jætternes side mod guderne.

Tyr
Guden Tyr er knyttet til tapperhed og kamp. Han ofrede en arm, for at guderne kunne lænke den frygtede Fenrisulv, der var spået til at dræbe Odin ved Ragnarok, gudernes undergang.
Gamle stednavne, der begynder med Tis-, for eksempel Tisvilde og Tissø, er knyttet til Tyr.
Tirsdag betyder Tyrs dag.

Asken Yggdrasil
Asketræet Yggdrasil står midt i verden. Det forbinder menneskenes land Midgård med gudernes Asgård, jætternes Jotunheim og det nederste dødsrige Niflheim. Træets krone når helt op i himlen, og det var ved det træ, den mægtigste gud Odin hængte sig for at opnå viden om underverdenens hemmeligheder.', N'denordiskeguder_1510061417480382.png')
INSERT [dbo].[tblSubject] ([fldSubID], [fldTitle], [fldText], [fldImage]) VALUES (32, N'Den nye tro', N'En af de vigtigste begivenheder i vikingetiden er trosskiftet. I slutningen af 700-tallet er Norden et område, hvor der blev ofret til de nordiske guder, men i løbet af de næste 300 år fik kristendommen fodfæste.

Mødet med kristendommen
Vikingerne fra Nord mødte kristendommen og dens imponerende kirker med rigdomme på deres togter til England og Frankerriget. En af de første beretninger, vi har om vikingerne, er fra deres angreb på det engelske kloster Lindisfarne i 793, I den angelsaksiske Krønike står der, at det år ”ødelagde hedenske mænd grueligt Guds kirke på Lindisfarne med rov og manddrab”.
Forholdet til kristendommen ændrede sig glidende, og efterhånden lod mange vikinger sig døbe i det fremmede – somme tider flere gange, For til dåben hørte fine nye klæder, og dåben kunne også være betingelser for at få en god handel eller den rette politiske alliance.

”og gjorde danerne kristne”
I 700- og 800-tallet er der flere kristne missionærer, der rejser til Norden. I 948 er der oprettet bispesæder i Slesvig, Ribe og Århus, og nogle årtier senere understreges kongemagtens tilknytning til kristendommen med den store Jellingsten. Stenen har et klart politisk budskab: Harald er landets konge og den nye tro er kristendommen. Kongemagt og kristendom passede også godt sammen: Kristendommen er en centralt organiseret tro, og det passede godt med den nye centrale statsmagt.

Hørningstenen – en kristen runesten
En anden runesten, der henviser til kristendommen, er Hørningstenen, der står bag dig. Centralt placeret på stenen er det kristne kors. Indskrifter lyder: ”Toke smed rejste stenen efter Troels Gudmunds søn, som gav ham guld(?) og frelse”. Her skal frelse læses som at Toke fik sin frihed, det vil sige, at han nok var en træl, der blev frigivet af sin formodentligt kristne herre.
Den opstillede sten er en kopi. Den originale sten kan ses på Moesgård Museum.', N'dennyetro_1510061418006742.png')
SET IDENTITY_INSERT [dbo].[tblSubject] OFF
/****** Object:  Table [dbo].[tblInfo]    Script Date: 10/07/2015 11:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblInfo](
	[fldInfoID] [int] IDENTITY(1,1) NOT NULL,
	[fldOpen] [varchar](150) NOT NULL,
	[fldAddress] [varchar](30) NOT NULL,
	[fldZip] [varchar](30) NOT NULL,
	[fldPhone] [varchar](30) NOT NULL,
	[fldEmail] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tblInfo] PRIMARY KEY CLUSTERED 
(
	[fldInfoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblInfo] ON
INSERT [dbo].[tblInfo] ([fldInfoID], [fldOpen], [fldAddress], [fldZip], [fldPhone], [fldEmail]) VALUES (4, N'Museet er åbent alle hverdage kl. 10.15-16, torsdage åbent til kl. 17. Lukket i weekender og på helligdage.', N'Skt. Clemens Torv 6', N'8000 Aarhus C', N'Telefon 87394000', N'info@moesgaardmuseum.dk')
SET IDENTITY_INSERT [dbo].[tblInfo] OFF
