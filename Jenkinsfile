library 'BanzaiCICD@develop'

banzai([
    sshCreds: ['banzai-git-ssh'],
    cleanWorkspace: [ // helps avoid git conflicts
        pre: true
    ],
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
        gitUser: 'banzai',
        gitEmail: 'banzaicicd@gmail.com',
        autoDeploy: [
            /develop/ : 'dev'
        ],
        envs: [
            'dev' : [:],
            'qa' : [
                approverIds: ['admin']
            ]
        ],
        inputCfg: [
            rollbackNumberOfChoices: 3
        ]
    ]
])
