// Certain env variables are not 
console.log(`::set-env name=ACTIONS_RUNTIME_URL::${process.env.ACTIONS_RUNTIME_URL}`)
console.log(`::set-env name=ACTIONS_RUNTIME_TOKEN::${process.env.ACTIONS_RUNTIME_TOKEN}`)
console.log(`::set-env name=GITHUB_RUN_ID::${process.env.GITHUB_RUN_ID}`)
console.log(`::set-output name=ACTIONS_RUNTIME_URL::${process.env.ACTIONS_RUNTIME_URL}`)
console.log(`::set-output name=ACTIONS_RUNTIME_TOKEN::${process.env.ACTIONS_RUNTIME_TOKEN}`)
console.log(`::set-output name=GITHUB_RUN_ID::${process.env.GITHUB_RUN_ID}`)
