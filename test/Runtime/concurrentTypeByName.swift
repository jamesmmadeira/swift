// RUN: %target-run-simple-swift
// REQUIRES: executable_test

// UNSUPPORTED: use_os_stdlib
// UNSUPPORTED: back_deployment_runtime
// UNSUPPORTED: single_threaded_concurrency

import StdlibUnittest
import SwiftPrivateThreadExtras

protocol P {}
class GenericWrapper<T: P> {}

let ConcurrentTypeByNameTests = TestSuite("ConcurrentTypeByName")

// We're testing for a race in looking up types by name, when there's a protocol
// constraint on a generic argument, and that constraint is fulfilled by a
// superclass. This race is more easily exposed when the superclass's metadata
// takes a long time to fill out, so we make it have a ton of properties here.
class Super<T>: P {
  var val0: T?
  var val1: T?
  var val2: T?
  var val3: T?
  var val4: T?
  var val5: T?
  var val6: T?
  var val7: T?
  var val8: T?
  var val9: T?
  var val10: T?
  var val11: T?
  var val12: T?
  var val13: T?
  var val14: T?
  var val15: T?
  var val16: T?
  var val17: T?
  var val18: T?
  var val19: T?
  var val20: T?
  var val21: T?
  var val22: T?
  var val23: T?
  var val24: T?
  var val25: T?
  var val26: T?
  var val27: T?
  var val28: T?
  var val29: T?
  var val30: T?
  var val31: T?
  var val32: T?
  var val33: T?
  var val34: T?
  var val35: T?
  var val36: T?
  var val37: T?
  var val38: T?
  var val39: T?
  var val40: T?
  var val41: T?
  var val42: T?
  var val43: T?
  var val44: T?
  var val45: T?
  var val46: T?
  var val47: T?
  var val48: T?
  var val49: T?
  var val50: T?
  var val51: T?
  var val52: T?
  var val53: T?
  var val54: T?
  var val55: T?
  var val56: T?
  var val57: T?
  var val58: T?
  var val59: T?
  var val60: T?
  var val61: T?
  var val62: T?
  var val63: T?
  var val64: T?
  var val65: T?
  var val66: T?
  var val67: T?
  var val68: T?
  var val69: T?
  var val70: T?
  var val71: T?
  var val72: T?
  var val73: T?
  var val74: T?
  var val75: T?
  var val76: T?
  var val77: T?
  var val78: T?
  var val79: T?
  var val80: T?
  var val81: T?
  var val82: T?
  var val83: T?
  var val84: T?
  var val85: T?
  var val86: T?
  var val87: T?
  var val88: T?
  var val89: T?
  var val90: T?
  var val91: T?
  var val92: T?
  var val93: T?
  var val94: T?
  var val95: T?
  var val96: T?
  var val97: T?
  var val98: T?
  var val99: T?
  var val100: T?
  var val101: T?
  var val102: T?
  var val103: T?
  var val104: T?
  var val105: T?
  var val106: T?
  var val107: T?
  var val108: T?
  var val109: T?
  var val110: T?
  var val111: T?
  var val112: T?
  var val113: T?
  var val114: T?
  var val115: T?
  var val116: T?
  var val117: T?
  var val118: T?
  var val119: T?
  var val120: T?
  var val121: T?
  var val122: T?
  var val123: T?
  var val124: T?
  var val125: T?
  var val126: T?
  var val127: T?
  var val128: T?
  var val129: T?
  var val130: T?
  var val131: T?
  var val132: T?
  var val133: T?
  var val134: T?
  var val135: T?
  var val136: T?
  var val137: T?
  var val138: T?
  var val139: T?
  var val140: T?
  var val141: T?
  var val142: T?
  var val143: T?
  var val144: T?
  var val145: T?
  var val146: T?
  var val147: T?
  var val148: T?
  var val149: T?
  var val150: T?
  var val151: T?
  var val152: T?
  var val153: T?
  var val154: T?
  var val155: T?
  var val156: T?
  var val157: T?
  var val158: T?
  var val159: T?
  var val160: T?
  var val161: T?
  var val162: T?
  var val163: T?
  var val164: T?
  var val165: T?
  var val166: T?
  var val167: T?
  var val168: T?
  var val169: T?
  var val170: T?
  var val171: T?
  var val172: T?
  var val173: T?
  var val174: T?
  var val175: T?
  var val176: T?
  var val177: T?
  var val178: T?
  var val179: T?
  var val180: T?
  var val181: T?
  var val182: T?
  var val183: T?
  var val184: T?
  var val185: T?
  var val186: T?
  var val187: T?
  var val188: T?
  var val189: T?
  var val190: T?
  var val191: T?
  var val192: T?
  var val193: T?
  var val194: T?
  var val195: T?
  var val196: T?
  var val197: T?
  var val198: T?
  var val199: T?
  var val200: T?
  var val201: T?
  var val202: T?
  var val203: T?
  var val204: T?
  var val205: T?
  var val206: T?
  var val207: T?
  var val208: T?
  var val209: T?
  var val210: T?
  var val211: T?
  var val212: T?
  var val213: T?
  var val214: T?
  var val215: T?
  var val216: T?
  var val217: T?
  var val218: T?
  var val219: T?
  var val220: T?
  var val221: T?
  var val222: T?
  var val223: T?
  var val224: T?
  var val225: T?
  var val226: T?
  var val227: T?
  var val228: T?
  var val229: T?
  var val230: T?
  var val231: T?
  var val232: T?
  var val233: T?
  var val234: T?
  var val235: T?
  var val236: T?
  var val237: T?
  var val238: T?
  var val239: T?
  var val240: T?
  var val241: T?
  var val242: T?
  var val243: T?
  var val244: T?
  var val245: T?
  var val246: T?
  var val247: T?
  var val248: T?
  var val249: T?
  var val250: T?
  var val251: T?
  var val252: T?
  var val253: T?
  var val254: T?
  var val255: T?
  var val256: T?
  var val257: T?
  var val258: T?
  var val259: T?
  var val260: T?
  var val261: T?
  var val262: T?
  var val263: T?
  var val264: T?
  var val265: T?
  var val266: T?
  var val267: T?
  var val268: T?
  var val269: T?
  var val270: T?
  var val271: T?
  var val272: T?
  var val273: T?
  var val274: T?
  var val275: T?
  var val276: T?
  var val277: T?
  var val278: T?
  var val279: T?
  var val280: T?
  var val281: T?
  var val282: T?
  var val283: T?
  var val284: T?
  var val285: T?
  var val286: T?
  var val287: T?
  var val288: T?
  var val289: T?
  var val290: T?
  var val291: T?
  var val292: T?
  var val293: T?
  var val294: T?
  var val295: T?
  var val296: T?
  var val297: T?
  var val298: T?
  var val299: T?
  var val300: T?
  var val301: T?
  var val302: T?
  var val303: T?
  var val304: T?
  var val305: T?
  var val306: T?
  var val307: T?
  var val308: T?
  var val309: T?
  var val310: T?
  var val311: T?
  var val312: T?
  var val313: T?
  var val314: T?
  var val315: T?
  var val316: T?
  var val317: T?
  var val318: T?
  var val319: T?
  var val320: T?
  var val321: T?
  var val322: T?
  var val323: T?
  var val324: T?
  var val325: T?
  var val326: T?
  var val327: T?
  var val328: T?
  var val329: T?
  var val330: T?
  var val331: T?
  var val332: T?
  var val333: T?
  var val334: T?
  var val335: T?
  var val336: T?
  var val337: T?
  var val338: T?
  var val339: T?
  var val340: T?
  var val341: T?
  var val342: T?
  var val343: T?
  var val344: T?
  var val345: T?
  var val346: T?
  var val347: T?
  var val348: T?
  var val349: T?
  var val350: T?
  var val351: T?
  var val352: T?
  var val353: T?
  var val354: T?
  var val355: T?
  var val356: T?
  var val357: T?
  var val358: T?
  var val359: T?
  var val360: T?
  var val361: T?
  var val362: T?
  var val363: T?
  var val364: T?
  var val365: T?
  var val366: T?
  var val367: T?
  var val368: T?
  var val369: T?
  var val370: T?
  var val371: T?
  var val372: T?
  var val373: T?
  var val374: T?
  var val375: T?
  var val376: T?
  var val377: T?
  var val378: T?
  var val379: T?
  var val380: T?
  var val381: T?
  var val382: T?
  var val383: T?
  var val384: T?
  var val385: T?
  var val386: T?
  var val387: T?
  var val388: T?
  var val389: T?
  var val390: T?
  var val391: T?
  var val392: T?
  var val393: T?
  var val394: T?
  var val395: T?
  var val396: T?
  var val397: T?
  var val398: T?
  var val399: T?
  var val400: T?
  var val401: T?
  var val402: T?
  var val403: T?
  var val404: T?
  var val405: T?
  var val406: T?
  var val407: T?
  var val408: T?
  var val409: T?
  var val410: T?
  var val411: T?
  var val412: T?
  var val413: T?
  var val414: T?
  var val415: T?
  var val416: T?
  var val417: T?
  var val418: T?
  var val419: T?
  var val420: T?
  var val421: T?
  var val422: T?
  var val423: T?
  var val424: T?
  var val425: T?
  var val426: T?
  var val427: T?
  var val428: T?
  var val429: T?
  var val430: T?
  var val431: T?
  var val432: T?
  var val433: T?
  var val434: T?
  var val435: T?
  var val436: T?
  var val437: T?
  var val438: T?
  var val439: T?
  var val440: T?
  var val441: T?
  var val442: T?
  var val443: T?
  var val444: T?
  var val445: T?
  var val446: T?
  var val447: T?
  var val448: T?
  var val449: T?
  var val450: T?
  var val451: T?
  var val452: T?
  var val453: T?
  var val454: T?
  var val455: T?
  var val456: T?
  var val457: T?
  var val458: T?
  var val459: T?
  var val460: T?
  var val461: T?
  var val462: T?
  var val463: T?
  var val464: T?
  var val465: T?
  var val466: T?
  var val467: T?
  var val468: T?
  var val469: T?
  var val470: T?
  var val471: T?
  var val472: T?
  var val473: T?
  var val474: T?
  var val475: T?
  var val476: T?
  var val477: T?
  var val478: T?
  var val479: T?
  var val480: T?
  var val481: T?
  var val482: T?
  var val483: T?
  var val484: T?
  var val485: T?
  var val486: T?
  var val487: T?
  var val488: T?
  var val489: T?
  var val490: T?
  var val491: T?
  var val492: T?
  var val493: T?
  var val494: T?
  var val495: T?
  var val496: T?
  var val497: T?
  var val498: T?
  var val499: T?
  var val500: T?
  var val501: T?
  var val502: T?
  var val503: T?
  var val504: T?
  var val505: T?
  var val506: T?
  var val507: T?
  var val508: T?
  var val509: T?
  var val510: T?
  var val511: T?
  var val512: T?
  var val513: T?
  var val514: T?
  var val515: T?
  var val516: T?
  var val517: T?
  var val518: T?
  var val519: T?
  var val520: T?
  var val521: T?
  var val522: T?
  var val523: T?
  var val524: T?
  var val525: T?
  var val526: T?
  var val527: T?
  var val528: T?
  var val529: T?
  var val530: T?
  var val531: T?
  var val532: T?
  var val533: T?
  var val534: T?
  var val535: T?
  var val536: T?
  var val537: T?
  var val538: T?
  var val539: T?
  var val540: T?
  var val541: T?
  var val542: T?
  var val543: T?
  var val544: T?
  var val545: T?
  var val546: T?
  var val547: T?
  var val548: T?
  var val549: T?
  var val550: T?
  var val551: T?
  var val552: T?
  var val553: T?
  var val554: T?
  var val555: T?
  var val556: T?
  var val557: T?
  var val558: T?
  var val559: T?
  var val560: T?
  var val561: T?
  var val562: T?
  var val563: T?
  var val564: T?
  var val565: T?
  var val566: T?
  var val567: T?
  var val568: T?
  var val569: T?
  var val570: T?
  var val571: T?
  var val572: T?
  var val573: T?
  var val574: T?
  var val575: T?
  var val576: T?
  var val577: T?
  var val578: T?
  var val579: T?
  var val580: T?
  var val581: T?
  var val582: T?
  var val583: T?
  var val584: T?
  var val585: T?
  var val586: T?
  var val587: T?
  var val588: T?
  var val589: T?
  var val590: T?
  var val591: T?
  var val592: T?
  var val593: T?
  var val594: T?
  var val595: T?
  var val596: T?
  var val597: T?
  var val598: T?
  var val599: T?
  var val600: T?
  var val601: T?
  var val602: T?
  var val603: T?
  var val604: T?
  var val605: T?
  var val606: T?
  var val607: T?
  var val608: T?
  var val609: T?
  var val610: T?
  var val611: T?
  var val612: T?
  var val613: T?
  var val614: T?
  var val615: T?
  var val616: T?
  var val617: T?
  var val618: T?
  var val619: T?
  var val620: T?
  var val621: T?
  var val622: T?
  var val623: T?
  var val624: T?
  var val625: T?
  var val626: T?
  var val627: T?
  var val628: T?
  var val629: T?
  var val630: T?
  var val631: T?
  var val632: T?
  var val633: T?
  var val634: T?
  var val635: T?
  var val636: T?
  var val637: T?
  var val638: T?
  var val639: T?
  var val640: T?
  var val641: T?
  var val642: T?
  var val643: T?
  var val644: T?
  var val645: T?
  var val646: T?
  var val647: T?
  var val648: T?
  var val649: T?
  var val650: T?
  var val651: T?
  var val652: T?
  var val653: T?
  var val654: T?
  var val655: T?
  var val656: T?
  var val657: T?
  var val658: T?
  var val659: T?
  var val660: T?
  var val661: T?
  var val662: T?
  var val663: T?
  var val664: T?
  var val665: T?
  var val666: T?
  var val667: T?
  var val668: T?
  var val669: T?
  var val670: T?
  var val671: T?
  var val672: T?
  var val673: T?
  var val674: T?
  var val675: T?
  var val676: T?
  var val677: T?
  var val678: T?
  var val679: T?
  var val680: T?
  var val681: T?
  var val682: T?
  var val683: T?
  var val684: T?
  var val685: T?
  var val686: T?
  var val687: T?
  var val688: T?
  var val689: T?
  var val690: T?
  var val691: T?
  var val692: T?
  var val693: T?
  var val694: T?
  var val695: T?
  var val696: T?
  var val697: T?
  var val698: T?
  var val699: T?
  var val700: T?
  var val701: T?
  var val702: T?
  var val703: T?
  var val704: T?
  var val705: T?
  var val706: T?
  var val707: T?
  var val708: T?
  var val709: T?
  var val710: T?
  var val711: T?
  var val712: T?
  var val713: T?
  var val714: T?
  var val715: T?
  var val716: T?
  var val717: T?
  var val718: T?
  var val719: T?
  var val720: T?
  var val721: T?
  var val722: T?
  var val723: T?
  var val724: T?
  var val725: T?
  var val726: T?
  var val727: T?
  var val728: T?
  var val729: T?
  var val730: T?
  var val731: T?
  var val732: T?
  var val733: T?
  var val734: T?
  var val735: T?
  var val736: T?
  var val737: T?
  var val738: T?
  var val739: T?
  var val740: T?
  var val741: T?
  var val742: T?
  var val743: T?
  var val744: T?
  var val745: T?
  var val746: T?
  var val747: T?
  var val748: T?
  var val749: T?
  var val750: T?
  var val751: T?
  var val752: T?
  var val753: T?
  var val754: T?
  var val755: T?
  var val756: T?
  var val757: T?
  var val758: T?
  var val759: T?
  var val760: T?
  var val761: T?
  var val762: T?
  var val763: T?
  var val764: T?
  var val765: T?
  var val766: T?
  var val767: T?
  var val768: T?
  var val769: T?
  var val770: T?
  var val771: T?
  var val772: T?
  var val773: T?
  var val774: T?
  var val775: T?
  var val776: T?
  var val777: T?
  var val778: T?
  var val779: T?
  var val780: T?
  var val781: T?
  var val782: T?
  var val783: T?
  var val784: T?
  var val785: T?
  var val786: T?
  var val787: T?
  var val788: T?
  var val789: T?
  var val790: T?
  var val791: T?
  var val792: T?
  var val793: T?
  var val794: T?
  var val795: T?
  var val796: T?
  var val797: T?
  var val798: T?
  var val799: T?
  var val800: T?
  var val801: T?
  var val802: T?
  var val803: T?
  var val804: T?
  var val805: T?
  var val806: T?
  var val807: T?
  var val808: T?
  var val809: T?
  var val810: T?
  var val811: T?
  var val812: T?
  var val813: T?
  var val814: T?
  var val815: T?
  var val816: T?
  var val817: T?
  var val818: T?
  var val819: T?
  var val820: T?
  var val821: T?
  var val822: T?
  var val823: T?
  var val824: T?
  var val825: T?
  var val826: T?
  var val827: T?
  var val828: T?
  var val829: T?
  var val830: T?
  var val831: T?
  var val832: T?
  var val833: T?
  var val834: T?
  var val835: T?
  var val836: T?
  var val837: T?
  var val838: T?
  var val839: T?
  var val840: T?
  var val841: T?
  var val842: T?
  var val843: T?
  var val844: T?
  var val845: T?
  var val846: T?
  var val847: T?
  var val848: T?
  var val849: T?
  var val850: T?
  var val851: T?
  var val852: T?
  var val853: T?
  var val854: T?
  var val855: T?
  var val856: T?
  var val857: T?
  var val858: T?
  var val859: T?
  var val860: T?
  var val861: T?
  var val862: T?
  var val863: T?
  var val864: T?
  var val865: T?
  var val866: T?
  var val867: T?
  var val868: T?
  var val869: T?
  var val870: T?
  var val871: T?
  var val872: T?
  var val873: T?
  var val874: T?
  var val875: T?
  var val876: T?
  var val877: T?
  var val878: T?
  var val879: T?
  var val880: T?
  var val881: T?
  var val882: T?
  var val883: T?
  var val884: T?
  var val885: T?
  var val886: T?
  var val887: T?
  var val888: T?
  var val889: T?
  var val890: T?
  var val891: T?
  var val892: T?
  var val893: T?
  var val894: T?
  var val895: T?
  var val896: T?
  var val897: T?
  var val898: T?
  var val899: T?
  var val900: T?
  var val901: T?
  var val902: T?
  var val903: T?
  var val904: T?
  var val905: T?
  var val906: T?
  var val907: T?
  var val908: T?
  var val909: T?
  var val910: T?
  var val911: T?
  var val912: T?
  var val913: T?
  var val914: T?
  var val915: T?
  var val916: T?
  var val917: T?
  var val918: T?
  var val919: T?
  var val920: T?
  var val921: T?
  var val922: T?
  var val923: T?
  var val924: T?
  var val925: T?
  var val926: T?
  var val927: T?
  var val928: T?
  var val929: T?
  var val930: T?
  var val931: T?
  var val932: T?
  var val933: T?
  var val934: T?
  var val935: T?
  var val936: T?
  var val937: T?
  var val938: T?
  var val939: T?
  var val940: T?
  var val941: T?
  var val942: T?
  var val943: T?
  var val944: T?
  var val945: T?
  var val946: T?
  var val947: T?
  var val948: T?
  var val949: T?
  var val950: T?
  var val951: T?
  var val952: T?
  var val953: T?
  var val954: T?
  var val955: T?
  var val956: T?
  var val957: T?
  var val958: T?
  var val959: T?
  var val960: T?
  var val961: T?
  var val962: T?
  var val963: T?
  var val964: T?
  var val965: T?
  var val966: T?
  var val967: T?
  var val968: T?
  var val969: T?
  var val970: T?
  var val971: T?
  var val972: T?
  var val973: T?
  var val974: T?
  var val975: T?
  var val976: T?
  var val977: T?
  var val978: T?
  var val979: T?
  var val980: T?
  var val981: T?
  var val982: T?
  var val983: T?
  var val984: T?
  var val985: T?
  var val986: T?
  var val987: T?
  var val988: T?
  var val989: T?
  var val990: T?
  var val991: T?
  var val992: T?
  var val993: T?
  var val994: T?
  var val995: T?
  var val996: T?
  var val997: T?
  var val998: T?
  var val999: T?
  var val1000: T?
  var val1001: T?
  var val1002: T?
  var val1003: T?
  var val1004: T?
  var val1005: T?
  var val1006: T?
  var val1007: T?
  var val1008: T?
  var val1009: T?
  var val1010: T?
  var val1011: T?
  var val1012: T?
  var val1013: T?
  var val1014: T?
  var val1015: T?
  var val1016: T?
  var val1017: T?
  var val1018: T?
  var val1019: T?
  var val1020: T?
  var val1021: T?
  var val1022: T?
  var val1023: T?
}
class Sub<T>: Super<T> {}

