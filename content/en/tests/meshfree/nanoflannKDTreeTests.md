---
AllTestsForFile:
  Catch2TestRun:
    '@catch2-version': 3.3.2
    '@filters': '[#nanoflannKDTreeTests] [serial] [advectionDiffusion]'
    '@name': meshfree
    '@proc': '-1'
    '@rng-seed': '3600291032'
    '@xml-format-version': '2'
    OverallResults:
      '@expectedFailures': '0'
      '@failures': '0'
      '@skips': '0'
      '@successes': '112'
    OverallResultsCases:
      '@expectedFailures': '0'
      '@failures': '0'
      '@skips': '0'
      '@successes': '14'
    TestCase:
    - '@filename': nanoflannKDTreeTests.C
      '@line': '71'
      '@name': 'KDTree: Empty tree - vector'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '82'
        '@success': 'true'
        '@type': CHECK
        Expanded: 0 == 0
        Original: tree.points().size() == 0
      - '@filename': nanoflannKDTreeTests.C
        '@line': '83'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: false == false
        Original: tree.hasSomeNeighboursWithinRadius(pnt, 0.5) == false
      OverallResult:
        '@durationInSeconds': '0.000285'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '71'
      '@name': 'KDTree: Empty tree - vector2D'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '82'
        '@success': 'true'
        '@type': CHECK
        Expanded: 0 == 0
        Original: tree.points().size() == 0
      - '@filename': nanoflannKDTreeTests.C
        '@line': '83'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: false == false
        Original: tree.hasSomeNeighboursWithinRadius(pnt, 0.5) == false
      OverallResult:
        '@durationInSeconds': '0.000245'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '86'
      '@name': 'KDTree: Find k nearest point with initialized cloud - vector'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '103'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.634333849, -0.7628666759, 0.5512820482 }, { -0.036308527,
          0.1271955967, -0.5153199434 }, { 0.331499815, -0.0903879404, 0.2667279243
          }, { -0.0399631858, -0.36184448, 0.7670212984 }, { -0.3166416287, 0.2349251509,
          0.4865983725 } }

          ==

          { { -0.634333849, -0.7628666759, 0.5512820482 }, { -0.036308527, 0.1271955967,
          -0.5153199434 }, { 0.331499815, -0.0903879404, 0.2667279243 }, { -0.0399631858,
          -0.36184448, 0.7670212984 }, { -0.3166416287, 0.2349251509, 0.4865983725
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '106'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[0] == expect[0].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '107'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.1892058927 == 0.1892058927
        Original: result.second()[0] == expect[0].second()
      OverallResult:
        '@durationInSeconds': '0.000782'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '86'
      '@name': 'KDTree: Find k nearest point with initialized cloud - vector2D'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '103'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.634333849, -0.7628666759 }, { -0.036308527, 0.1271955967
          }, { 0.331499815, -0.0903879404 }, { -0.0399631858, -0.36184448 }, { -0.3166416287,
          0.2349251509 } }

          ==

          { { -0.634333849, -0.7628666759 }, { -0.036308527, 0.1271955967 }, { 0.331499815,
          -0.0903879404 }, { -0.0399631858, -0.36184448 }, { -0.3166416287, 0.2349251509
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '106'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[0] == expect[0].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '107'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.017497029 == 0.017497029
        Original: result.second()[0] == expect[0].second()
      OverallResult:
        '@durationInSeconds': '0.000771'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '110'
      '@name': 'KDTree: Find k nearest point with updated cloud from empty state -
        vector'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '126'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.634333849, -0.7628666759, 0.5512820482 }, { -0.036308527,
          0.1271955967, -0.5153199434 }, { 0.331499815, -0.0903879404, 0.2667279243
          }, { -0.0399631858, -0.36184448, 0.7670212984 }, { -0.3166416287, 0.2349251509,
          0.4865983725 } }

          ==

          { { -0.634333849, -0.7628666759, 0.5512820482 }, { -0.036308527, 0.1271955967,
          -0.5153199434 }, { 0.331499815, -0.0903879404, 0.2667279243 }, { -0.0399631858,
          -0.36184448, 0.7670212984 }, { -0.3166416287, 0.2349251509, 0.4865983725
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '131'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '132'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.1892058927 == 0.1892058927
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '131'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '132'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.283051673 == 0.283051673
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '131'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 4 == 4
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '132'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.3922297236 == 0.3922297236
        Original: result.second()[i] == expect[i].second()
      OverallResult:
        '@durationInSeconds': '0.001488'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '110'
      '@name': 'KDTree: Find k nearest point with updated cloud from empty state -
        vector2D'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '126'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.634333849, -0.7628666759 }, { -0.036308527, 0.1271955967
          }, { 0.331499815, -0.0903879404 }, { -0.0399631858, -0.36184448 }, { -0.3166416287,
          0.2349251509 } }

          ==

          { { -0.634333849, -0.7628666759 }, { -0.036308527, 0.1271955967 }, { 0.331499815,
          -0.0903879404 }, { -0.0399631858, -0.36184448 }, { -0.3166416287, 0.2349251509
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '131'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1 == 1
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '132'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.017497029 == 0.017497029
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '131'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '132'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.1180621071 == 0.1180621071
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '131'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 3 == 3
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '132'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.132528484 == 0.132528484
        Original: result.second()[i] == expect[i].second()
      OverallResult:
        '@durationInSeconds': '0.001307'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '136'
      '@name': 'KDTree: Find k nearest points with overriden dynamic cloud retaining
        its size - vector'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '158'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931,
          0.9364323616, -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944
          }, { 0.5215499401, 0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137,
          0.7417945862 } }

          ==

          { { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931, 0.9364323616,
          -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944 }, { 0.5215499401,
          0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137, 0.7417945862
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.432171638 == 0.432171638
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '158'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931,
          0.9364323616, -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944
          }, { 0.5215499401, 0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137,
          0.7417945862 } }

          ==

          { { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931, 0.9364323616,
          -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944 }, { 0.5215499401,
          0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137, 0.7417945862
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.432171638 == 0.432171638
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.7510833634 == 0.7510833634
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '158'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931,
          0.9364323616, -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944
          }, { 0.5215499401, 0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137,
          0.7417945862 } }

          ==

          { { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931, 0.9364323616,
          -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944 }, { 0.5215499401,
          0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137, 0.7417945862
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.432171638 == 0.432171638
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.7510833634 == 0.7510833634
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 3 == 3
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 1.482710938 == 1.482710938
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
        '@durationInSeconds': '0.00333'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '136'
      '@name': 'KDTree: Find k nearest points with overriden dynamic cloud retaining
        its size - vector2D'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '158'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616
          }, { 0.1403187513, -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331,
          0.9758036137 } }

          ==

          { { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616 }, { 0.1403187513,
          -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331, 0.9758036137
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.3933844648 == 0.3933844648
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '158'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616
          }, { 0.1403187513, -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331,
          0.9758036137 } }

          ==

          { { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616 }, { 0.1403187513,
          -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331, 0.9758036137
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.3933844648 == 0.3933844648
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.6896983764 == 0.6896983764
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '158'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616
          }, { 0.1403187513, -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331,
          0.9758036137 } }

          ==

          { { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616 }, { 0.1403187513,
          -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331, 0.9758036137
          } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.3933844648 == 0.3933844648
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.6896983764 == 0.6896983764
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '167'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 3 == 3
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '168'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.9693475081 == 0.9693475081
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
        '@durationInSeconds': '0.002956'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '173'
      '@name': 'KDTree: Find k nearest points with overriden dynamic cloud growing
        its size - vector'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '195'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931,
          0.9364323616, -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944
          }, { 0.5215499401, 0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137,
          0.7417945862 }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814,
          0.4825466871, 0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515
          } }

          ==

          { { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931, 0.9364323616,
          -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944 }, { 0.5215499401,
          0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137, 0.7417945862
          }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814, 0.4825466871,
          0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.432171638 == 0.432171638
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '195'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931,
          0.9364323616, -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944
          }, { 0.5215499401, 0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137,
          0.7417945862 }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814,
          0.4825466871, 0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515
          } }

          ==

          { { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931, 0.9364323616,
          -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944 }, { 0.5215499401,
          0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137, 0.7417945862
          }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814, 0.4825466871,
          0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.432171638 == 0.432171638
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 7 == 7
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.5742794552 == 0.5742794552
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '195'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931,
          0.9364323616, -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944
          }, { 0.5215499401, 0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137,
          0.7417945862 }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814,
          0.4825466871, 0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515
          } }

          ==

          { { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931, 0.9364323616,
          -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944 }, { 0.5215499401,
          0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137, 0.7417945862
          }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814, 0.4825466871,
          0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.432171638 == 0.432171638
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 7 == 7
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.5742794552 == 0.5742794552
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.7510833634 == 0.7510833634
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
        '@durationInSeconds': '0.003808'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '173'
      '@name': 'KDTree: Find k nearest points with overriden dynamic cloud growing
        its size - vector2D'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '195'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616
          }, { 0.1403187513, -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331,
          0.9758036137 }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871
          }, { 0.1688086987, -0.6411185265 } }

          ==

          { { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616 }, { 0.1403187513,
          -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331, 0.9758036137
          }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871 }, { 0.1688086987,
          -0.6411185265 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.3933844648 == 0.3933844648
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '195'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616
          }, { 0.1403187513, -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331,
          0.9758036137 }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871
          }, { 0.1688086987, -0.6411185265 } }

          ==

          { { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616 }, { 0.1403187513,
          -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331, 0.9758036137
          }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871 }, { 0.1688086987,
          -0.6411185265 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.3933844648 == 0.3933844648
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 7 == 7
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4395293417 == 0.4395293417
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '195'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616
          }, { 0.1403187513, -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331,
          0.9758036137 }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871
          }, { 0.1688086987, -0.6411185265 } }

          ==

          { { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616 }, { 0.1403187513,
          -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331, 0.9758036137
          }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871 }, { 0.1688086987,
          -0.6411185265 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 2 == 2
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.3933844648 == 0.3933844648
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 7 == 7
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.4395293417 == 0.4395293417
        Original: result.second()[i] == expect[i].second()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '204'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first()[i] == expect[i].first()
      - '@filename': nanoflannKDTreeTests.C
        '@line': '205'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0.6896983764 == 0.6896983764
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
        '@durationInSeconds': '0.003231'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '209'
      '@name': 'KDTree: Find nearest points within radius - vector'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '231'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931,
          0.9364323616, -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944
          }, { 0.5215499401, 0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137,
          0.7417945862 }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814,
          0.4825466871, 0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515
          } }

          ==

          { { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931, 0.9364323616,
          -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944 }, { 0.5215499401,
          0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137, 0.7417945862
          }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814, 0.4825466871,
          0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{  } UnorderedEquals: {  }'
        Original: std::vector<size_t>(result.first().begin(), result.first().end()),
          Catch::Matchers::UnorderedEquals(expectFirst)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '251'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{  } UnorderedEquals: {  }'
        Original: std::vector<scalar>(result.second().begin(), result.second().end()),
          Catch::Matchers::UnorderedEquals(expectSecond)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '231'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931,
          0.9364323616, -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944
          }, { 0.5215499401, 0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137,
          0.7417945862 }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814,
          0.4825466871, 0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515
          } }

          ==

          { { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931, 0.9364323616,
          -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944 }, { 0.5215499401,
          0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137, 0.7417945862
          }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814, 0.4825466871,
          0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 2 } UnorderedEquals: { 2 }'
        Original: std::vector<size_t>(result.first().begin(), result.first().end()),
          Catch::Matchers::UnorderedEquals(expectFirst)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '251'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 0.432171638 } UnorderedEquals: { 0.432171638 }'
        Original: std::vector<scalar>(result.second().begin(), result.second().end()),
          Catch::Matchers::UnorderedEquals(expectSecond)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '231'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931,
          0.9364323616, -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944
          }, { 0.5215499401, 0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137,
          0.7417945862 }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814,
          0.4825466871, 0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515
          } }

          ==

          { { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931, 0.9364323616,
          -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944 }, { 0.5215499401,
          0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137, 0.7417945862
          }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814, 0.4825466871,
          0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 2, 0, 7 } UnorderedEquals: { 0, 2, 7 }'
        Original: std::vector<size_t>(result.first().begin(), result.first().end()),
          Catch::Matchers::UnorderedEquals(expectFirst)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '251'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 0.432171638, 0.7510833634, 0.5742794552 } UnorderedEquals: {
          0.7510833634, 0.432171638, 0.5742794552 }'
        Original: std::vector<scalar>(result.second().begin(), result.second().end()),
          Catch::Matchers::UnorderedEquals(expectSecond)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '231'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931,
          0.9364323616, -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944
          }, { 0.5215499401, 0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137,
          0.7417945862 }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814,
          0.4825466871, 0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515
          } }

          ==

          { { -0.520776391, 0.6469082832, 0.2477599382 }, { 0.5312027931, 0.9364323616,
          -0.7695807219 }, { 0.1403187513, -0.6113060713, 0.1969445944 }, { 0.5215499401,
          0.8350647688, -0.716493845 }, { -0.6054773331, 0.9758036137, 0.7417945862
          }, { 0.8963233232, 0.646528244, 0.6047247648 }, { -0.7160571814, 0.4825466871,
          0.9807869196 }, { 0.1688086987, -0.6411185265, -0.3670832515 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 6, 4, 5, 2, 0, 1, 3, 7 } UnorderedEquals: { 0, 1, 2, 3, 4, 5,
          6, 7 }'
        Original: std::vector<size_t>(result.first().begin(), result.first().end()),
          Catch::Matchers::UnorderedEquals(expectFirst)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '251'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 1.7075321739, 1.8690547014, 1.5870863113, 0.432171638, 0.7510833634,
          1.7513364627, 1.482710938, 0.5742794552 } UnorderedEquals: { 0.7510833634,
          1.7513364627, 0.432171638, 1.482710938, 1.8690547014, 1.5870863113, 1.7075321739,
          0.5742794552 }'
        Original: std::vector<scalar>(result.second().begin(), result.second().end()),
          Catch::Matchers::UnorderedEquals(expectSecond)
      Info:
      - radius := 0.5
      - radius := 0.5
      - radius := 0.7
      - radius := 0.7
      - radius := 1.0
      - radius := 1.0
      - radius := 1.4142135624
      - radius := 1.4142135624
      OverallResult:
        '@durationInSeconds': '0.005118'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '209'
      '@name': 'KDTree: Find nearest points within radius - vector2D'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '231'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616
          }, { 0.1403187513, -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331,
          0.9758036137 }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871
          }, { 0.1688086987, -0.6411185265 } }

          ==

          { { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616 }, { 0.1403187513,
          -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331, 0.9758036137
          }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871 }, { 0.1688086987,
          -0.6411185265 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{  } UnorderedEquals: {  }'
        Original: std::vector<size_t>(result.first().begin(), result.first().end()),
          Catch::Matchers::UnorderedEquals(expectFirst)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '251'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{  } UnorderedEquals: {  }'
        Original: std::vector<scalar>(result.second().begin(), result.second().end()),
          Catch::Matchers::UnorderedEquals(expectSecond)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '231'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616
          }, { 0.1403187513, -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331,
          0.9758036137 }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871
          }, { 0.1688086987, -0.6411185265 } }

          ==

          { { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616 }, { 0.1403187513,
          -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331, 0.9758036137
          }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871 }, { 0.1688086987,
          -0.6411185265 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 2, 7 } UnorderedEquals: { 2, 7 }'
        Original: std::vector<size_t>(result.first().begin(), result.first().end()),
          Catch::Matchers::UnorderedEquals(expectFirst)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '251'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 0.3933844648, 0.4395293417 } UnorderedEquals: { 0.3933844648,
          0.4395293417 }'
        Original: std::vector<scalar>(result.second().begin(), result.second().end()),
          Catch::Matchers::UnorderedEquals(expectSecond)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '231'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616
          }, { 0.1403187513, -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331,
          0.9758036137 }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871
          }, { 0.1688086987, -0.6411185265 } }

          ==

          { { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616 }, { 0.1403187513,
          -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331, 0.9758036137
          }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871 }, { 0.1688086987,
          -0.6411185265 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 6, 2, 0, 3, 7 } UnorderedEquals: { 0, 2, 3, 6, 7 }'
        Original: std::vector<size_t>(result.first().begin(), result.first().end()),
          Catch::Matchers::UnorderedEquals(expectFirst)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '251'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 0.7455891922, 0.3933844648, 0.6896983764, 0.9693475081, 0.4395293417
          } UnorderedEquals: { 0.6896983764, 0.3933844648, 0.9693475081, 0.7455891922,
          0.4395293417 }'
        Original: std::vector<scalar>(result.second().begin(), result.second().end()),
          Catch::Matchers::UnorderedEquals(expectSecond)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '231'
        '@success': 'true'
        '@type': CHECK
        Expanded: '{ { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616
          }, { 0.1403187513, -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331,
          0.9758036137 }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871
          }, { 0.1688086987, -0.6411185265 } }

          ==

          { { -0.520776391, 0.6469082832 }, { 0.5312027931, 0.9364323616 }, { 0.1403187513,
          -0.6113060713 }, { 0.5215499401, 0.8350647688 }, { -0.6054773331, 0.9758036137
          }, { 0.8963233232, 0.646528244 }, { -0.7160571814, 0.4825466871 }, { 0.1688086987,
          -0.6411185265 } }'
        Original: tree.points() == pnts
      - '@filename': nanoflannKDTreeTests.C
        '@line': '246'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 6, 4, 5, 2, 0, 1, 3, 7 } UnorderedEquals: { 0, 1, 2, 3, 4, 5,
          6, 7 }'
        Original: std::vector<size_t>(result.first().begin(), result.first().end()),
          Catch::Matchers::UnorderedEquals(expectFirst)
      - '@filename': nanoflannKDTreeTests.C
        '@line': '251'
        '@success': 'true'
        '@type': REQUIRE_THAT
        Expanded: '{ 0.7455891922, 1.3187954933, 1.2213942701, 0.3933844648, 0.6896983764,
          1.1590819753, 0.9693475081, 0.4395293417 } UnorderedEquals: { 0.6896983764,
          1.1590819753, 0.3933844648, 0.9693475081, 1.3187954933, 1.2213942701, 0.7455891922,
          0.4395293417 }'
        Original: std::vector<scalar>(result.second().begin(), result.second().end()),
          Catch::Matchers::UnorderedEquals(expectSecond)
      Info:
      - radius := 0.5
      - radius := 0.5
      - radius := 0.7
      - radius := 0.7
      - radius := 1.0
      - radius := 1.0
      - radius := 1.4142135624
      - radius := 1.4142135624
      OverallResult:
        '@durationInSeconds': '0.004388'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '258'
      '@name': 'KDTree: Find nearest points within radius when search query is too
        far - vector'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '282'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first().size() == 0
      - '@filename': nanoflannKDTreeTests.C
        '@line': '283'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.second().size() == 0
      OverallResult:
        '@durationInSeconds': '0.000235'
        '@skips': '0'
        '@success': 'true'
    - '@filename': nanoflannKDTreeTests.C
      '@line': '258'
      '@name': 'KDTree: Find nearest points within radius when search query is too
        far - vector2D'
      '@tags': '[advectionDiffusion][serial][#nanoflannKDTreeTests]'
      Expression:
      - '@filename': nanoflannKDTreeTests.C
        '@line': '282'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.first().size() == 0
      - '@filename': nanoflannKDTreeTests.C
        '@line': '283'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: 0 == 0
        Original: result.second().size() == 0
      OverallResult:
        '@durationInSeconds': '0.00023'
        '@skips': '0'
        '@success': 'true'
layout: unittest
libname: meshfree
title: nanoflannKDTree
---