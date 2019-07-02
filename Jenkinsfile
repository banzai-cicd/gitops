library 'BanzaiCICD@develop'

banzai([
    email: [
        addresses: [
            banzai: 'banzaicicd@gmail.com'
        ]
    ],
    notifications: [
        email: [
            /.*/ : [
                individuals: [
                    banzai: [/GITOPS:(APPROVAL|APPROVED|ABORTED)/]
                ]
            ] 
        ]
    ],
    gitOps: [
        autoDeploy: [
            /develop/ : 'dev'
        ],
        envs: [
            'dev' : [:],
            'qa' : [
                approverIds: ['someid']
            ]
        ],
        inputCfg: [
            rollbackNumberOfChoices: 3
        ]
    ]
])