struct S1000 {}
struct S1001 {}
struct S1002 {}
struct S1003 {}
struct S1004 {}
struct S1005 {}
struct S1006 {}
struct S1007 {}
struct S1008 {}
struct S1009 {}
struct S1010 {}
struct S1011 {}
struct S1012 {}
struct S1013 {}
struct S1014 {}
struct S1015 {}
struct S1016 {}
struct S1017 {}
struct S1018 {}
struct S1019 {}
struct S1020 {}
struct S1021 {}
struct S1022 {}
struct S1023 {}
struct S1024 {}
struct S1025 {}
struct S1026 {}
struct S1027 {}
struct S1028 {}
struct S1029 {}
struct S1030 {}
struct S1031 {}
struct S1032 {}
struct S1033 {}
struct S1034 {}
struct S1035 {}
struct S1036 {}
struct S1037 {}
struct S1038 {}
struct S1039 {}
struct S1040 {}
struct S1041 {}
struct S1042 {}
struct S1043 {}
struct S1044 {}
struct S1045 {}
struct S1046 {}
struct S1047 {}
struct S1048 {}
struct S1049 {}
struct S1050 {}
struct S1051 {}
struct S1052 {}
struct S1053 {}
struct S1054 {}
struct S1055 {}
struct S1056 {}
struct S1057 {}
struct S1058 {}
struct S1059 {}
struct S1060 {}
struct S1061 {}
struct S1062 {}
struct S1063 {}
struct S1064 {}
struct S1065 {}
struct S1066 {}
struct S1067 {}
struct S1068 {}
struct S1069 {}
struct S1070 {}
struct S1071 {}
struct S1072 {}
struct S1073 {}
struct S1074 {}
struct S1075 {}
struct S1076 {}
struct S1077 {}
struct S1078 {}
struct S1079 {}
struct S1080 {}
struct S1081 {}
struct S1082 {}
struct S1083 {}
struct S1084 {}
struct S1085 {}
struct S1086 {}
struct S1087 {}
struct S1088 {}
struct S1089 {}
struct S1090 {}
struct S1091 {}
struct S1092 {}
struct S1093 {}
struct S1094 {}
struct S1095 {}
struct S1096 {}
struct S1097 {}
struct S1098 {}
struct S1099 {}
struct S1100 {}
struct S1101 {}
struct S1102 {}
struct S1103 {}
struct S1104 {}
struct S1105 {}
struct S1106 {}
struct S1107 {}
struct S1108 {}
struct S1109 {}
struct S1110 {}
struct S1111 {}
struct S1112 {}
struct S1113 {}
struct S1114 {}
struct S1115 {}
struct S1116 {}
struct S1117 {}
struct S1118 {}
struct S1119 {}
struct S1120 {}
struct S1121 {}
struct S1122 {}
struct S1123 {}
struct S1124 {}
struct S1125 {}
struct S1126 {}
struct S1127 {}
struct S1128 {}
struct S1129 {}
struct S1130 {}
struct S1131 {}
struct S1132 {}
struct S1133 {}
struct S1134 {}
struct S1135 {}
struct S1136 {}
struct S1137 {}
struct S1138 {}
struct S1139 {}
struct S1140 {}
struct S1141 {}
struct S1142 {}
struct S1143 {}
struct S1144 {}
struct S1145 {}
struct S1146 {}
struct S1147 {}
struct S1148 {}
struct S1149 {}
struct S1150 {}
struct S1151 {}
struct S1152 {}
struct S1153 {}
struct S1154 {}
struct S1155 {}
struct S1156 {}
struct S1157 {}
struct S1158 {}
struct S1159 {}
struct S1160 {}
struct S1161 {}
struct S1162 {}
struct S1163 {}
struct S1164 {}
struct S1165 {}
struct S1166 {}
struct S1167 {}
struct S1168 {}
struct S1169 {}
struct S1170 {}
struct S1171 {}
struct S1172 {}
struct S1173 {}
struct S1174 {}
struct S1175 {}
struct S1176 {}
struct S1177 {}
struct S1178 {}
struct S1179 {}
struct S1180 {}
struct S1181 {}
struct S1182 {}
struct S1183 {}
struct S1184 {}
struct S1185 {}
struct S1186 {}
struct S1187 {}
struct S1188 {}
struct S1189 {}
struct S1190 {}
struct S1191 {}
struct S1192 {}
struct S1193 {}
struct S1194 {}
struct S1195 {}
struct S1196 {}
struct S1197 {}
struct S1198 {}
struct S1199 {}
struct S1200 {}
struct S1201 {}
struct S1202 {}
struct S1203 {}
struct S1204 {}
struct S1205 {}
struct S1206 {}
struct S1207 {}
struct S1208 {}
struct S1209 {}
struct S1210 {}
struct S1211 {}
struct S1212 {}
struct S1213 {}
struct S1214 {}
struct S1215 {}
struct S1216 {}
struct S1217 {}
struct S1218 {}
struct S1219 {}
struct S1220 {}
struct S1221 {}
struct S1222 {}
struct S1223 {}
struct S1224 {}
struct S1225 {}
struct S1226 {}
struct S1227 {}
struct S1228 {}
struct S1229 {}
struct S1230 {}
struct S1231 {}
struct S1232 {}
struct S1233 {}
struct S1234 {}
struct S1235 {}
struct S1236 {}
struct S1237 {}
struct S1238 {}
struct S1239 {}
struct S1240 {}
struct S1241 {}
struct S1242 {}
struct S1243 {}
struct S1244 {}
struct S1245 {}
struct S1246 {}
struct S1247 {}
struct S1248 {}
struct S1249 {}
struct S1250 {}
struct S1251 {}
struct S1252 {}
struct S1253 {}
struct S1254 {}
struct S1255 {}
struct S1256 {}
struct S1257 {}
struct S1258 {}
struct S1259 {}
struct S1260 {}
struct S1261 {}
struct S1262 {}
struct S1263 {}
struct S1264 {}
struct S1265 {}
struct S1266 {}
struct S1267 {}
struct S1268 {}
struct S1269 {}
struct S1270 {}
struct S1271 {}
struct S1272 {}
struct S1273 {}
struct S1274 {}
struct S1275 {}
struct S1276 {}
struct S1277 {}
struct S1278 {}
struct S1279 {}
struct S1280 {}
struct S1281 {}
struct S1282 {}
struct S1283 {}
struct S1284 {}
struct S1285 {}
struct S1286 {}
struct S1287 {}
struct S1288 {}
struct S1289 {}
struct S1290 {}
struct S1291 {}
struct S1292 {}
struct S1293 {}
struct S1294 {}
struct S1295 {}
struct S1296 {}
struct S1297 {}
struct S1298 {}
struct S1299 {}
struct S1300 {}
struct S1301 {}
struct S1302 {}
struct S1303 {}
struct S1304 {}
struct S1305 {}
struct S1306 {}
struct S1307 {}
struct S1308 {}
struct S1309 {}
struct S1310 {}
struct S1311 {}
struct S1312 {}
struct S1313 {}
struct S1314 {}
struct S1315 {}
struct S1316 {}
struct S1317 {}
struct S1318 {}
struct S1319 {}
struct S1320 {}
struct S1321 {}
struct S1322 {}
struct S1323 {}
struct S1324 {}
struct S1325 {}
struct S1326 {}
struct S1327 {}
struct S1328 {}
struct S1329 {}
struct S1330 {}
struct S1331 {}
struct S1332 {}
struct S1333 {}
struct S1334 {}
struct S1335 {}
struct S1336 {}
struct S1337 {}
struct S1338 {}
struct S1339 {}
struct S1340 {}
struct S1341 {}
struct S1342 {}
struct S1343 {}
struct S1344 {}
struct S1345 {}
struct S1346 {}
struct S1347 {}
struct S1348 {}
struct S1349 {}
struct S1350 {}
struct S1351 {}
struct S1352 {}
struct S1353 {}
struct S1354 {}
struct S1355 {}
struct S1356 {}
struct S1357 {}
struct S1358 {}
struct S1359 {}
struct S1360 {}
struct S1361 {}
struct S1362 {}
struct S1363 {}
struct S1364 {}
struct S1365 {}
struct S1366 {}
struct S1367 {}
struct S1368 {}
struct S1369 {}
struct S1370 {}
struct S1371 {}
struct S1372 {}
struct S1373 {}
struct S1374 {}
struct S1375 {}
struct S1376 {}
struct S1377 {}
struct S1378 {}
struct S1379 {}
struct S1380 {}
struct S1381 {}
struct S1382 {}
struct S1383 {}
struct S1384 {}
struct S1385 {}
struct S1386 {}
struct S1387 {}
struct S1388 {}
struct S1389 {}
struct S1390 {}
struct S1391 {}
struct S1392 {}
struct S1393 {}
struct S1394 {}
struct S1395 {}
struct S1396 {}
struct S1397 {}
struct S1398 {}
struct S1399 {}
struct S1400 {}
struct S1401 {}
struct S1402 {}
struct S1403 {}
struct S1404 {}
struct S1405 {}
struct S1406 {}
struct S1407 {}
struct S1408 {}
struct S1409 {}
struct S1410 {}
struct S1411 {}
struct S1412 {}
struct S1413 {}
struct S1414 {}
struct S1415 {}
struct S1416 {}
struct S1417 {}
struct S1418 {}
struct S1419 {}
struct S1420 {}
struct S1421 {}
struct S1422 {}
struct S1423 {}
struct S1424 {}
struct S1425 {}
struct S1426 {}
struct S1427 {}
struct S1428 {}
struct S1429 {}
struct S1430 {}
struct S1431 {}
struct S1432 {}
struct S1433 {}
struct S1434 {}
struct S1435 {}
struct S1436 {}
struct S1437 {}
struct S1438 {}
struct S1439 {}
struct S1440 {}
struct S1441 {}
struct S1442 {}
struct S1443 {}
struct S1444 {}
struct S1445 {}
struct S1446 {}
struct S1447 {}
struct S1448 {}
struct S1449 {}
struct S1450 {}
struct S1451 {}
struct S1452 {}
struct S1453 {}
struct S1454 {}
struct S1455 {}
struct S1456 {}
struct S1457 {}
struct S1458 {}
struct S1459 {}
struct S1460 {}
struct S1461 {}
struct S1462 {}
struct S1463 {}
struct S1464 {}
struct S1465 {}
struct S1466 {}
struct S1467 {}
struct S1468 {}
struct S1469 {}
struct S1470 {}
struct S1471 {}
struct S1472 {}
struct S1473 {}
struct S1474 {}
struct S1475 {}
struct S1476 {}
struct S1477 {}
struct S1478 {}
struct S1479 {}
struct S1480 {}
struct S1481 {}
struct S1482 {}
struct S1483 {}
struct S1484 {}
struct S1485 {}
struct S1486 {}
struct S1487 {}
struct S1488 {}
struct S1489 {}
struct S1490 {}
struct S1491 {}
struct S1492 {}
struct S1493 {}
struct S1494 {}
struct S1495 {}
struct S1496 {}
struct S1497 {}
struct S1498 {}
struct S1499 {}
struct S1500 {}
struct S1501 {}
struct S1502 {}
struct S1503 {}
struct S1504 {}
struct S1505 {}
struct S1506 {}
struct S1507 {}
struct S1508 {}
struct S1509 {}
struct S1510 {}
struct S1511 {}
struct S1512 {}
struct S1513 {}
struct S1514 {}
struct S1515 {}
struct S1516 {}
struct S1517 {}
struct S1518 {}
struct S1519 {}
struct S1520 {}
struct S1521 {}
struct S1522 {}
struct S1523 {}
struct S1524 {}
struct S1525 {}
struct S1526 {}
struct S1527 {}
struct S1528 {}
struct S1529 {}
struct S1530 {}
struct S1531 {}
struct S1532 {}
struct S1533 {}
struct S1534 {}
struct S1535 {}
struct S1536 {}
struct S1537 {}
struct S1538 {}
struct S1539 {}
struct S1540 {}
struct S1541 {}
struct S1542 {}
struct S1543 {}
struct S1544 {}
struct S1545 {}
struct S1546 {}
struct S1547 {}
struct S1548 {}
struct S1549 {}
struct S1550 {}
struct S1551 {}
struct S1552 {}
struct S1553 {}
struct S1554 {}
struct S1555 {}
struct S1556 {}
struct S1557 {}
struct S1558 {}
struct S1559 {}
struct S1560 {}
struct S1561 {}
struct S1562 {}
struct S1563 {}
struct S1564 {}
struct S1565 {}
struct S1566 {}
struct S1567 {}
struct S1568 {}
struct S1569 {}
struct S1570 {}
struct S1571 {}
struct S1572 {}
struct S1573 {}
struct S1574 {}
struct S1575 {}
struct S1576 {}
struct S1577 {}
struct S1578 {}
struct S1579 {}
struct S1580 {}
struct S1581 {}
struct S1582 {}
struct S1583 {}
struct S1584 {}
struct S1585 {}
struct S1586 {}
struct S1587 {}
struct S1588 {}
struct S1589 {}
struct S1590 {}
struct S1591 {}
struct S1592 {}
struct S1593 {}
struct S1594 {}
struct S1595 {}
struct S1596 {}
struct S1597 {}
struct S1598 {}
struct S1599 {}
struct S1600 {}
struct S1601 {}
struct S1602 {}
struct S1603 {}
struct S1604 {}
struct S1605 {}
struct S1606 {}
struct S1607 {}
struct S1608 {}
struct S1609 {}
struct S1610 {}
struct S1611 {}
struct S1612 {}
struct S1613 {}
struct S1614 {}
struct S1615 {}
struct S1616 {}
struct S1617 {}
struct S1618 {}
struct S1619 {}
struct S1620 {}
struct S1621 {}
struct S1622 {}
struct S1623 {}
struct S1624 {}
struct S1625 {}
struct S1626 {}
struct S1627 {}
struct S1628 {}
struct S1629 {}
struct S1630 {}
struct S1631 {}
struct S1632 {}
struct S1633 {}
struct S1634 {}
struct S1635 {}
struct S1636 {}
struct S1637 {}
struct S1638 {}
struct S1639 {}
struct S1640 {}
struct S1641 {}
struct S1642 {}
struct S1643 {}
struct S1644 {}
struct S1645 {}
struct S1646 {}
struct S1647 {}
struct S1648 {}
struct S1649 {}
struct S1650 {}
struct S1651 {}
struct S1652 {}
struct S1653 {}
struct S1654 {}
struct S1655 {}
struct S1656 {}
struct S1657 {}
struct S1658 {}
struct S1659 {}
struct S1660 {}
struct S1661 {}
struct S1662 {}
struct S1663 {}
struct S1664 {}
struct S1665 {}
struct S1666 {}
struct S1667 {}
struct S1668 {}
struct S1669 {}
struct S1670 {}
struct S1671 {}
struct S1672 {}
struct S1673 {}
struct S1674 {}
struct S1675 {}
struct S1676 {}
struct S1677 {}
struct S1678 {}
struct S1679 {}
struct S1680 {}
struct S1681 {}
struct S1682 {}
struct S1683 {}
struct S1684 {}
struct S1685 {}
struct S1686 {}
struct S1687 {}
struct S1688 {}
struct S1689 {}
struct S1690 {}
struct S1691 {}
struct S1692 {}
struct S1693 {}
struct S1694 {}
struct S1695 {}
struct S1696 {}
struct S1697 {}
struct S1698 {}
struct S1699 {}
struct S1700 {}
struct S1701 {}
struct S1702 {}
struct S1703 {}
struct S1704 {}
struct S1705 {}
struct S1706 {}
struct S1707 {}
struct S1708 {}
struct S1709 {}
struct S1710 {}
struct S1711 {}
struct S1712 {}
struct S1713 {}
struct S1714 {}
struct S1715 {}
struct S1716 {}
struct S1717 {}
struct S1718 {}
struct S1719 {}
struct S1720 {}
struct S1721 {}
struct S1722 {}
struct S1723 {}
struct S1724 {}
struct S1725 {}
struct S1726 {}
struct S1727 {}
struct S1728 {}
struct S1729 {}
struct S1730 {}
struct S1731 {}
struct S1732 {}
struct S1733 {}
struct S1734 {}
struct S1735 {}
struct S1736 {}
struct S1737 {}
struct S1738 {}
struct S1739 {}
struct S1740 {}
struct S1741 {}
struct S1742 {}
struct S1743 {}
struct S1744 {}
struct S1745 {}
struct S1746 {}
struct S1747 {}
struct S1748 {}
struct S1749 {}
struct S1750 {}
struct S1751 {}
struct S1752 {}
struct S1753 {}
struct S1754 {}
struct S1755 {}
struct S1756 {}
struct S1757 {}
struct S1758 {}
struct S1759 {}
struct S1760 {}
struct S1761 {}
struct S1762 {}
struct S1763 {}
struct S1764 {}
struct S1765 {}
struct S1766 {}
struct S1767 {}
struct S1768 {}
struct S1769 {}
struct S1770 {}
struct S1771 {}
struct S1772 {}
struct S1773 {}
struct S1774 {}
struct S1775 {}
struct S1776 {}
struct S1777 {}
struct S1778 {}
struct S1779 {}
struct S1780 {}
struct S1781 {}
struct S1782 {}
struct S1783 {}
struct S1784 {}
struct S1785 {}
struct S1786 {}
struct S1787 {}
struct S1788 {}
struct S1789 {}
struct S1790 {}
struct S1791 {}
struct S1792 {}
struct S1793 {}
struct S1794 {}
struct S1795 {}
struct S1796 {}
struct S1797 {}
struct S1798 {}
struct S1799 {}
struct S1800 {}
struct S1801 {}
struct S1802 {}
struct S1803 {}
struct S1804 {}
struct S1805 {}
struct S1806 {}
struct S1807 {}
struct S1808 {}
struct S1809 {}
struct S1810 {}
struct S1811 {}
struct S1812 {}
struct S1813 {}
struct S1814 {}
struct S1815 {}
struct S1816 {}
struct S1817 {}
struct S1818 {}
struct S1819 {}
struct S1820 {}
struct S1821 {}
struct S1822 {}
struct S1823 {}
struct S1824 {}
struct S1825 {}
struct S1826 {}
struct S1827 {}
struct S1828 {}
struct S1829 {}
struct S1830 {}
struct S1831 {}
struct S1832 {}
struct S1833 {}
struct S1834 {}
struct S1835 {}
struct S1836 {}
struct S1837 {}
struct S1838 {}
struct S1839 {}
struct S1840 {}
struct S1841 {}
struct S1842 {}
struct S1843 {}
struct S1844 {}
struct S1845 {}
struct S1846 {}
struct S1847 {}
struct S1848 {}
struct S1849 {}
struct S1850 {}
struct S1851 {}
struct S1852 {}
struct S1853 {}
struct S1854 {}
struct S1855 {}
struct S1856 {}
struct S1857 {}
struct S1858 {}
struct S1859 {}
struct S1860 {}
struct S1861 {}
struct S1862 {}
struct S1863 {}
struct S1864 {}
struct S1865 {}
struct S1866 {}
struct S1867 {}
struct S1868 {}
struct S1869 {}
struct S1870 {}
struct S1871 {}
struct S1872 {}
struct S1873 {}
struct S1874 {}
struct S1875 {}
struct S1876 {}
struct S1877 {}
struct S1878 {}
struct S1879 {}
struct S1880 {}
struct S1881 {}
struct S1882 {}
struct S1883 {}
struct S1884 {}
struct S1885 {}
struct S1886 {}
struct S1887 {}
struct S1888 {}
struct S1889 {}
struct S1890 {}
struct S1891 {}
struct S1892 {}
struct S1893 {}
struct S1894 {}
struct S1895 {}
struct S1896 {}
struct S1897 {}
struct S1898 {}
struct S1899 {}
struct S1900 {}
struct S1901 {}
struct S1902 {}
struct S1903 {}
struct S1904 {}
struct S1905 {}
struct S1906 {}
struct S1907 {}
struct S1908 {}
struct S1909 {}
struct S1910 {}
struct S1911 {}
struct S1912 {}
struct S1913 {}
struct S1914 {}
struct S1915 {}
struct S1916 {}
struct S1917 {}
struct S1918 {}
struct S1919 {}
struct S1920 {}
struct S1921 {}
struct S1922 {}
struct S1923 {}
struct S1924 {}
struct S1925 {}
struct S1926 {}
struct S1927 {}
struct S1928 {}
struct S1929 {}
struct S1930 {}
struct S1931 {}
struct S1932 {}
struct S1933 {}
struct S1934 {}
struct S1935 {}
struct S1936 {}
struct S1937 {}
struct S1938 {}
struct S1939 {}
struct S1940 {}
struct S1941 {}
struct S1942 {}
struct S1943 {}
struct S1944 {}
struct S1945 {}
struct S1946 {}
struct S1947 {}
struct S1948 {}
struct S1949 {}
struct S1950 {}
struct S1951 {}
struct S1952 {}
struct S1953 {}
struct S1954 {}
struct S1955 {}
struct S1956 {}
struct S1957 {}
struct S1958 {}
struct S1959 {}
struct S1960 {}
struct S1961 {}
struct S1962 {}
struct S1963 {}
struct S1964 {}
struct S1965 {}
struct S1966 {}
struct S1967 {}
struct S1968 {}
struct S1969 {}
struct S1970 {}
struct S1971 {}
struct S1972 {}
struct S1973 {}
struct S1974 {}
struct S1975 {}
struct S1976 {}
struct S1977 {}
struct S1978 {}
struct S1979 {}
struct S1980 {}
struct S1981 {}
struct S1982 {}
struct S1983 {}
struct S1984 {}
struct S1985 {}
struct S1986 {}
struct S1987 {}
struct S1988 {}
struct S1989 {}
struct S1990 {}
struct S1991 {}
struct S1992 {}
struct S1993 {}
struct S1994 {}
struct S1995 {}
struct S1996 {}
struct S1997 {}
struct S1998 {}
struct S1999 {}


ConcurrentTypeByNameTests.test("concurrent _typeByName") {
  if #available(SwiftStdlib 5.1, *) {
    func printTypeByName() {
      for n in 1000..<2000 {
        let name = "4main14GenericWrapperCyAA3SubCyAA5S\(n)VGG"
        print(String(describing: _typeByName(name)! as Any))
      }
    }

    let (createRet1, tid1) = _stdlib_thread_create_block(printTypeByName, ())
    let (createRet2, tid2) = _stdlib_thread_create_block(printTypeByName, ())
    expectEqual(0, createRet1)
    expectEqual(0, createRet2)
    _ = _stdlib_thread_join(tid1!, Void.self)
    _ = _stdlib_thread_join(tid2!, Void.self)
  }
}

runAllTests()
