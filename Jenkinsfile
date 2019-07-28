library 'BanzaiCICD@develop'

banzai([
    sshCreds: ['banzai-git-ssh'],
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
        ]
    ]
])
