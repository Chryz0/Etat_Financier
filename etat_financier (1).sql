-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 17 août 2021 à 07:15
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `etat_financier`
--

-- --------------------------------------------------------

--
-- Structure de la table `balanceanalytique`
--

DROP TABLE IF EXISTS `balanceanalytique`;
CREATE TABLE IF NOT EXISTS `balanceanalytique` (
  `idBalanceAnalytique` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idBalanceAnalytique`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `balanceanalytique`
--

INSERT INTO `balanceanalytique` (`idBalanceAnalytique`, `libelle`) VALUES
(1, 'Autres charges opérationnelles'),
(2, 'Autres produits opérationnels'),
(3, 'Charges administratives'),
(4, 'Charges financières'),
(5, 'Coût des ventes'),
(6, 'Coûts commerciaux'),
(7, 'Impôts exigibles sur les résultats'),
(8, 'Produit des activités ordinaires'),
(9, 'Produits financiers'),
(11, 'Aucune');

-- --------------------------------------------------------

--
-- Structure de la table `balancegeneral`
--

DROP TABLE IF EXISTS `balancegeneral`;
CREATE TABLE IF NOT EXISTS `balancegeneral` (
  `idBalanceGeneral` int(11) NOT NULL AUTO_INCREMENT,
  `idRegroup` int(11) NOT NULL,
  `ncompte` varchar(50) NOT NULL,
  `libelle` varchar(200) NOT NULL,
  PRIMARY KEY (`idBalanceGeneral`),
  KEY `idRegroup` (`idRegroup`)
) ENGINE=InnoDB AUTO_INCREMENT=835 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `balancegeneral`
--

INSERT INTO `balancegeneral` (`idBalanceGeneral`, `idRegroup`, `ncompte`, `libelle`) VALUES
(573, 439, '10100', 'Capital'),
(574, 440, '10400', 'Primes liées au capital social'),
(575, 441, '10500', 'Ecart d\'évaluation'),
(576, 440, '10600', 'Réserves'),
(577, 442, '10700', 'Ecart d\'équivalence'),
(578, 439, '10800', 'Compte de l\'exploitant'),
(579, 439, '10900', 'Actionnaires& capital souscrit non appelé'),
(580, 443, '11000', 'Report à nouveau solde créditeur'),
(581, 443, '11900', 'Report à nouveau solde débiteur'),
(582, 444, '12000', 'Résultat de l\'exercice (bénéfice)'),
(583, 444, '12900', 'Résultat de l\'exercice (perte)'),
(584, 445, '13100', 'Subventions d\'équipement'),
(585, 445, '13200', 'Autres subventions d\'investissement'),
(586, 446, '13300', 'Impôts différés actif'),
(587, 447, '13400', 'Impôts différés passif'),
(588, 446, '13800', 'Autres produits et charges différés'),
(589, 448, '15300', 'Provisions pour pensions et obligations similaires'),
(590, 448, '15500', 'Provisions pour impôts'),
(591, 448, '15600', 'Provisions   pour   renouvellement   des   immobilisations (concession)'),
(592, 448, '15800', 'Autres provisions pour charges - passifs non courants'),
(593, 449, '16100', 'Emprunts obligataires convertibles'),
(594, 449, '16300', 'Autres emprunts obligataires'),
(595, 449, '16400', 'Emprunts auprès des établissements de crédit'),
(596, 449, '16500', 'Dépôts et cautionnements reçus'),
(597, 449, '16700', 'Dettes sur contrat de location-financement'),
(598, 449, '16800', 'Autres emprunts et dettes assimilés'),
(599, 449, '16900', 'Primes de remboursement des obligations'),
(600, 449, '17100', 'Dettes rattachées à des participations groupe'),
(601, 449, '17200', 'Dettes rattachées à des participations hors groupe'),
(602, 449, '17300', 'Dettes rattachées à des sociétés en participation'),
(603, 449, '17800', 'Autres dettes rattachés à des participations'),
(604, 449, '18100', 'Comptes de liaison entre établissements'),
(605, 449, '18800', 'Comptes de liaison entre sociétés en participation'),
(606, 450, '20300', 'Frais de développement immobilisables'),
(607, 450, '20400', 'Logiciels informatiques et assimilés'),
(608, 450, '20500', 'Concessions et droits similaires& brevets& licences& marques'),
(609, 450, '20700', 'Fonds commercial'),
(610, 450, '20800', 'Autres immobilisations incorporelles'),
(611, 451, '21100', 'Terrains'),
(612, 451, '21200', 'Agencements et aménagements de terrain'),
(613, 451, '21300', 'Constructions'),
(614, 451, '21500', 'Installations techniques'),
(615, 451, '21800', 'Autres immobilisations corporelles'),
(616, 452, '22100', 'Terrains en concession'),
(617, 452, '22200', 'Agencements et aménagements de terrain en concession'),
(618, 452, '22300', 'Constructions en concession'),
(619, 452, '22500', 'Installations techniques en concession'),
(620, 452, '22800', 'Autres immobilisations corporelles en concession'),
(621, 452, '22900', 'Droits du concédant'),
(622, 453, '23200', 'Immobilisations corporelles en cours'),
(623, 453, '23700', 'Immobilisations incorporelles en cours'),
(624, 453, '23800', 'Avances     et     acomptes     versés     sur     commandes d\'immobilisations'),
(625, 454, '26100', 'Titres de participation'),
(626, 454, '26200', 'Autres formes de participations'),
(627, 454, '26500', 'Titres de participation évalués par équivalence'),
(628, 455, '26600', 'Créances rattachées à des participations groupe'),
(629, 455, '26700', 'Créances rattachées à des participations hors groupe'),
(630, 455, '26800', 'Créances rattachées à des sociétés en participation'),
(631, 455, '26900', 'Versements restant à effectuer sur titres de participation non libérés'),
(632, 456, '27100', 'Titres  immobilisés  autres  que  les  titres  immobilisés  de l\'activité de portefeuille'),
(633, 456, '27200', 'Titres représentatifs de droit de créance (obligations& bons)'),
(634, 456, '27300', 'Titres immobilisés de l\'activité de portefeuille'),
(635, 457, '27400', 'Prêts'),
(636, 457, '27500', 'Dépôts et cautionnements versés'),
(637, 457, '27600', 'Autres créances immobilisées'),
(638, 457, '27700', 'Actions propres (ou parts propres)'),
(639, 457, '27900', 'Versements restant à effectuer sur titres immobilisés non libérés'),
(640, 458, '28000', 'Amortissement des immobilisations incorporelles'),
(641, 459, '28100', 'Amortissement des immobilisations corporelles'),
(642, 460, '28200', 'Amortissement des immobilisations mises en concession'),
(643, 458, '29000', 'Perte de valeur sur immobilisations incorporelles'),
(644, 459, '29100', 'Perte de valeur sur immobilisations corporelles'),
(645, 460, '29200', 'Dépréciation sur immobilisations mises en concession'),
(646, 461, '29300', 'Perte de valeur sur immobilisations en cours'),
(647, 462, '29600', 'Perte de valeur sur titre mis en équivalence'),
(648, 463, '29610', 'Perte de valeur sur autres titres de participations'),
(649, 464, '29700', 'Perte de valeur sur autres titres immobilisés'),
(650, 465, '29710', 'Perte de valeur sur Prets et autres immobilisations financières'),
(651, 466, '31000', 'Matières premières et fournitures'),
(652, 466, '32100', 'Matières consommables'),
(653, 466, '32200', 'Fournitures consommables'),
(654, 466, '32600', 'Emballages'),
(655, 466, '33100', 'Produits en cours'),
(656, 466, '33500', 'Travaux en cours'),
(657, 466, '34100', 'Etudes en cours'),
(658, 466, '34500', 'Prestations de service en cours'),
(659, 466, '35100', 'Produits intermédiaires'),
(660, 466, '35500', 'Produits finis'),
(661, 466, '35800', 'Produits  résiduels  ou  matières  de  récupération  (déchets& rebuts)'),
(662, 466, '37000', 'Stocks de marchandises'),
(663, 466, '38000', 'Stocks à l\'extérieur (en cours de route& en dépôt ou en consignation)'),
(664, 467, '39100', 'Pertes de valeur Matières premières et fournitures'),
(665, 467, '39200', 'Pertes de valeur Autres approvisionnements'),
(666, 467, '39300', 'Pertes de valeur En cours de production de biens'),
(667, 467, '39400', 'Pertes de valeur En cours de production de services'),
(668, 467, '39500', 'Pertes de valeur Stocks de produits'),
(669, 467, '39700', 'Pertes de valeur Stocks de marchandises'),
(670, 467, '39800', 'Pertes de valeur Stocks à l\'extérieur'),
(671, 468, '40100', 'Fournisseurs de biens et services'),
(672, 468, '40300', 'Fournisseurs effets à payer'),
(673, 469, '40400', 'Fournisseurs d\'immobilisations'),
(674, 469, '40500', 'Fournisseurs d\'immobilisations effets à payer'),
(675, 468, '40800', 'Fournisseurs factures non parvenues'),
(676, 470, '40900', 'Fournisseurs  débiteurs  :  avances  et  acomptes&  RRR  à obtenir& autres créances'),
(677, 470, '41100', 'Clients'),
(678, 470, '41300', 'Clients effets à recevoir'),
(679, 470, '41600', 'Clients douteux'),
(680, 470, '41700', 'Créances sur travaux non encore facturables'),
(681, 470, '41800', 'Clients - produits non encore facturés'),
(682, 468, '41900', 'Clients créditeurs'),
(683, 468, '42100', 'Personnel& rémunérations dues'),
(684, 468, '42200', 'Fonds sociaux - œuvres sociales'),
(685, 471, '42500', 'Personnel& avances et acomptes accordés'),
(686, 468, '42600', 'Personnel& dépôts reçus'),
(687, 468, '42700', 'Personnel& oppositions'),
(688, 468, '42800', 'Personnel& charges à payer et produits à recevoir'),
(689, 468, '43100', 'Organismes sociaux A'),
(690, 468, '43200', 'Organismes sociaux B'),
(691, 468, '43800', 'Organismes sociaux& charges à payer'),
(692, 471, '44100', 'Etat& subventions à recevoir'),
(693, 471, '44200', 'Etat& impôts et taxes recouvrables sur des tiers'),
(694, 471, '44300', 'Opérations  particulières  avec  l\'Etat  et  autres  organismes publiques'),
(695, 468, '44400', 'Etat& impôts sur les résultats'),
(696, 468, '44500', 'Etat& taxes sur le chiffre d\'affaires'),
(697, 471, '44560', 'Tva déductibles sur Achats'),
(698, 471, '44563', 'Tva déductibles sur Services'),
(699, 468, '44570', 'Tva collectées'),
(700, 468, '44580', 'TVA à régulariser'),
(701, 468, '44700', 'Autres impôts& taxes et versements assimilés'),
(702, 468, '44800', 'Etat& charges à payer et produits à recevoir'),
(703, 468, '45100', 'Opérations Groupe'),
(704, 468, '45500', 'Associés - comptes courants'),
(705, 468, '45600', 'Associés& opérations sur le capital'),
(706, 468, '45700', 'Associés& dividendes à payer'),
(707, 468, '45800', 'Associés& opérations faites en commun ou en groupement'),
(708, 471, '46200', 'Créances sur cessions d\'immobilisations'),
(709, 468, '46400', 'Dettes sur acquisitions de valeurs mobilières de placement'),
(710, 471, '46500', 'Créances sur cessions de valeurs mobilières de placement'),
(711, 471, '46700', 'Autres comptes débiteurs ou créditeurs'),
(712, 468, '46800', 'Divers charges à payer ou produits à recevoir'),
(713, 468, '47000', 'Comptes transitoires ou d\'attente'),
(714, 472, '48100', 'Provisions - passifs courants'),
(715, 471, '48600', 'Charges constatées d\'avance'),
(716, 472, '48700', 'Produits constatés d\'avance'),
(717, 473, '49100', 'Pertes de valeur sur comptes de clients'),
(718, 474, '49500', 'Pertes de valeur sur comptes du groupe et des associés'),
(719, 474, '49600', 'Pertes de valeur sur comptes de débiteurs divers'),
(720, 475, '50100', 'Part dans des entreprises liées'),
(721, 475, '50300', 'Actions'),
(722, 475, '50400', 'Autres titres conférant un droit de propriété'),
(723, 475, '50500', 'Obligations et bons émis par la société et rachetés par elle'),
(724, 475, '50600', 'Obligations'),
(725, 475, '50700', 'Bons du trésor et bons de caisse à court terme'),
(726, 475, '50800', 'Autres  valeurs  mobilières  de  placement  et  créances assimilés'),
(727, 476, '50900', 'Versements restant à effectuer sur VMP non libérées'),
(728, 477, '51100', 'Valeurs à l\'encaissement'),
(729, 477, '51200', 'Banques comptes courants'),
(730, 477, '51500', 'Caisse du Trésor Public et établissements publics'),
(731, 477, '51700', 'Autres organismes financiers'),
(732, 477, '51800', 'Intérêts courus'),
(733, 476, '51900', 'Concours bancaires courants'),
(734, 477, '52000', 'Instruments de trésorerie'),
(735, 477, '53000', 'Caisse'),
(736, 477, '54000', 'Régies d\'avances et accréditifs'),
(737, 477, '58100', 'Virements de fonds'),
(738, 477, '58800', 'Autres virements internes'),
(739, 478, '59100', 'Pertes de valeur sur valeurs en banque et Ets financiers'),
(740, 478, '59400', 'Pertes de valeur sur régies d\'avances et accréditifs'),
(741, 479, '60100', 'Matières premières'),
(742, 479, '60200', 'Autres approvisionnements'),
(743, 479, '60300', 'Variations des stocks'),
(744, 479, '60400', 'Achats d\'études et de prestations de service'),
(745, 479, '60500', 'Achats de matériels& équipements et travaux'),
(746, 479, '60600', 'Eau et électricité'),
(747, 479, '60610', 'Carburant'),
(748, 479, '60700', 'Achats de marchandises taxables'),
(749, 479, '60710', 'Achats de marchandises exonérés'),
(750, 479, '60800', 'Frais accessoires d\'achat'),
(751, 479, '60900', 'Rabais& remises& ristournes obtenus sur achats'),
(752, 480, '61100', 'Sous-traitance générale'),
(753, 480, '61300', 'Locations'),
(754, 480, '61400', 'Charges locatives et charges de copropriété'),
(755, 480, '61500', 'Entretien& réparations et maintenance'),
(756, 480, '61600', 'Primes d\'assurances'),
(757, 480, '61700', 'Etudes et recherches'),
(758, 480, '61800', 'Documentation et divers'),
(759, 480, '61900', 'Rabais& remises& ristournes obtenus sur services extérieurs'),
(760, 480, '62100', 'Personnel extérieur à l\'entreprise'),
(761, 480, '62200', 'Rémunérations d\'intermédiaires et honoraires'),
(762, 480, '62300', 'Publicité& publication& relations publiques'),
(763, 480, '62400', 'Transports de biens et transport collectif du personnel'),
(764, 480, '62500', 'Déplacements& missions et réceptions'),
(765, 480, '62600', 'Frais postaux et de télécommunications'),
(766, 480, '62700', 'Services bancaires et assimilés'),
(767, 480, '62800', 'Cotisations et divers'),
(768, 480, '62900', 'Rabais&  remises&  ristournes  obtenus  sur  autres  services extérieurs'),
(769, 481, '63100', 'Impôts& taxes et versements assimilés sur rémunérations'),
(770, 481, '63500', 'Autres impôts et taxes'),
(771, 482, '64100', 'Rémunérations du personnel'),
(772, 482, '64400', 'Rémunérations des dirigeants'),
(773, 482, '64500', 'Cotisations CNAPS'),
(774, 482, '64510', 'Cotisations OSTIE'),
(775, 482, '64520', 'Cotisations FMFP'),
(776, 482, '64600', 'Charges sociales sur rémunérations des dirigeants'),
(777, 482, '64700', 'Autres charges sociales'),
(778, 482, '64800', 'Autres charges de personnel'),
(779, 483, '65100', 'Redevances pour concessions& brevets& licences& logiciels et valeurs similaires'),
(780, 483, '65200', 'Moins values sur cessions d\'actifs non courants'),
(781, 483, '65300', 'Jetons de présence'),
(782, 483, '65400', 'Pertes sur créances irrécouvrables'),
(783, 483, '65500', 'Quote-part de résultat sur opérations faites en commun'),
(784, 483, '65600', 'Amendes  et  pénalités&  subventions  accordées&  dons  et libéralités'),
(785, 483, '65700', 'Charges exceptionnelles de gestion courante'),
(786, 483, '65800', 'Autres charges de gestion courante'),
(787, 484, '66100', 'Charges d\'intérêts'),
(788, 484, '66400', 'Pertes sur créances liées a des participations'),
(789, 484, '66500', 'Moins-values sur titres de placement'),
(790, 484, '66600', 'Pertes de change'),
(791, 484, '66700', 'Moins-values sur instruments financiers et assimilés'),
(792, 484, '66800', 'Autres charges financières'),
(793, 485, '67000', 'ELEMENTS EXTRAORDINAIRES (CHARGES)'),
(794, 486, '68100', 'Dotations  - actifs non courants'),
(795, 486, '68500', 'Dotations  - actifs courants'),
(796, 487, '69200', 'Imposition différée actif'),
(797, 487, '69300', 'Imposition différée passif'),
(798, 488, '69500', 'Impôts sur les bénéfices basés sur le résultat des activités ordinaires'),
(799, 488, '69800', 'Autres impôts sur les résultats'),
(800, 489, '70100', 'Ventes de produits finis'),
(801, 489, '70200', 'Ventes de produits intermédiaires'),
(802, 489, '70300', 'Ventes de produits résiduels'),
(803, 489, '70400', 'Vente de travaux'),
(804, 489, '70500', 'Vente d\'études'),
(805, 489, '70600', 'Vente de prestations de service'),
(806, 489, '70700', 'Ventes de marchandises taxables'),
(807, 489, '70710', 'Ventes de marchandises exonérées'),
(808, 489, '70800', 'Produits des activités annexes'),
(809, 489, '70900', 'Rabais& remises et ristournes accordés'),
(810, 490, '71300', 'Variation de stocks d\'en-cours'),
(811, 490, '71400', 'Variation de stocks de produits'),
(812, 491, '72100', 'Production immobilisée d\'actif incorporel'),
(813, 491, '72200', 'Production immobilisée d\'actif corporel'),
(814, 492, '74100', 'Subvention d\'équilibre'),
(815, 492, '74800', 'Autres subventions d\'exploitation'),
(816, 493, '75100', 'Redevances pour concessions& brevets& licences& logiciels et valeurs similaires'),
(817, 493, '75200', 'Plus-values sur cessions d\'actifs non courants'),
(818, 493, '75300', 'Jetons de présence et rémunérations d\'administrateurs ou de gérant'),
(819, 493, '75400', 'Quotes-parts  de  subventions  d\'investissement  virées  au résultat de l\'exercice'),
(820, 493, '75500', 'Quote-part de résultat sur opérations faites en commun'),
(821, 493, '75600', 'Libéralités perçues& rentrées sur créances amorties'),
(822, 493, '75700', 'Produits exceptionnels sur opérations de gestion'),
(823, 493, '75800', 'Autres produits de gestion courante'),
(824, 494, '76100', 'Produits de participations'),
(825, 494, '76200', 'Produits des autres immobilisations financières'),
(826, 494, '76300', 'Revenus des autres créances'),
(827, 494, '76400', 'Revenus et plus values des valeurs mobilières de placement'),
(828, 494, '76600', 'Gains de change'),
(829, 494, '76700', 'Produits  nets  sur  cessions  de  valeurs  mobilières  de placement'),
(830, 494, '76800', 'Autres produits financiers'),
(831, 495, '77000', 'ELEMENTS EXTRAORDINAIRES (PRODUITS)'),
(832, 496, '78100', 'Reprise d\'exploitation  - actifs non courants'),
(833, 496, '78500', 'Reprise d\'exploitation  - actifs courants'),
(834, 494, '78600', 'Reprises financières');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `balancegeneralvue`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `balancegeneralvue`;
CREATE TABLE IF NOT EXISTS `balancegeneralvue` (
`idBalanceGeneral` int(11)
,`regroupement` varchar(150)
,`ncompte` varchar(50)
,`libelleCompte` varchar(200)
);

-- --------------------------------------------------------

--
-- Structure de la table `grandlivre`
--

DROP TABLE IF EXISTS `grandlivre`;
CREATE TABLE IF NOT EXISTS `grandlivre` (
  `idGrandLivre` int(11) NOT NULL AUTO_INCREMENT,
  `idBalanceG` int(11) NOT NULL,
  `idBalanceAnal` int(11) NOT NULL,
  `typeJournal` varchar(50) DEFAULT NULL,
  `tiers` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `date` date NOT NULL,
  `nPiece` int(11) DEFAULT NULL,
  `motif` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `lettrage` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `debit` double NOT NULL,
  `credit` double NOT NULL,
  `idCouple` int(11) DEFAULT NULL,
  PRIMARY KEY (`idGrandLivre`),
  KEY `idBalanceG` (`idBalanceG`),
  KEY `idBalanceAnal` (`idBalanceAnal`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `grandlivre`
--

INSERT INTO `grandlivre` (`idGrandLivre`, `idBalanceG`, `idBalanceAnal`, `typeJournal`, `tiers`, `date`, `nPiece`, `motif`, `lettrage`, `debit`, `credit`, `idCouple`) VALUES
(7, 573, 1, 'ACH', 'test', '2020-03-10', 2, 'FAC 345 ACHAT MAT PR', '', 50000000, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `regroupement`
--

DROP TABLE IF EXISTS `regroupement`;
CREATE TABLE IF NOT EXISTS `regroupement` (
  `idRegroupement` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(150) NOT NULL,
  PRIMARY KEY (`idRegroupement`)
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `regroupement`
--

INSERT INTO `regroupement` (`idRegroupement`, `libelle`) VALUES
(439, 'Capital émis'),
(440, 'Primes et réserves consolidées'),
(441, 'Ecarts d\'évaluation'),
(442, 'Ecart d\'équivalence'),
(443, 'Autres capitaux propres - report à nouveau'),
(444, 'Résultat net - part du groupe'),
(445, 'Produits différés : subventions d\'investissement'),
(446, 'Impôts'),
(447, 'Impôts différés'),
(448, 'Provisions et produits constatés d\'avance'),
(449, 'Emprunts et dettes financières'),
(450, 'Immobilisations incorporelles'),
(451, 'Immobilisations corporelles'),
(452, 'Immobilisations mises en concession'),
(453, 'Immobilisations en cours'),
(454, 'Titres mis en équivalence'),
(455, 'Autres participations et créances rattachées'),
(456, 'Autres titres immobilisés'),
(457, 'Prêts et autres immobilisations financières'),
(458, 'Amo et pdv Immobilisations incorporelles'),
(459, 'Amo et pdv Immobilisations corporelles'),
(460, 'Amo et pdv Immobilisations mises en concession'),
(461, 'Amo et pdv Immobilisations en cours'),
(462, 'Amo et pdv Titres mis en équivalence'),
(463, 'Amo et pdv Autres participations et créances rattachées'),
(464, 'Amo et pdv Autres titres immobilisés'),
(465, 'Amo et pdv Prêts et autres immobilisations financières'),
(466, 'Stocks et en cours'),
(467, 'Pdv Stocks et en cours'),
(468, 'Fournisseurs et comptes rattachés'),
(469, 'Autres dettes'),
(470, 'Clients et autres débiteurs'),
(471, 'Autres créances et actifs assimilés'),
(472, 'Provisions et produits constatés d\'avance - passifs courants'),
(473, 'Pdv Clients et autres débiteurs'),
(474, 'Pdv Autres créances et actifs assimilés'),
(475, 'Placements et autres équivalents de trésorerie'),
(476, 'Comptes de trésorerie (découverts bancaires)'),
(477, 'Trésorerie (fonds en caisse et dépôts à vue)'),
(478, 'Pdv Trésorerie (fonds en caisse et dépôts à vue)'),
(479, 'Achats consommés'),
(480, 'Services extérieurs et autres consommations'),
(481, '\"Impôts'),
(482, 'Charges de personnel'),
(483, 'Autres charges opérationnelles'),
(484, 'Charges financières'),
(485, 'Eléments extraordinaires (charges) - à préciser'),
(486, '\"Dotations aux amortissements'),
(487, 'Impôts différés (Variations)'),
(488, 'Impôts exigibles sur résultats'),
(489, 'Chiffre d\'affaires'),
(490, 'Production stockée'),
(491, 'Production immobilisée'),
(492, 'Subvention d\'exploitation'),
(493, 'Autres produits opérationnels'),
(494, 'Produits financiers'),
(495, 'Eléments extraordinaires (produits) - à préciser'),
(496, 'Reprise sur provisions et pertes de valeurs');

-- --------------------------------------------------------

--
-- Structure de la table `societe`
--

DROP TABLE IF EXISTS `societe`;
CREATE TABLE IF NOT EXISTS `societe` (
  `idSociete` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `activite` varchar(100) NOT NULL,
  `nif` varchar(50) NOT NULL,
  `stat` varchar(50) NOT NULL,
  `rcs` varchar(50) NOT NULL,
  PRIMARY KEY (`idSociete`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `societe`
--

INSERT INTO `societe` (`idSociete`, `nom`, `activite`, `nif`, `stat`, `rcs`) VALUES
(1, 'AMUSTEL', '', '100000001', '35555555', '1010101');

-- --------------------------------------------------------

--
-- Structure de la table `soldebalanceanalytique`
--

DROP TABLE IF EXISTS `soldebalanceanalytique`;
CREATE TABLE IF NOT EXISTS `soldebalanceanalytique` (
  `idSoldeBalanceAnalytique` int(11) NOT NULL AUTO_INCREMENT,
  `idBalanceAnal` int(11) NOT NULL,
  `idSoc` int(11) NOT NULL,
  `solde` double NOT NULL,
  `annee` date NOT NULL,
  PRIMARY KEY (`idSoldeBalanceAnalytique`),
  KEY `idBalanceAnal` (`idBalanceAnal`),
  KEY `idSoc` (`idSoc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `soldebalancegeneral`
--

DROP TABLE IF EXISTS `soldebalancegeneral`;
CREATE TABLE IF NOT EXISTS `soldebalancegeneral` (
  `idSoldeBalanceGeneral` int(11) NOT NULL AUTO_INCREMENT,
  `idBalanceG` int(11) NOT NULL,
  `idSoc` int(11) NOT NULL,
  `solde` double NOT NULL,
  `annee` date NOT NULL,
  `debitOuCredit` int(11) NOT NULL,
  PRIMARY KEY (`idSoldeBalanceGeneral`),
  KEY `idBalanceG` (`idBalanceG`),
  KEY `idSoc` (`idSoc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `typejournal`
--

DROP TABLE IF EXISTS `typejournal`;
CREATE TABLE IF NOT EXISTS `typejournal` (
  `idTypeJournal` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`idTypeJournal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `idSociete` int(11) NOT NULL,
  `nom` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `motDePasse` text NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  UNIQUE KEY `email` (`email`),
  KEY `idSoc` (`idSociete`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `idSociete`, `nom`, `email`, `motDePasse`) VALUES
(1, 1, 'AMUSTEL', 'joel@gmail.com', 'c000ccf225950aac2a082a59ac5e57ff');

-- --------------------------------------------------------

--
-- Structure de la vue `balancegeneralvue`
--
DROP TABLE IF EXISTS `balancegeneralvue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `balancegeneralvue`  AS  select `b`.`idBalanceGeneral` AS `idBalanceGeneral`,`r`.`libelle` AS `regroupement`,`b`.`ncompte` AS `ncompte`,`b`.`libelle` AS `libelleCompte` from (`balancegeneral` `b` left join `regroupement` `r` on((`b`.`idRegroup` = `r`.`idRegroupement`))) ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `balancegeneral`
--
ALTER TABLE `balancegeneral`
  ADD CONSTRAINT `balancegeneral_ibfk_1` FOREIGN KEY (`idRegroup`) REFERENCES `regroupement` (`idRegroupement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `grandlivre`
--
ALTER TABLE `grandlivre`
  ADD CONSTRAINT `grandlivre_ibfk_1` FOREIGN KEY (`idBalanceG`) REFERENCES `balancegeneral` (`idBalanceGeneral`),
  ADD CONSTRAINT `grandlivre_ibfk_2` FOREIGN KEY (`idBalanceAnal`) REFERENCES `balanceanalytique` (`idBalanceAnalytique`);

--
-- Contraintes pour la table `soldebalanceanalytique`
--
ALTER TABLE `soldebalanceanalytique`
  ADD CONSTRAINT `soldebalanceanalytique_ibfk_1` FOREIGN KEY (`idBalanceAnal`) REFERENCES `balanceanalytique` (`idBalanceAnalytique`),
  ADD CONSTRAINT `soldebalanceanalytique_ibfk_2` FOREIGN KEY (`idSoc`) REFERENCES `societe` (`idSociete`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `soldebalancegeneral`
--
ALTER TABLE `soldebalancegeneral`
  ADD CONSTRAINT `soldebalancegeneral_ibfk_1` FOREIGN KEY (`idBalanceG`) REFERENCES `balancegeneral` (`idBalanceGeneral`),
  ADD CONSTRAINT `soldebalancegeneral_ibfk_2` FOREIGN KEY (`idSoc`) REFERENCES `societe` (`idSociete`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`idSociete`) REFERENCES `societe` (`idSociete`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
