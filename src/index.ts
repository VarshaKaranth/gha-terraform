import * as core from '@actions/core';

async function run() {
    try {
        const exampleInput = core.getInput('exampleInput');
        core.info(`Example Input: ${exampleInput}`);
        core.setOutput('exampleOutput', 'Hello world');
    } catch (error) {
        core.setFailed(error.message);
    }
}
run();
