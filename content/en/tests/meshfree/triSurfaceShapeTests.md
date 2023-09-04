---
AllTestsForFile:
  Catch2TestRun:
    '@catch2-version': 3.3.2
    '@filters': '[#triSurfaceShapeTests] [serial] [advectionDiffusion]'
    '@name': meshfree
    '@proc': '-1'
    '@rng-seed': '3941186801'
    '@xml-format-version': '2'
    OverallResults:
      '@expectedFailures': '0'
      '@failures': '0'
      '@skips': '0'
      '@successes': '2'
    OverallResultsCases:
      '@expectedFailures': '0'
      '@failures': '0'
      '@skips': '0'
      '@successes': '1'
    TestCase:
      '@filename': triSurfaceShapeTests.C
      '@line': '13'
      '@name': 'triSurfaceShape: Constuction in 3D performs correct boundary registration
        - 3'
      '@tags': '[advectionDiffusion][serial][#triSurfaceShapeTests]'
      Expression:
      - '@filename': triSurfaceShapeTests.C
        '@line': '25'
        '@success': 'true'
        '@type': CHECK
        Expanded: 2 == 2
        Original: shapePtr->boundaryNames().size() == 2
      - '@filename': triSurfaceShapeTests.C
        '@line': '26'
        '@success': 'true'
        '@type': REQUIRE
        Expanded: '{ S2, S1 } == { S2, S1 }'
        Original: shapePtr->boundaryNames() == wordList{"S2", "S1"}
      OverallResult:
        '@durationInSeconds': '0.001431'
        '@skips': '0'
        '@success': 'true'
        StdOut: Selecting shape model triSurfaceShape
layout: unittest
libname: meshfree
title: triSurfaceShape
---