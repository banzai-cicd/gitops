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
                approverIds: ['user']
            ]
        ],
        inputCfg: [
            rollbackNumberOfChoices: 3
        ],
        gitUser: 'banzai',
        gitEmail: 'banzaicicd@gmail.com'
    ]
])
