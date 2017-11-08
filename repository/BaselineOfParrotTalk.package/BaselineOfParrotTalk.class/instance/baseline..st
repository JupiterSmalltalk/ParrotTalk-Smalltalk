baseline
baseline: spec
  <baseline>
  spec
    for: #'squeak'
    do: [ 
      spec
        project: 'Cryptography'
        with: [ 
          spec
            className: 'Cryptography';
            versionString: 'HenryHouse.113';
            repository: 'http://www.squeaksource.com/Cryptography' ] ].
  spec
    for: #'pharo'
    do: [ 
      spec
        project: 'Cryptography'
        with: [ 
          spec
            className: 'Cryptography';
            versionString: 'HenryHouse.113';
            repository: 'http://www.squeaksource.com/Cryptography' ] ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'Cryptography'
        with: [ 
          spec
            loads: #('CI');
            repository: 'github://GsDevKit/Cryptography:master/repository' ] ].
  spec
    for: #'common'
    do: [ 
      spec
        package: 'ParrotTalk-Core'
          with: [ 
              "spec requires: #('Cryptography')"
               ];
        package: 'ParrotTalk-Frame'
          with: [ spec requires: #('ParrotTalk-Core') ];
        package: 'ParrotTalk-Session'
          with: [ spec requires: #('ParrotTalk-Frame') ];
        package: 'ParrotTalk-Tests'
          with: [ spec requires: #('ParrotTalk-Session') ];
        package: 'ParrotTalk-Examples'
          with: [ spec requires: #('ParrotTalk-Session') ].
      spec
        group: 'Core' with: #('ParrotTalk-Session');
        group: 'Tests' with: #('ParrotTalk-Tests');
        group: 'Examples' with: #('ParrotTalk-Examples');
        group: 'default' with: #('Examples' 'Tests') ]