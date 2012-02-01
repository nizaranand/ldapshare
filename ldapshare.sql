CREATE TABLE IF NOT EXISTS `ldapshare_address` (
`address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`post_id` int(10) unsigned NOT NULL,
`address_title` varchar(255) NOT NULL,
`address_datecreated` datetime NOT NULL,
PRIMARY KEY (`address_id`),
KEY `post_id` (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;

CREATE TABLE IF NOT EXISTS `ldapshare_comment` (
`comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`post_id` int(10) unsigned NOT NULL,
`user_id` int(10) unsigned NOT NULL,
`comment_content` text NOT NULL,
`comment_httpuseragent` varchar(255) DEFAULT NULL,
`comment_remoteaddr` varchar(255) DEFAULT NULL,
`comment_datecreated` datetime NOT NULL,
PRIMARY KEY (`comment_id`),
KEY `post_id` (`post_id`),
KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;

CREATE TABLE IF NOT EXISTS `ldapshare_like` (
`like_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`post_id` int(10) unsigned NOT NULL,
`user_id` int(10) unsigned NOT NULL,
`like_datecreated` datetime NOT NULL,
PRIMARY KEY (`like_id`),
KEY `post_id` (`post_id`),
KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;

CREATE TABLE IF NOT EXISTS `ldapshare_link` (
`link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`post_id` int(10) unsigned NOT NULL,
`link_url` varchar(255) NOT NULL,
`link_title` varchar(255) NOT NULL,
`link_image` varchar(255) DEFAULT NULL,
`link_video` varchar(255) DEFAULT NULL,
`link_videotype` varchar(255) DEFAULT NULL,
`link_videowidth` int(10) unsigned DEFAULT NULL,
`link_videoheight` int(10) unsigned DEFAULT NULL,
`link_icon` varchar(255) DEFAULT NULL,
`link_description` text,
`link_datecreated` datetime NOT NULL,
PRIMARY KEY (`link_id`),
KEY `post_id` (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;

CREATE TABLE IF NOT EXISTS `ldapshare_photo` (
`photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`post_id` int(10) unsigned NOT NULL,
`photo_file` varchar(100) NOT NULL,
`photo_datecreated` datetime NOT NULL,
PRIMARY KEY (`photo_id`),
KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;

CREATE TABLE IF NOT EXISTS `ldapshare_post` (
`post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`user_id` int(10) unsigned NOT NULL,
`post_content` text NOT NULL,
`post_httpuseragent` varchar(255) DEFAULT NULL,
`post_remoteaddr` varchar(255) DEFAULT NULL,
`post_datecreated` datetime NOT NULL,
PRIMARY KEY (`post_id`),
KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;

CREATE TABLE IF NOT EXISTS `ldapshare_user` (
`user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`user_email` varchar(255) NOT NULL,
`user_lastname` varchar(255) NOT NULL,
`user_firstname` varchar(255) NOT NULL,
`user_file` text,
`user_token` char(40) DEFAULT NULL,
`user_datecreated` datetime NOT NULL,
PRIMARY KEY (`user_id`),
KEY `user_email` (`user_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000;

INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('1', 'qoh.kkex@example.it', 'Kaley Cooper', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('2', 'wahtyitw.vrdyp@example.com', 'Stirling Davis', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('3', 'tppgrkw.bllxdn@example.org', 'Peg Kelly', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('4', 'fgz.ytattta@example.edu', 'Anthony Perez', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('5', 'imqefnw.jhujba@example.uk', 'Robynne Flores', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('6', 'zucxfl.dd@example.fr', 'Deitra Clark', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('7', 'txkegijf.hbfee@example.it', 'Ashlie Ramirez', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('8', 'yhaktee.saytx@example.com', 'Keziah Evans', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('9', 'cvcbhh.mnotvdj@example.org', 'Victor Bailey', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('10', 'lrasvmuiv.utwravfm@example.edu', 'Stephania Brooks', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('11', 'yog.hxkohtxlf@example.uk', 'Carine Ross', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('12', 'ce.vnwf@example.fr', 'Rain Griffin', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('13', 'dppzftb.zyctx@example.it', 'Perry Hall', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('14', 'nyzkwvgv.citavc@example.com', 'Melville Scott', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('15', 'ahvhleup.ivofczpk@example.org', 'Tibby Adams', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('16', 'wtykex.bpucbboue@example.edu', 'Noelle Richardson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('17', 'igoztf.acrufdsql@example.uk', 'Lucia Hughes', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('18', 'yb.edzwkkwu@example.fr', 'Kennith Martin', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('19', 'kkaa.csshohg@example.it', 'Fabian Gray', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('20', 'llhzmi.iwt@example.com', 'Quincey Campbell', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('21', 'tqoosous.mu@example.org', 'Erick Wood', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('22', 'vzvr.xbbdgh@example.edu', 'Merv Green', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('23', 'qbuedhl.luvcj@example.uk', 'Kory Rogers', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('24', 'uvldqn.bgelodp@example.fr', 'Pierce Gonzalez', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('25', 'yxupssye.yanesrt@example.it', 'Hettie Anderson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('26', 'cumshczu.gqg@example.com', 'Travis Bryant', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('27', 'xy.kmxm@example.org', 'Merry Parker', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('28', 'cesducno.gudy@example.edu', 'Harriet Martinez', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('29', 'krjolh.su@example.uk', 'Tasha Watson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('30', 'vsykl.xnhpxx@example.fr', 'Ibbie Long', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('31', 'essnuufox.scuraur@example.it', 'Elvis James', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('32', 'nzmt.pgyt@example.com', 'Faith Nelson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('33', 'urscqud.zszqyfe@example.org', 'Nicholas Lee', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('34', 'czr.vbkmouev@example.edu', 'Kayleah Barnes', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('35', 'svnijob.iaoa@example.uk', 'Jeannine Allen', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('36', 'cie.muecm@example.fr', 'Rowley Foster', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('37', 'amqr.logm@example.it', 'Marion Collins', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('38', 'ablzh.rxtwq@example.com', 'Nicole Hernandez', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('39', 'vcz.jrqn@example.org', 'Matthias Moore', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('40', 'tebwzyih.rrbtxqq@example.edu', 'Hugh Jackson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('41', 'oich.mghsr@example.uk', 'Selima Henderson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('42', 'jiejrn.uzcalwl@example.fr', 'Stanford Torres', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('43', 'iwbzohlf.wuzuxmyx@example.it', 'Glenna Bennett', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('44', 'jfwc.uokejho@example.com', 'Carlene Smith', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('45', 'gsnec.ukaqdod@example.org', 'Roly Stewart', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('46', 'ekwegdnsr.asb@example.edu', 'Ria Butler', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('47', 'qqcfyczs.bg@example.uk', 'Ozzie Cox', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('48', 'ug.ep@example.fr', 'Wilfrid Wilson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('49', 'cv.jzdikvr@example.it', 'Kip Carter', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('50', 'nffqds.rs@example.com', 'Isador Robinson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('51', 'gtvio.nidtrnh@example.org', 'Perdita Cook', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('52', 'or.uumcfvb@example.edu', 'Laurinda Williams', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('53', 'fjxk.xuwlts@example.uk', 'Karyn Jones', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('54', 'xztnua.wc@example.fr', 'Lonny Gonzales', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('55', 'avbuoi.hobak@example.it', 'Linwood King', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('56', 'eaepmnrt.hihdje@example.com', 'Brett Brown', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('57', 'cwcdzjv.dr@example.org', 'Barclay Harris', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('58', 'tuuvbjiu.otjwcyngg@example.edu', 'Kerenza Thomas', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('59', 'illz.wxcnfh@example.uk', 'Carter Peterson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('60', 'sfbrirdjt.uoe@example.fr', 'Lorrin Simmons', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('61', 'jztyz.ohm@example.it', 'Calanthe Walker', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('62', 'vpdt.tkmkw@example.com', 'Reg Murphy', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('63', 'myb.hyiwqxyee@example.org', 'Jason Lopez', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('64', 'vqtydjsux.xajroymq@example.edu', 'Lorraine Phillips', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('65', 'ydpc.luxxiseg@example.uk', 'Jasper Miller', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('66', 'ehi.mwsfdsu@example.fr', 'Launce Morgan', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('67', 'qvezvbc.cdw@example.it', 'June White', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('68', 'vhrx.ls@example.com', 'Marcie Bell', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('69', 'eihtgxtpt.xuwjmgfn@example.org', 'Madlyn Rivera', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('70', 'rlzoqkf.ukt@example.edu', 'Viola Reed', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('71', 'ljgm.hax@example.uk', 'Jenni Hayes', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('72', 'zoyjdv.qzg@example.fr', 'Alannah Lewis', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('73', 'tllldv.dm@example.it', 'Will Ward', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('74', 'nvxecvyc.bde@example.com', 'Earnestine Taylor', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('75', 'reswqthch.dtduld@example.org', 'Yashmine Roberts', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('76', 'pvbpzmdfb.ypdceu@example.edu', 'Tex Perry', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('77', 'flxbd.htf@example.uk', 'Ken Garcia', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('78', 'dx.rzvkofvzz@example.fr', 'Lloyd Thompson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('79', 'te.oidos@example.it', 'Terence Powell', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('80', 'chlelvxdq.eklbjst@example.com', 'Robina Jenkins', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('81', 'aawlkrlqg.uxvcunpp@example.org', 'Cedric Washington', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('82', 'wmyz.ub@example.edu', 'Dwayne Turner', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('83', 'gjqgpeyr.atkingltd@example.uk', 'Everett Young', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('84', 'vltkmbk.uhraffk@example.fr', 'Samson Wright', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('85', 'cqvxa.qgjkupgj@example.it', 'Stella Morris', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('86', 'ph.ts@example.com', 'Dave Price', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('87', 'aev.wnhrd@example.org', 'Lucasta Howard', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('88', 'ixy.bpiqqwb@example.edu', 'Claudius Mitchell', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('89', 'rys.nrhrxq@example.uk', 'Goodwin Sanders', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('90', 'drvqrkwc.aluq@example.fr', 'Buck Coleman', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('91', 'frjvx.efheubmjl@example.it', 'Lavina Patterson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('92', 'lxglz.nendp@example.com', 'Love Hill', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('93', 'qvtd.ps@example.org', 'Derek Johnson', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('94', 'poeoybpg.bofgoe@example.edu', 'Myron Baker', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('95', 'sl.yxbj@example.uk', 'Peggy Edwards', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('96', 'ucfk.or@example.fr', 'Jay Sanchez', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('97', 'whsmxqgg.qedgxc@example.it', 'Basil Rodriguez', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('98', 'hydb.ucsuf@example.com', 'Thorley Alexander', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('99', 'clvqx.gvfhy@example.org', 'Iris Russell', NOW());
INSERT INTO `ldapshare_user` (`user_id`, `user_email`, `user_lastname`, `user_datecreated`) VALUES ('100', 'cnx.ufo@example.edu', 'Ellis Diaz', NOW());