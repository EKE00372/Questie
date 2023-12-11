---@class QuestieWotlkItemFixes
local QuestieWotlkItemFixes = QuestieLoader:CreateModule("QuestieWotlkItemFixes")
local _QuestieWotlkItemFixes = {}

---@type QuestieDB
local QuestieDB = QuestieLoader:ImportModule("QuestieDB")

-- Further information on how to use this can be found at the wiki
-- https://github.com/Questie/Questie/wiki/Corrections

function QuestieWotlkItemFixes:Load()
    _QuestieWotlkItemFixes:InsertMissingItemIds()

    local itemKeys = QuestieDB.itemKeys
    local itemClasses = QuestieDB.itemClasses

    return {
        [5085] = {
            [itemKeys.npcDrops] = {3258,3260,3261,3263},
        },
        [5233] = {
            [itemKeys.npcDrops] = {1020,1021,1022,1023},
        },
        [7909] = {
            [itemKeys.npcDrops] = {92,429,597,660,667,669,670,671,672,674,675,676,677,678,679,680,684,686,687,689,690,691,696,709,710,728,729,730,731,741,742,743,744,745,746,747,750,751,752,757,759,760,761,762,764,765,766,767,768,769,772,780,781,782,783,784,813,814,818,854,858,861,862,871,873,875,877,879,920,922,939,942,950,978,979,1713,1784,1785,1787,1788,1789,1791,1793,1794,1795,1796,1800,1801,1802,1804,1805,1806,1808,1809,1812,1813,1815,1817,1821,1822,1824,1826,1827,1831,1832,1833,1834,1835,1836,1838,1839,1840,1841,1843,1845,1846,1851,1852,1883,1884,1907,2089,2242,2243,2245,2246,2247,2248,2249,2252,2253,2254,2255,2256,2257,2258,2287,2306,2318,2320,2347,2356,2368,2376,2377,2408,2415,2416,2417,2420,2421,2422,2423,2431,2433,2434,2447,2453,2473,2474,2505,2521,2522,2530,2534,2535,2536,2537,2541,2544,2545,2547,2548,2549,2550,2551,2554,2555,2557,2558,2561,2565,2566,2567,2569,2570,2571,2572,2573,2574,2580,2583,2584,2585,2588,2590,2591,2592,2595,2596,2597,2599,2606,2607,2611,2612,2624,2635,2636,2639,2640,2641,2642,2643,2644,2645,2646,2647,2648,2649,2650,2651,2652,2653,2654,2655,2656,2657,2658,2659,2680,2681,2686,2691,2692,2693,2694,2701,2715,2716,2717,2718,2719,2720,2723,2725,2726,2727,2728,2729,2730,2731,2732,2733,2734,2735,2736,2738,2739,2740,2742,2743,2745,2752,2754,2755,2757,2759,2760,2761,2762,2763,2764,2765,2773,2780,2781,2782,2783,2791,2793,2794,2829,2830,2831,2850,2892,2893,2894,2906,2907,2919,2923,2924,2925,2926,2927,2928,2929,2931,2932,2944,2945,3094,3715,4026,4093,4096,4109,4117,4119,4124,4130,4131,4133,4260,4286,4289,4290,4292,4294,4295,4297,4298,4299,4300,4301,4302,4303,4323,4324,4328,4329,4331,4334,4339,4341,4342,4343,4344,4345,4352,4356,4357,4358,4359,4360,4361,4362,4363,4366,4368,4370,4371,4378,4379,4390,4391,4393,4396,4397,4398,4399,4402,4405,4412,4414,4415,4457,4458,4459,4460,4461,4465,4466,4467,4468,4469,4472,4474,4475,4476,4493,4494,4504,4505,4506,4539,4540,4623,4642,4644,4645,4652,4654,4655,4656,4657,4658,4659,4660,4662,4668,4676,4677,4678,4679,4680,4681,4682,4684,4685,4686,4687,4690,4693,4694,4695,4699,4701,4702,4715,4716,4719,4723,4727,4729,4841,4844,4845,4846,4847,4848,4849,4850,4851,4852,4853,4855,4856,4857,4860,4861,4863,4872,5046,5057,5184,5224,5225,5226,5228,5229,5232,5234,5235,5236,5237,5238,5239,5240,5241,5243,5244,5245,5246,5247,5249,5251,5253,5254,5255,5256,5258,5259,5260,5261,5262,5263,5267,5268,5269,5270,5271,5272,5273,5274,5276,5277,5278,5280,5283,5286,5287,5288,5291,5292,5293,5295,5296,5297,5299,5300,5304,5305,5306,5307,5308,5312,5314,5317,5319,5320,5327,5328,5331,5332,5333,5334,5335,5336,5337,5349,5356,5357,5358,5359,5360,5361,5362,5363,5364,5366,5401,5402,5419,5420,5421,5422,5423,5424,5425,5426,5427,5428,5429,5430,5431,5432,5441,5450,5451,5452,5453,5454,5455,5456,5457,5458,5459,5460,5461,5462,5465,5466,5469,5471,5472,5473,5474,5475,5481,5485,5490,5601,5615,5616,5617,5618,5622,5623,5643,5645,5646,5647,5648,5649,5650,5708,5718,5760,5771,5833,5839,5840,5843,5844,5846,5850,5852,5853,5854,5855,5856,5857,5858,5860,5861,5862,5881,5974,5975,5976,5977,5978,5979,5981,5982,5983,5984,5985,5988,5990,5991,5992,5993,5996,5997,5998,5999,6000,6004,6005,6006,6007,6008,6009,6010,6011,6068,6069,6070,6116,6117,6118,6125,6126,6127,6129,6130,6131,6135,6136,6137,6138,6140,6143,6144,6146,6147,6148,6184,6185,6186,6187,6188,6189,6190,6193,6194,6195,6196,6198,6199,6200,6201,6202,6239,6347,6348,6349,6350,6351,6352,6369,6370,6371,6372,6375,6377,6378,6379,6380,6498,6499,6500,6501,6502,6503,6504,6505,6506,6507,6508,6509,6510,6511,6512,6513,6514,6516,6517,6518,6519,6520,6521,6527,6551,6552,6553,6554,6555,6556,6557,6559,6560,6585,6646,6647,6649,6733,7011,7012,7022,7023,7025,7026,7027,7028,7029,7030,7031,7032,7033,7034,7035,7036,7037,7038,7039,7040,7041,7042,7043,7044,7045,7046,7047,7048,7049,7055,7068,7069,7070,7071,7072,7078,7086,7091,7092,7093,7097,7098,7099,7100,7101,7105,7106,7107,7108,7109,7110,7111,7112,7113,7114,7115,7118,7120,7125,7126,7132,7135,7136,7138,7139,7149,7153,7154,7155,7156,7157,7158,7246,7247,7268,7269,7272,7274,7276,7286,7290,7309,7320,7321,7328,7329,7334,7335,7337,7340,7341,7342,7344,7345,7346,7347,7348,7351,7352,7353,7369,7370,7371,7372,7376,7379,7396,7397,7405,7428,7429,7430,7431,7432,7433,7434,7435,7436,7437,7438,7439,7440,7441,7442,7443,7444,7445,7446,7447,7448,7449,7450,7451,7452,7453,7454,7455,7456,7457,7458,7459,7460,7461,7462,7463,7523,7524,7584,7604,7605,7606,7608,7664,7665,7666,7667,7668,7669,7670,7671,7725,7726,7727,7728,7734,7789,7795,7796,7797,7803,7805,7808,7809,7846,7847,7848,7855,7856,7857,7858,7864,7883,7885,7886,7895,7899,7901,7902,7977,7995,7996,8075,8095,8120,8136,8138,8196,8197,8198,8199,8201,8208,8216,8217,8278,8279,8282,8283,8298,8299,8304,8311,8318,8319,8336,8337,8384,8391,8408,8419,8438,8442,8447,8497,8504,8519,8520,8521,8522,8523,8524,8525,8526,8527,8528,8529,8530,8531,8532,8534,8535,8538,8539,8540,8541,8542,8543,8544,8545,8546,8547,8548,8550,8551,8553,8555,8556,8557,8558,8560,8561,8562,8563,8564,8565,8566,8578,8596,8597,8598,8600,8601,8602,8603,8605,8606,8607,8636,8637,8667,8675,8716,8717,8718,8759,8761,8762,8763,8764,8766,8837,8889,8890,8891,8892,8893,8894,8895,8896,8897,8898,8899,8900,8902,8903,8904,8905,8906,8907,8908,8909,8910,8911,8912,8913,8914,8915,8916,8917,8920,8921,8922,8925,8926,8927,8928,8932,8933,8956,8957,8958,8959,8960,8961,8976,8977,8981,9026,9043,9044,9045,9046,9096,9097,9098,9162,9163,9164,9165,9166,9167,9176,9197,9198,9199,9200,9201,9216,9239,9240,9241,9257,9258,9259,9260,9261,9262,9263,9264,9265,9266,9267,9268,9269,9318,9376,9396,9397,9398,9416,9437,9438,9439,9441,9443,9445,9447,9448,9449,9450,9451,9452,9454,9462,9464,9476,9477,9516,9517,9518,9522,9541,9545,9547,9554,9583,9604,9622,9677,9678,9680,9681,9683,9684,9690,9691,9692,9693,9694,9695,9696,9697,9698,9701,9716,9717,9817,9818,9819,9860,9861,9862,9877,9878,9879,9916,9956,10040,10043,10078,10081,10082,10083,10119,10177,10196,10197,10198,10199,10200,10202,10221,10258,10316,10317,10318,10319,10366,10371,10372,10374,10375,10381,10382,10384,10385,10390,10391,10394,10398,10399,10400,10405,10406,10407,10408,10409,10411,10412,10413,10414,10416,10417,10418,10419,10420,10421,10422,10423,10424,10425,10426,10442,10447,10463,10464,10469,10470,10471,10472,10476,10477,10478,10480,10481,10485,10486,10487,10488,10489,10491,10495,10497,10498,10499,10500,10580,10605,10608,10648,10659,10660,10661,10662,10663,10664,10678,10680,10681,10683,10737,10738,10741,10742,10762,10801,10802,10806,10807,10814,10816,10828,10916,10919,10946,10981,10982,10983,10986,10987,10990,10991,10996,11032,11043,11142,11257,11284,11290,11291,11338,11339,11340,11346,11350,11351,11352,11353,11355,11356,11357,11359,11360,11361,11365,11368,11370,11371,11372,11387,11388,11391,11440,11441,11442,11443,11444,11445,11448,11450,11451,11452,11453,11454,11455,11456,11457,11458,11459,11461,11462,11464,11465,11469,11470,11471,11472,11473,11475,11476,11477,11480,11483,11484,11516,11551,11552,11553,11559,11561,11577,11582,11598,11600,11602,11603,11604,11605,11611,11613,11657,11658,11659,11661,11662,11663,11664,11665,11666,11667,11668,11673,11675,11677,11678,11679,11685,11686,11687,11688,11698,11721,11722,11723,11724,11725,11726,11727,11728,11729,11730,11731,11732,11733,11734,11735,11736,11737,11738,11739,11740,11741,11744,11745,11746,11747,11777,11778,11781,11782,11783,11784,11785,11786,11787,11788,11789,11790,11791,11792,11793,11794,11830,11831,11837,11838,11839,11840,11873,11878,11880,11881,11882,11883,11885,11887,11896,11897,11898,11937,11947,11949,12046,12047,12048,12050,12051,12052,12053,12076,12100,12101,12119,12121,12122,12127,12128,12156,12157,12159,12178,12179,12199,12206,12207,12216,12217,12218,12219,12220,12221,12222,12223,12224,12248,12250,12262,12263,12322,12337,12339,12377,12378,12379,12380,12387,12396,12397,12418,12457,12459,12460,12461,12463,12464,12465,12467,12468,12474,12475,12476,12477,12478,12479,12496,12497,12498,12800,12801,12802,12803,12865,12899,12900,13021,13022,13036,13078,13087,13097,13136,13137,13138,13139,13140,13141,13142,13143,13144,13145,13146,13147,13152,13153,13154,13160,13176,13179,13180,13181,13196,13197,13218,13276,13279,13284,13285,13296,13297,13298,13299,13300,13301,13316,13317,13318,13319,13320,13323,13324,13325,13326,13327,13328,13329,13330,13331,13332,13333,13334,13335,13337,13358,13359,13377,13396,13397,13421,13422,13424,13425,13426,13427,13428,13437,13438,13439,13440,13441,13442,13443,13447,13448,13527,13530,13531,13534,13539,13548,13550,13576,13577,13599,13617,13696,13718,13738,13739,13740,13741,13742,13797,13896,13957,13958,13959,13996,14123,14186,14187,14188,14282,14283,14303,14340,14351,14398,14399,14400,14445,14446,14454,14455,14457,14458,14460,14461,14462,14464,14474,14475,14478,14479,14518,14519,14520,14523,14532,14564,14603,14638,14639,14640,14661,14684,14695,14750,14821,14825,14880,14882,14883,15043,15111,15201,15202,15203,15204,15205,15206,15207,15208,15209,15211,15212,15213,15220,15307,15542,15685,15692,16158,16368,16446,16449,16453,17115,17236,17878,18338,23592,23595,23701,24477,24818,24819,28557,28608,28609,28610,28611,28769,28819,28846,28936,28939,28940,28941,28942,28946,29000,29076},
        },
        [9594] = {
            [itemKeys.npcDrops] = {5268,5286,},
        },
        [13506] = {
            [itemKeys.name] = 'Potion of Petrification',
        },
        [14047] = {
            [itemKeys.npcDrops] = {603,868,1410,1494,1783,1784,1785,1787,1788,1789,1791,1793,1794,1795,1796,1800,1801,1802,1804,1805,1826,1827,1831,1832,1833,1834,1835,1836,1837,1838,1839,1840,1841,1842,1843,1844,1845,1846,1847,1848,1850,1852,1883,1884,1885,4472,4474,4475,4476,4493,4494,5355,5977,5978,5981,6004,6005,6006,6007,6008,6009,6011,6143,6144,6189,6198,6199,6200,6201,6202,6647,6652,7025,7026,7027,7028,7029,7033,7034,7035,7036,7037,7038,7068,7069,7070,7071,7072,7075,7107,7108,7110,7111,7112,7114,7115,7118,7120,7156,7157,7158,7369,7370,7371,7372,7379,7438,7439,7440,7441,7442,7461,7463,7523,7524,7664,7665,7666,7667,7668,7669,7670,7671,7728,7734,7735,7851,8297,8298,8304,8523,8524,8525,8526,8527,8528,8529,8530,8531,8532,8538,8539,8540,8541,8542,8543,8544,8545,8546,8547,8548,8550,8551,8553,8560,8561,8562,8563,8564,8565,8716,8717,8889,8890,8891,8892,8893,8894,8895,8896,8897,8898,8899,8900,8902,8903,8904,8912,8913,8914,8915,8916,8920,8924,8929,8977,8978,8979,8980,8983,9018,9019,9024,9027,9028,9029,9030,9033,9041,9043,9044,9045,9046,9056,9097,9098,9176,9196,9197,9198,9199,9200,9201,9216,9217,9218,9219,9236,9237,9239,9240,9241,9257,9258,9259,9260,9261,9262,9263,9264,9265,9266,9267,9268,9269,9319,9398,9437,9438,9439,9441,9442,9443,9445,9447,9448,9449,9450,9451,9452,9454,9462,9464,9476,9499,9516,9517,9518,9520,9522,9537,9541,9543,9545,9547,9554,9583,9596,9602,9604,9605,9677,9678,9680,9681,9692,9693,9716,9717,9718,9736,9817,9818,9819,9860,9861,9862,9877,9956,10043,10076,10078,10199,10201,10263,10316,10317,10318,10319,10381,10382,10384,10385,10390,10391,10393,10394,10398,10399,10400,10405,10406,10407,10411,10414,10416,10417,10418,10419,10420,10421,10422,10423,10424,10425,10426,10429,10432,10433,10435,10436,10438,10440,10463,10464,10469,10470,10471,10472,10475,10476,10477,10478,10479,10480,10481,10485,10486,10487,10488,10489,10491,10495,10497,10498,10499,10500,10502,10503,10504,10505,10507,10508,10509,10516,10558,10580,10584,10605,10608,10648,10680,10681,10742,10762,10801,10808,10811,10813,10816,10817,10821,10822,10823,10824,10826,10827,10828,10899,10901,10916,10919,10946,10983,10984,10986,10987,10991,10996,10997,11032,11043,11058,11082,11120,11121,11143,11196,11257,11261,11284,11290,11291,11338,11339,11340,11346,11350,11351,11352,11353,11355,11356,11360,11361,11368,11383,11387,11388,11390,11391,11440,11441,11442,11443,11444,11445,11448,11450,11451,11452,11453,11454,11455,11456,11457,11467,11469,11470,11471,11472,11473,11475,11476,11477,11486,11487,11488,11490,11492,11501,11516,11552,11553,11582,11598,11600,11602,11603,11604,11605,11611,11613,11622,11657,11675,11677,11678,11679,11830,11831,11837,11838,11839,11840,11873,11878,11880,11881,11882,11883,11887,11898,11947,11949,12047,12048,12050,12051,12052,12053,12127,12128,12156,12157,12158,12159,12178,12179,12199,12248,12250,12261,12262,12263,12322,12337,12339,12377,12378,12379,12380,12396,12457,12459,12739,13078,13079,13080,13081,13086,13087,13088,13089,13096,13097,13098,13099,13137,13138,13139,13140,13143,13144,13145,13146,13147,13149,13150,13151,13152,13153,13154,13155,13176,13179,13180,13181,13218,13236,13257,13276,13284,13296,13297,13298,13299,13300,13316,13317,13318,13319,13320,13324,13325,13326,13327,13328,13329,13330,13331,13332,13333,13334,13335,13336,13337,13356,13357,13358,13359,13377,13378,13396,13397,13416,13419,13421,13422,13424,13425,13426,13427,13428,13437,13438,13439,13440,13441,13442,13443,13446,13447,13448,13449,13524,13525,13526,13527,13528,13529,13530,13531,13534,13535,13536,13537,13538,13539,13540,13541,13542,13543,13544,13545,13546,13547,13548,13549,13550,13551,13552,13553,13554,13555,13556,13557,13576,13577,13597,13598,13617,13776,13797,13798,13840,13841,13956,13957,13958,13996,14185,14186,14187,14188,14284,14285,14321,14322,14323,14324,14325,14326,14327,14340,14342,14349,14351,14354,14479,14506,14516,14518,14519,14520,14521,14532,14564,14684,14690,14695,14750,14821,14825,14861,14880,14882,14883,15111,15162,15201,15202,15213,15541,15542,15591,16042,16157,16158,16368,16519,16769,16772,16805,16810,16846,16847,16867,16870,16871,16873,16876,16878,16904,16905,16906,16907,16911,16912,16925,16937,16938,16946,16947,16951,16954,16960,16964,16966,16967,16977,16978,17057,17058,17084,17088,17134,17135,17139,17141,17142,17143,17259,17264,17269,17270,17271,17281,17309,17370,17371,17395,17397,17398,17400,17414,17429,17455,17478,17491,17517,17624,17626,17728,17729,17730,17771,17878,17962,17963,17964,18048,18049,18050,18051,18052,18053,18054,18055,18057,18058,18077,18079,18080,18113,18114,18115,18116,18117,18118,18119,18120,18121,18122,18123,18159,18160,18192,18256,18260,18309,18311,18312,18313,18315,18331,18449,18450,18451,18452,18453,18454,18455,18456,18457,18460,18493,18495,18498,18499,18500,18501,18503,18524,18533,18539,18540,18541,18548,18554,18556,18557,18558,18559,18583,18595,18603,18604,18608,18609,18610,18611,18612,18615,18617,18618,18619,18677,18679,18681,18685,18686,18702,18718,18720,18827,18952,18974,18976,18977,18981,18992,19174,19191,19192,19263,19264,19295,19298,19312,19354,19408,19410,19411,19413,19414,19415,19422,19424,19434,19442,19443,19457,19477,19701,19732,19902,19903,19904,20115,20157,20177,20179,20180,20181,20255,20256,20258,20259,20260,20261,20270,20298,20300,20301,20302,20309,20310,20311,20312,20313,20321,20322,20442,20443,20444,20445,20680,20798,20887,21198,21200,21368,21370,21405,21636,21660,21661,21662,21902,21907,21963,22374,22378,22387,22388,24818,24819,28529,28530,28594,28608,28609,28610,28611,28654,28683,28768,28769,28846,28936,28939,28940,29000,29001,29076},
        },
        [16251] = {
            [itemKeys.npcDrops] = {1788,1789,1795,1796,1802,1804,1805,1808,1816,1827,1832,1834,1839,1846,1852,1883,1884,4364,4366,4472,4493,4494,5320,6499,6560,7025,7026,7027,7028,7029,7032,7042,7043,7149,7370,7371,7379,7428,7429,7430,7433,7434,7435,7436,7437,7438,7439,7440,7443,7445,7446,7448,7449,7451,7452,7453,7454,7456,7458,7459,7460,7461,7462,7463,7524,7671,8520,8521,8522,8525,8527,8528,8529,8531,8532,8534,8535,8538,8539,8541,8542,8543,8544,8545,8546,8548,8550,8551,8558,8561,8562,8563,8564,8565,8597,8598,8601,8602,8605,8606,8716,8717,8902,8903,8904,8907,8908,8911,8920,9096,9197,9198,9200,9216,9239,9240,9241,9258,9259,9260,9261,9262,9263,9264,9265,9266,9267,9268,9269,9439,9448,9450,9451,9462,9516,9517,9583,9678,9684,9692,9693,9696,9701,9716,9717,9817,9818,9819,10083,10119,10177,10201,10258,10316,10317,10318,10319,10366,10371,10372,10374,10375,10381,10382,10385,10390,10391,10394,10398,10399,10400,10405,10406,10407,10408,10409,10411,10412,10413,10414,10416,10417,10418,10419,10420,10421,10422,10423,10424,10425,10426,10442,10447,10463,10464,10469,10470,10471,10476,10477,10478,10480,10481,10485,10486,10487,10488,10489,10491,10495,10498,10499,10500,10608,10660,10661,10664,10678,10680,10681,10683,10717,10738,10742,10762,10807,10814,10916,10996,11032,11043,11257,11284,11338,11339,11340,11350,11351,11352,11353,11356,11357,11359,11361,11368,11370,11371,11372,11387,11388,11441,11444,11448,11450,11452,11456,11457,11458,11459,11461,11464,11469,11471,11473,11475,11477,11480,11483,11484,11551,11582,11598,11611,11657,11658,11659,11661,11662,11664,11665,11666,11667,11668,11673,11698,11721,11722,11723,11724,11725,11726,11727,11728,11729,11730,11731,11732,11733,11734,11736,11737,11738,11739,11740,11741,11744,11746,11830,11831,11838,11873,11878,11880,11881,11882,11883,11898,11947,11949,12050,12051,12053,12076,12100,12101,12119,12127,12128,12179,12199,12339,12377,12378,12379,12380,12397,12457,12459,12460,12461,12463,12464,12465,12467,12468,12474,12498,12800,12802,12900,13021,13036,13136,13139,13140,13144,13145,13146,13152,13153,13154,13160,13197,13276,13285,13296,13299,13300,13319,13320,13327,13328,13330,13331,13334,13336,13358,13359,13421,13422,13424,13425,13440,13447,13531,13576,13617,13797,13798,13996,14186,14303,14351,14398,14399,14400,14455,14458,14532,14750,14821,14825,14880,14882,15043,15111,15201,15206,15207,15208,15209,15211,15212,15213,15220,15229,15230,15233,15235,15236,15240,15246,15247,15250,15252,15262,15264,15277,15307,15312,15320,15323,15324,15325,15327,15335,15336,15338,15343,15355,15387,15390,15391,15392,16368,16452,16453,18338,28936,28946,29001},
        },
        [18950] = {
            [itemKeys.npcDrops] = {14636},
        },
        [19236] = {
            [itemKeys.npcDrops] = {1805,1827,1834,7461,7463,8889,8890,8891,8892,8893,8894,8895,8898,8899,8903,8912,8914,9043,9044,9045,9046,9097,9098,9197,9198,9199,9200,9201,9216,9239,9240,9241,9257,9258,9259,9261,9262,9263,9265,9266,9267,9268,9441,9447,9448,9449,9450,9451,9452,9583,9678,9692,9693,9716,9717,9817,9818,9819,10316,10317,10318,10319,10381,10382,10384,10385,10394,10398,10399,10400,10405,10406,10407,10414,10416,10417,10418,10419,10420,10421,10422,10423,10424,10425,10426,10463,10464,10469,10470,10471,10476,10477,10478,10486,10487,10488,10489,10491,10495,10498,10500,10608,10680,10681,10742,10762,10983,10987,11032,11043,11257,11284,11338,11339,11340,11346,11350,11351,11352,11353,11356,11440,11441,11442,11443,11444,11445,11448,11450,11453,11454,11455,11456,11457,11469,11471,11472,11473,11582,11830,11831,11898,12051,12052,12128,12457,12459,13139,13145,13146,13147,13153,13154,13299,13320,13448,13576,13577,13996,14684,14695,14750,14825,14883,15551,16389,16408,16425,16459,16470,16471,16481,16482,16540,16544,16594,17427,17517,17670,18057,18495,19191,19312,19389,19712,20302,20576,20579,20588,20857,20883,21528,21585,21615,24818,24819},
        },
        [21211] = {
            [itemKeys.npcDrops] = {},
        },
        [22373] = {
            [itemKeys.npcDrops] = {16157,16158,16368,16446,16448,16449,16452,16453},
        },
        [22374] = {
            [itemKeys.npcDrops] = {16158,16368,16446,16448,16449,16452,16453},
        },
        [22375] = {
            [itemKeys.npcDrops] = {16157,16158,16368,16446,16448,16449,16452,16453},
        },
        [22376] = {
            [itemKeys.npcDrops] = {16157,16158,16368,16446,16448,16449,16452,16453},
        },
        [22621] = {
            [itemKeys.name] = 'Craftsman\'s Writ - Potion of Petrification',
        },
        [23055] = {
            [itemKeys.npcDrops] = {16157,16158,16368,16446,16448,16449,16452,16453},
        },
        [23069] = {
            [itemKeys.npcDrops] = {16158,16368,16446,16449,16453},
        },
        [23226] = {
            [itemKeys.npcDrops] = {16158,16368,16446,16449,16452,16453},
        },
        [23238] = {
            [itemKeys.npcDrops] = {16158,16368,16446,16449,16452,16453},
        },
        [23361] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [23417] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [23645] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [23750] = {
            [itemKeys.objectDrops] = {202275},
        },
        [23792] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [23818] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [24156] = {
            [itemKeys.npcDrops] = {17845},
        },
        [24335] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [24355] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [24467] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [24501] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [24502] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [25465] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [25539] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [25552] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [25555] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [25658] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [32906] = {
            [itemKeys.npcDrops] = {23487},
        },
        [33084] = {
            [itemKeys.npcDrops] = {},
        },
        [33096] = {
            [itemKeys.class] = 12,
            [itemKeys.objectDrops] = {186189},
        },
        [33109] = {
            [itemKeys.npcDrops] = {},
        },
        [33187] = {
            [itemKeys.npcDrops] = {},
        },
        [33188] = {
            [itemKeys.npcDrops] = {},
        },
        [33123] = {
            [itemKeys.npcDrops] = {},
        },
        [33284] = {
            [itemKeys.class] = 12,
        },
        [33290] = {
            [itemKeys.class] = 12,
        },
        [33330] = {
            [itemKeys.npcDrops] = {23954},
        },
        [33348] = {
            [itemKeys.npcDrops] = {},
        },
        [33355] = {
            [itemKeys.npcDrops] = {},
        },
        [33558] = {
            [itemKeys.npcDrops] = {23967},
        },
        [33634] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [34070] = {
            [itemKeys.npcDrops] = {},
        },
        [34076] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [34112] = {
            [itemKeys.npcDrops] = {24746},
        },
        [34115] = {
            [itemKeys.npcDrops] = {24539},
        },
        [34116] = {
            [itemKeys.npcDrops] = {24788},
        },
        [34120] = {
            [itemKeys.npcDrops] = {24747},
        },
        [34123] = {
            [itemKeys.objectDrops] = {186946},
        },
        [34127] = {
            [itemKeys.objectDrops] = {186949},
        },
        [34133] = {
            [itemKeys.npcDrops] = {},
        },
        [34135] = {
            [itemKeys.npcDrops] = {24040},
        },
        [34468] = {
            [itemKeys.npcDrops] = {24914},
        },
        [34623] = {
            [itemKeys.npcDrops] = {25226},
        },
        [34709] = {
            [itemKeys.npcDrops] = {},
        },
        [34713] = {
            [itemKeys.npcDrops] = {},
        },
        [34714] = {
            [itemKeys.npcDrops] = {},
        },
        [34774] = {
            [itemKeys.npcDrops] = {},
        },
        [34786] = { -- #4681
            [itemKeys.npcDrops] = {},
        },
        [34787] = {
            [itemKeys.npcDrops] = {},
        },
        [34842] = {
            [itemKeys.npcDrops] = {25342,25343},
        },
        [34909] = {
            [itemKeys.npcDrops] = {},
        },
        [34972] = {
            [itemKeys.npcDrops] = {},
        },
        [34974] = {
            [itemKeys.npcDrops] = {},
        },
        [35123] = {
            [itemKeys.npcDrops] = {},
        },
        [35126] = {
            [itemKeys.npcDrops] = {25841},
        },
        [35234] = {
            [itemKeys.npcDrops] = {},
        },
        [35276] = {
            [itemKeys.npcDrops] = {25841},
        },
        [35490] = {
            [itemKeys.npcDrops] = {26792},
        },
        [35492] = {
            [itemKeys.npcDrops] = {},
        },
        [35586] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [35685] = {
            [itemKeys.npcDrops] = {},
        },
        [35692] = {
            [itemKeys.npcDrops] = {26200},
        },
        [35701] = {
            [itemKeys.npcDrops] = {26219},
        },
        [35704] = {
            [itemKeys.class] = itemClasses.QUEST,
        },
        [35711] = {
            [itemKeys.npcDrops] = {},
        },
        [35726] = {
            [itemKeys.npcDrops] = {},
        },
        [35782] = {
            [itemKeys.npcDrops] = {},
        },
        [35783] = {
            [itemKeys.npcDrops] = {26477},
        },
        [35795] = {
            [itemKeys.npcDrops] = {},
        },
        [35802] = {
            [itemKeys.npcDrops] = {},
        },
        [35803] = {
            [itemKeys.npcDrops] = {26503},
        },
        [35806] = {
            [itemKeys.objectDrops] = {188458},
        },
        [36727] = {
            [itemKeys.npcDrops] = {},
        },
        [36731] = {
            [itemKeys.npcDrops] = {},
        },
        [36733] = {
            [itemKeys.objectDrops] = {188539},
        },
        [36759] = {
            [itemKeys.npcDrops] = {26608},
        },
        [36765] = {
            [itemKeys.npcDrops] = {26809},
        },
        [36768] = {
            [itemKeys.npcDrops] = {26358,26359},
        },
        [36771] = {
            [itemKeys.class] = 12,
        },
        [36772] = {
            [itemKeys.objectDrops] = {190510},
        },
        [36852] = {
            [itemKeys.npcDrops] = {},
        },
        [37124] = {
            [itemKeys.npcDrops] = {},
        },
        [37136] = {
            [itemKeys.npcDrops] = {},
        },
        [37137] = {
            [itemKeys.npcDrops] = {},
        },
        [37173] = {
            [itemKeys.class] = 12,
        },
        [37250] = {
            [itemKeys.objectDrops] = {188666},
        },
        [37265] = {
            [itemKeys.class] = 12,
        },
        [37303] = {
            [itemKeys.objectDrops] = {188694},
        },
        [37359] = {
            [itemKeys.npcDrops] = {},
        },
        [37412] = {
            [itemKeys.npcDrops] = {},
        },
        [37501] = {
            [itemKeys.objectDrops] = {189290},
        },
        [37569] = {
            [itemKeys.npcDrops] = {},
        },
        [37580] = {
            [itemKeys.npcDrops] = {},
        },
        [37708] = {
            [itemKeys.class] = 12,
        },
        [37661] = {
            [itemKeys.class] = 12,
        },
        [37727] = {
            [itemKeys.npcDrops] = {},
        },
        [37879] = {
            [itemKeys.npcDrops] = {},
        },
        [37888] = {
            [itemKeys.class] = 12,
        },
        [38303] = {
            [itemKeys.npcDrops] = {26620,26639,27431},
        },
        [38326] = {
            [itemKeys.npcDrops] = {},
        },
        [38333] = {
            [itemKeys.npcDrops] = {28162},
        },
        [38340] = {
            [itemKeys.objectDrops] = {190459},
        },
        [38380] = {
            [itemKeys.npcDrops] = {28202},
        },
        [38382] = {
            [itemKeys.npcDrops] = {28203},
        },
        [38483] = {
            [itemKeys.npcDrops] = {28161},
        },
        [38600] = {
            [itemKeys.npcDrops] = {28389,28408},
        },
        [38631] = {
            [itemKeys.objectDrops] = {190557,191746,191747,191748,},
        },
        [38637] = {
            [itemKeys.npcDrops] = {28494},
        },
        [38638] = {
            [itemKeys.npcDrops] = {28496},
        },
        [38639] = {
            [itemKeys.npcDrops] = {28495},
        },
        [38677] = {
            [itemKeys.npcDrops] = {},
        },
        [38687] = {
            [itemKeys.npcDrops] = {29856},
        },
        [39160] = {
            [itemKeys.npcDrops] = {},
        },
        [39301] = {
            [itemKeys.npcDrops] = {},
        },
        [40728] = {
            [itemKeys.npcDrops] = {29402},
        },
        [40731] = {
            [itemKeys.npcDrops] = {},
        },
        [41399] = {
            [itemKeys.npcDrops] = {},
        },
        [42107] = {
            [itemKeys.npcDrops] = {16570,21223,24228,24229,24271,24316,24601,25415,25707,25709,25715,26045,26283,26284,26316,26347,26407,26421,27254,27382,28069,28118,28323,28546,28584,28784,28826,28858,28862,28877,29013,29124,29313,29436,29504,29624,29844,30040,30053,30160,30184,30387,30872,30873,30875,30876,30877},
        },
        [42203] = {
            [itemKeys.npcDrops] = {29380},
            [itemKeys.startQuest] = 12979,
        },
        [42252] = {
            [itemKeys.objectDrops] = {192124,192127},
        },
        [42423] = {
            [itemKeys.npcDrops] = {30163,30208},
        },
        [42542] = {
            [itemKeys.npcDrops] = {30260},
        },
        [42733] = {
            [itemKeys.npcDrops] = {30292},
        },
        [43148] = {
            [itemKeys.npcDrops] = {},
        },
        [43151] = {
            [itemKeys.npcDrops] = {28923},
        },
        [43225] = {
            [itemKeys.npcDrops] = {30856,30860,30861,30862,30863,30864,30865,30868,31041,31123,31228,31229,31231,31233,31236,31401,31402,31403,31404,33422},
        },
        [43238] = {
            [itemKeys.objectDrops] = {192941},
        },
        [43411] = {
            [itemKeys.npcDrops] = {29120},
        },
        [43494] = {
            [itemKeys.npcDrops] = {31104},
        },
        [43511] = {
            [itemKeys.npcDrops] = {30329},
        },
        [43512] = {
            [itemKeys.npcDrops] = {30329},
        },
        [43662] = {
            [itemKeys.npcDrops] = {23954},
        },
        [43665] = {
            [itemKeys.npcDrops] = {26723},
        },
        [43668] = {
            [itemKeys.objectDrops] = {193603},
        },
        [43669] = {
            [itemKeys.npcDrops] = {26861},
        },
        [43670] = {
            [itemKeys.npcDrops] = {26632},
        },
        [43693] = {
            [itemKeys.npcDrops] = {29306},
        },
        [43699] = {
            [itemKeys.npcDrops] = {27978},
        },
        [43724] = {
            [itemKeys.npcDrops] = {28923},
        },
        [43726] = {
            [itemKeys.npcDrops] = {29120},
        },
        [43821] = {
            [itemKeys.npcDrops] = {29311},
        },
        [43823] = {
            [itemKeys.npcDrops] = {31134},
        },
        [44319] = {
            [itemKeys.npcDrops] = {},
        },
        [44320] = {
            [itemKeys.npcDrops] = {},
        },
        [44434] = {
            [itemKeys.npcDrops] = {32260},
        },
        [44981] = {
            [itemKeys.npcDrops] = {33224},
        },
        [45003] = {
            [itemKeys.npcDrops] = {33303},
        },
        [45045] = {
            [itemKeys.npcDrops] = {33308},
        },
        [45082] = {
             [itemKeys.npcDrops] = {33498},
        },
        [45127] = {
            [itemKeys.npcDrops] = {33561,33564,33558,33559,33562,33384,33383,33382,33285,33306},
        },
        [45500] = {
            [itemKeys.npcDrops] = {33738,33739,33740,33743,33744,33745,33746,33747,33748,33749},
        },
        [45784] = {
            [itemKeys.objectDrops] = {194313},
        },
        [45786] = {
            [itemKeys.objectDrops] = {194200},
        },
        [45787] = {
            [itemKeys.objectDrops] = {194957},
        },
        [45788] = {
            [itemKeys.objectDrops] = {194327},
        },
        [45814] = {
            [itemKeys.objectDrops] = {194331},
        },
        [45815] = {
            [itemKeys.objectDrops] = {194201},
        },
        [45816] = {
            [itemKeys.objectDrops] = {194958},
        },
        [45817] = {
            [itemKeys.objectDrops] = {194314},
        },
        [45857] = {
            [itemKeys.npcDrops] = {32867,32927},
        },
        [45897] = {
            [itemKeys.npcDrops] = {33288},
        },
        [46895] = {
            [itemKeys.class] = 12,
        },
        [48418] = {
            [itemKeys.npcDrops] = {35451},
        },
        [49698] = {
            [itemKeys.npcDrops] = {36670},
        },
        [49723] = {
            [itemKeys.npcDrops] = {36494},
        },
        [49739] = {
            [itemKeys.objectDrops] = {201590},
        },
        [49750] = {
            [itemKeys.npcDrops] = {37094},
        },
        [49867] = {
            [itemKeys.npcDrops] = {37671,38065},
        },
        [49908] = {
            [itemKeys.npcDrops] = {36612,36855,36626,36627,36678,37970,37955,36853,36597},
            [itemKeys.objectDrops] = {201873,202239,201959},
            [itemKeys.vendors] = {37941,37942,38858,211332,211340},
        },
        [49915] = {
            [itemKeys.npcDrops] = {37715},
        },
        [50226] = {
            [itemKeys.npcDrops] = {36626},
        },
        [50231] = {
            [itemKeys.npcDrops] = {36627},
        },
        [50274] = {
            [itemKeys.npcDrops] = {36612,36855,36626,36627,36678,37970,37955,36853,36597},
            [itemKeys.objectDrops] = {201873,202239,201959},
        },
        [51315] = {
            [itemKeys.npcDrops] = {36597},
        },
        [51317] = {
            [itemKeys.npcDrops] = {36597},
        },

        -- Boost quest items
        [199335] = {
            [itemKeys.name] = 'Teleport Scroll: Menethil Harbor',
            [itemKeys.relatedQuests] = {70411},
            [itemKeys.class] = 12,
            [itemKeys.flags] = 64,
        },
        [199336] = {
            [itemKeys.name] = 'Teleport Scroll: Stormwind Harbor',
            [itemKeys.relatedQuests] = {70411},
            [itemKeys.class] = 12,
            [itemKeys.flags] = 64,
        },
        [199777] = {
            [itemKeys.name] = 'Teleport Scroll: Orgrimmar Zeppelin Tower',
            [itemKeys.relatedQuests] = {70737},
            [itemKeys.class] = 12,
            [itemKeys.flags] = 64,
        },
        [199778] = {
            [itemKeys.name] = 'Teleport Scroll: Undercity Zeppelin Tower',
            [itemKeys.relatedQuests] = {70737},
            [itemKeys.class] = 12,
            [itemKeys.flags] = 64,
        },
        [200068] = {
            [itemKeys.name] = 'Teleport Scroll: Shattrath City',
            [itemKeys.relatedQuests] = {70865},
            [itemKeys.class] = 12,
            [itemKeys.flags] = 64,
        },
        [211206] = {
            [itemKeys.name] = 'Defiler\'s Medallion',
            [itemKeys.relatedQuests] = {78752},
            [itemKeys.class] = 12,
            [itemKeys.npcDrops] = {23954,26723,26861,26632,29306,27978,28923,29120,29311,31134,35451,36502,36658},
            [itemKeys.objectDrops] = {193597,193603,202336},
        },
        [211207] = {
            [itemKeys.name] = 'Mysterious Artifact',
            [itemKeys.relatedQuests] = {78753},
            [itemKeys.class] = 12,
            [itemKeys.npcDrops] = {23954,26723,26861,26632,29306,27978,28923,29120,29311,31134,35451,36502,36658},
            [itemKeys.objectDrops] = {193597,193603,202336},
        },
    }
