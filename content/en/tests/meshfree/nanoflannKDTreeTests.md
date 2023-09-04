---
AllTestsForFile:
  Catch2TestRun:
    '@catch2-version': 3.3.2
    '@filters': '[#nanoflannKDTreeTests] [serial] [advectionDiffusion]'
    '@name': meshfree
    '@proc': '-1'
    '@rng-seed': '421914520'
    '@xml-format-version': '2'
    OverallResults:
      '@expectedFailures': '0'
      '@failures': '0'
      '@skips': '0'
      '@successes': '102'
    OverallResultsCases:
      '@expectedFailures': '0'
      '@failures': '0'
      '@skips': '0'
      '@successes': '14'
    TestCase:
    - '@filename': nanoflannKDTreeTests.C
      '@line': '71'
      '@name': 'KDTree: Empty tree - 3'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '83'
        '@success': 'true'
        '@type': CHECK
        Expanded: 0 == 0
        Original: tree.points().size() == 0
      - '@filename': nanoflannKDTreeTests.C
        '@line': '84'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: false == false
        Original: tree.hasSomeNeighboursWithinRadius(pnt, 0.5) == false
      OverallResult:
        '@durationInSeconds': '0.000274'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '71'
      '@name': 'KDTree: Empty tree - 2'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '83'
        '@success': 'true'
        '@type': CHECK
        Expanded: 0 == 0
        Original: tree.points().size() == 0
      - '@filename': nanoflannKDTreeTests.C
        '@line': '84'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: false == false
        Original: tree.hasSomeNeighboursWithinRadius(pnt, 0.5) == false
      OverallResult:
        '@durationInSeconds': '0.000251'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '87'
      '@name': 'KDTree: Find k nearest point with initialized cloud - 3'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '105'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { 0.1162718534, 0.6656724215, 0.7034250498 }, { -0.4228188992,
          0.6452765465, -0.7272314429 }, { 0.0485825539, -0.7346782684, 0.3597766161
          }, { 0.7533099651, -0.2651566863, -0.3581104279 }, { -0.4014489651, 0.7518197298,
          -0.5455722809 } }

          ==

          { { 0.1162718534, 0.6656724215, 0.7034250498 }, { -0.4228188992, 0.6452765465,
          -0.7272314429 }, { 0.0485825539, -0.7346782684, 0.3597766161 }, { 0.7533099651,
          -0.2651566863, -0.3581104279 }, { -0.4014489651, 0.7518197298, -0.5455722809
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '108'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[0] == expect[0].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '109'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.6715516361 == 0.6715516361
        Original: result.second()[0] == expect[0].second()
      OverallResult:
        '@durationInSeconds': '0.001376'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '87'
      '@name': 'KDTree: Find k nearest point with initialized cloud - 2'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '105'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { 0.1162718534, 0.6656724215 }, { 0.7034250498, -0.4228188992
          }, { 0.6452765465, -0.7272314429 }, { 0.0485825539, -0.7346782684 }, { 0.3597766161,
          0.7533099651 } }

          ==

          { { 0.1162718534, 0.6656724215 }, { 0.7034250498, -0.4228188992 }, { 0.6452765465,
          -0.7272314429 }, { 0.0485825539, -0.7346782684 }, { 0.3597766161, 0.7533099651
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '108'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[0] == expect[0].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '109'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4566389166 == 0.4566389166
        Original: result.second()[0] == expect[0].second()
      OverallResult:
        '@durationInSeconds': '0.000714'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '112'
      '@name': 'KDTree: Find k nearest point with updated cloud from empty state -
        3'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '129'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { 0.1162718534, 0.6656724215, 0.7034250498 }, { -0.4228188992,
          0.6452765465, -0.7272314429 }, { 0.0485825539, -0.7346782684, 0.3597766161
          }, { 0.7533099651, -0.2651566863, -0.3581104279 }, { -0.4014489651, 0.7518197298,
          -0.5455722809 } }

          ==

          { { 0.1162718534, 0.6656724215, 0.7034250498 }, { -0.4228188992, 0.6452765465,
          -0.7272314429 }, { 0.0485825539, -0.7346782684, 0.3597766161 }, { 0.7533099651,
          -0.2651566863, -0.3581104279 }, { -0.4014489651, 0.7518197298, -0.5455722809
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '134'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '135'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.6715516361 == 0.6715516361
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '134'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 3 == 3
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '135'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.7660270504 == 0.7660270504
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '134'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '135'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.9514457173 == 0.9514457173
        Original: result.second()[i] == expect[i].second()
      OverallResult:
        '@durationInSeconds': '0.001459'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '112'
      '@name': 'KDTree: Find k nearest point with updated cloud from empty state -
        2'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '129'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { 0.1162718534, 0.6656724215 }, { 0.7034250498, -0.4228188992
          }, { 0.6452765465, -0.7272314429 }, { 0.0485825539, -0.7346782684 }, { 0.3597766161,
          0.7533099651 } }

          ==

          { { 0.1162718534, 0.6656724215 }, { 0.7034250498, -0.4228188992 }, { 0.6452765465,
          -0.7272314429 }, { 0.0485825539, -0.7346782684 }, { 0.3597766161, 0.7533099651
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '134'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '135'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4566389166 == 0.4566389166
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '134'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 3 == 3
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '135'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.5421124226 == 0.5421124226
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '134'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '135'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.6735826221 == 0.6735826221
        Original: result.second()[i] == expect[i].second()
      OverallResult:
        '@durationInSeconds': '0.001296'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '139'
      '@name': 'KDTree: Find k nearest points with overriden dynamic cloud retaining
        its size - 3'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '162'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516,
          0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673
          }, { 0.1445627213, 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773,
          -0.926134944 } }

          ==

          { { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516, 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673 }, { 0.1445627213,
          0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773, -0.926134944
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4789450985 == 0.4789450985
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '162'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516,
          0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673
          }, { 0.1445627213, 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773,
          -0.926134944 } }

          ==

          { { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516, 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673 }, { 0.1445627213,
          0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773, -0.926134944
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4789450985 == 0.4789450985
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4940675654 == 0.4940675654
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '162'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516,
          0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673
          }, { 0.1445627213, 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773,
          -0.926134944 } }

          ==

          { { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516, 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673 }, { 0.1445627213,
          0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773, -0.926134944
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4789450985 == 0.4789450985
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4940675654 == 0.4940675654
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 4 == 4
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.9188017606 == 0.9188017606
        Original: result.second()[i] == expect[i].second()
      Info:
      - k := 1
      - i := 0
      - k := 1
      - i := 0
      - k := 2
      - i := 0
      - k := 2
      - i := 0
      - k := 2
      - i := 1
      - k := 2
      - i := 1
      - k := 3
      - i := 0
      - k := 3
      - i := 0
      - k := 3
      - i := 1
      - k := 3
      - i := 1
      - k := 3
      - i := 2
      - k := 3
      - i := 2
      OverallResult:
        '@durationInSeconds': '0.003435'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '139'
      '@name': 'KDTree: Find k nearest points with overriden dynamic cloud retaining
        its size - 2'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '162'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516
          }, { 0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673,
          0.1445627213 } }

          ==

          { { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516 }, { 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673, 0.1445627213
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.1236254053 == 0.1236254053
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '162'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516
          }, { 0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673,
          0.1445627213 } }

          ==

          { { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516 }, { 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673, 0.1445627213
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.1236254053 == 0.1236254053
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4104889945 == 0.4104889945
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '162'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516
          }, { 0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673,
          0.1445627213 } }

          ==

          { { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516 }, { 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673, 0.1445627213
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.1236254053 == 0.1236254053
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4104889945 == 0.4104889945
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '171'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '172'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4388982642 == 0.4388982642
        Original: result.second()[i] == expect[i].second()
      Info:
      - k := 1
      - i := 0
      - k := 1
      - i := 0
      - k := 2
      - i := 0
      - k := 2
      - i := 0
      - k := 2
      - i := 1
      - k := 2
      - i := 1
      - k := 3
      - i := 0
      - k := 3
      - i := 0
      - k := 3
      - i := 1
      - k := 3
      - i := 1
      - k := 3
      - i := 2
      - k := 3
      - i := 2
      OverallResult:
        '@durationInSeconds': '0.003316'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '177'
      '@name': 'KDTree: Find k nearest points with overriden dynamic cloud growing
        its size - 3'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '200'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516,
          0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673
          }, { 0.1445627213, 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773,
          -0.926134944 }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515,
          0.9526200294, -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333
          } }

          ==

          { { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516, 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673 }, { 0.1445627213,
          0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773, -0.926134944
          }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515, 0.9526200294,
          -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 7 == 7
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.3325738389 == 0.3325738389
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '200'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516,
          0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673
          }, { 0.1445627213, 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773,
          -0.926134944 }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515,
          0.9526200294, -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333
          } }

          ==

          { { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516, 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673 }, { 0.1445627213,
          0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773, -0.926134944
          }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515, 0.9526200294,
          -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 7 == 7
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.3325738389 == 0.3325738389
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4789450985 == 0.4789450985
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '200'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516,
          0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673
          }, { 0.1445627213, 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773,
          -0.926134944 }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515,
          0.9526200294, -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333
          } }

          ==

          { { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516, 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673 }, { 0.1445627213,
          0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773, -0.926134944
          }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515, 0.9526200294,
          -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 7 == 7
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.3325738389 == 0.3325738389
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4789450985 == 0.4789450985
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4940675654 == 0.4940675654
        Original: result.second()[i] == expect[i].second()
      Info:
      - k := 1
      - k := 1
      - k := 2
      - k := 2
      - k := 2
      - k := 2
      - k := 3
      - k := 3
      - k := 3
      - k := 3
      - k := 3
      - k := 3
      OverallResult:
        '@durationInSeconds': '0.003975'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '177'
      '@name': 'KDTree: Find k nearest points with overriden dynamic cloud growing
        its size - 2'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '200'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516
          }, { 0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673,
          0.1445627213 }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773
          }, { -0.926134944, -0.8014651537 } }

          ==

          { { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516 }, { 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673, 0.1445627213
          }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773 }, { -0.926134944,
          -0.8014651537 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 6 == 6
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.0610758262 == 0.0610758262
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '200'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516
          }, { 0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673,
          0.1445627213 }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773
          }, { -0.926134944, -0.8014651537 } }

          ==

          { { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516 }, { 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673, 0.1445627213
          }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773 }, { -0.926134944,
          -0.8014651537 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 6 == 6
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.0610758262 == 0.0610758262
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.1236254053 == 0.1236254053
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '200'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516
          }, { 0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673,
          0.1445627213 }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773
          }, { -0.926134944, -0.8014651537 } }

          ==

          { { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516 }, { 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673, 0.1445627213
          }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773 }, { -0.926134944,
          -0.8014651537 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 6 == 6
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.0610758262 == 0.0610758262
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.1236254053 == 0.1236254053
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '209'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '210'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4104889945 == 0.4104889945
        Original: result.second()[i] == expect[i].second()
      Info:
      - k := 1
      - k := 1
      - k := 2
      - k := 2
      - k := 2
      - k := 2
      - k := 3
      - k := 3
      - k := 3
      - k := 3
      - k := 3
      - k := 3
      OverallResult:
        '@durationInSeconds': '0.003363'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '214'
      '@name': 'KDTree: Find nearest points within radius - 3'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '237'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516,
          0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673
          }, { 0.1445627213, 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773,
          -0.926134944 }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515,
          0.9526200294, -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333
          } }

          ==

          { { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516, 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673 }, { 0.1445627213,
          0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773, -0.926134944
          }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515, 0.9526200294,
          -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{  } UnorderedEquals: {  }'
        Original: result, Catch::Matchers::UnorderedEquals(std::vector<Tuple2<size_t,
          scalar>>(expect.begin(), expect.end()))
      - '@filename': nanoflannKDTreeTests.C
        '@line': '237'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516,
          0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673
          }, { 0.1445627213, 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773,
          -0.926134944 }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515,
          0.9526200294, -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333
          } }

          ==

          { { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516, 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673 }, { 0.1445627213,
          0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773, -0.926134944
          }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515, 0.9526200294,
          -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ {?}, {?} } UnorderedEquals: { {?}, {?} }'
        Original: result, Catch::Matchers::UnorderedEquals(std::vector<Tuple2<size_t,
          scalar>>(expect.begin(), expect.end()))
      - '@filename': nanoflannKDTreeTests.C
        '@line': '237'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516,
          0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673
          }, { 0.1445627213, 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773,
          -0.926134944 }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515,
          0.9526200294, -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333
          } }

          ==

          { { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516, 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673 }, { 0.1445627213,
          0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773, -0.926134944
          }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515, 0.9526200294,
          -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ {?}, {?}, {?}, {?} } UnorderedEquals: { {?}, {?}, {?}, {?} }'
        Original: result, Catch::Matchers::UnorderedEquals(std::vector<Tuple2<size_t,
          scalar>>(expect.begin(), expect.end()))
      - '@filename': nanoflannKDTreeTests.C
        '@line': '237'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516,
          0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673
          }, { 0.1445627213, 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773,
          -0.926134944 }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515,
          0.9526200294, -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333
          } }

          ==

          { { -0.008600533, 0.3514988422, 0.6086395979 }, { -0.2001170516, 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428, 0.708589673 }, { 0.1445627213,
          0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773, -0.926134944
          }, { -0.8014651537, 0.2008218765, 0.9798616171 }, { 0.4478013515, 0.9526200294,
          -0.2602069378 }, { -0.2792779803, -0.0696271658, 0.4997296333 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ {?}, {?}, {?}, {?}, {?}, {?}, {?}, {?} } UnorderedEquals: { {?},
          {?}, {?}, {?}, {?}, {?}, {?}, {?} }'
        Original: result, Catch::Matchers::UnorderedEquals(std::vector<Tuple2<size_t,
          scalar>>(expect.begin(), expect.end()))
      Info:
      - radius := 0.5
      - radius := 0.7
      - radius := 1.0
      - radius := 1.4142135624
      OverallResult:
        '@durationInSeconds': '0.004409'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '214'
      '@name': 'KDTree: Find nearest points within radius - 2'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '237'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516
          }, { 0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673,
          0.1445627213 }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773
          }, { -0.926134944, -0.8014651537 } }

          ==

          { { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516 }, { 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673, 0.1445627213
          }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773 }, { -0.926134944,
          -0.8014651537 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ {?}, {?} } UnorderedEquals: { {?}, {?} }'
        Original: result, Catch::Matchers::UnorderedEquals(std::vector<Tuple2<size_t,
          scalar>>(expect.begin(), expect.end()))
      - '@filename': nanoflannKDTreeTests.C
        '@line': '237'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516
          }, { 0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673,
          0.1445627213 }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773
          }, { -0.926134944, -0.8014651537 } }

          ==

          { { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516 }, { 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673, 0.1445627213
          }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773 }, { -0.926134944,
          -0.8014651537 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ {?}, {?}, {?}, {?} } UnorderedEquals: { {?}, {?}, {?}, {?} }'
        Original: result, Catch::Matchers::UnorderedEquals(std::vector<Tuple2<size_t,
          scalar>>(expect.begin(), expect.end()))
      - '@filename': nanoflannKDTreeTests.C
        '@line': '237'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516
          }, { 0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673,
          0.1445627213 }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773
          }, { -0.926134944, -0.8014651537 } }

          ==

          { { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516 }, { 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673, 0.1445627213
          }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773 }, { -0.926134944,
          -0.8014651537 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ {?}, {?}, {?}, {?}, {?}, {?} } UnorderedEquals: { {?}, {?}, {?},
          {?}, {?}, {?} }'
        Original: result, Catch::Matchers::UnorderedEquals(std::vector<Tuple2<size_t,
          scalar>>(expect.begin(), expect.end()))
      - '@filename': nanoflannKDTreeTests.C
        '@line': '237'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516
          }, { 0.1039212942, -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673,
          0.1445627213 }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773
          }, { -0.926134944, -0.8014651537 } }

          ==

          { { -0.008600533, 0.3514988422 }, { 0.6086395979, -0.2001170516 }, { 0.1039212942,
          -0.6542924643 }, { 0.6320871115, 0.5508637428 }, { 0.708589673, 0.1445627213
          }, { 0.9952092171, 0.6401424408 }, { -0.1342222095, -0.2075095773 }, { -0.926134944,
          -0.8014651537 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ {?}, {?}, {?}, {?}, {?}, {?}, {?}, {?} } UnorderedEquals: { {?},
          {?}, {?}, {?}, {?}, {?}, {?}, {?} }'
        Original: result, Catch::Matchers::UnorderedEquals(std::vector<Tuple2<size_t,
          scalar>>(expect.begin(), expect.end()))
      Info:
      - radius := 0.5
      - radius := 0.7
      - radius := 1.0
      - radius := 1.4142135624
      OverallResult:
        '@durationInSeconds': '0.003616'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '253'
      '@name': 'KDTree: Find nearest points within radius when search query is too
        far - 3'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
        '@filename': nanoflannKDTreeTests.C
        '@line': '279'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.size() == 0
      OverallResult:
        '@durationInSeconds': '0.000138'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '253'
      '@name': 'KDTree: Find nearest points within radius when search query is too
        far - 2'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
        '@filename': nanoflannKDTreeTests.C
        '@line': '279'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.size() == 0
      OverallResult:
        '@durationInSeconds': '0.000126'
        '@skips': '0'
        '@success': 'true'
layout: unittest
libname: meshfree
title: nanoflannKDTree
---