end

function _QuestieWotlkItemFixes:InsertMissingItemIds()
    -- Boost quest items
    QuestieDB.itemData[199335] = {} -- Teleport Scroll: Menethil Harbor
    QuestieDB.itemData[199336] = {} -- Teleport Scroll: Stormwind Harbor
    QuestieDB.itemData[199777] = {} -- Teleport Scroll: Orgrimmar Zeppelin Tower
    QuestieDB.itemData[199778] = {} -- Teleport Scroll: Undercity Zeppelin Tower
    QuestieDB.itemData[200068] = {} -- Teleport Scroll: Shattrath City
    QuestieDB.itemData[211206] = {} -- Defiler's Medallion
    QuestieDB.itemData[211207] = {} -- Mysterious Artifact
end

-- This should allow manual fix for item availability
function QuestieWotlkItemFixes:LoadFactionFixes()
    local itemKeys = QuestieDB.itemKeys

    local itemFixesHorde = {
        [49698] = {
            [itemKeys.npcDrops] = {36669},
        },
    }

    local itemFixesAlliance = {
        [49698] = {
            [itemKeys.npcDrops] = {36670},
        },
    }

    if UnitFactionGroup("Player") == "Horde" then
        return itemFixesHorde
    else
        return itemFixesAlliance
    end
end
