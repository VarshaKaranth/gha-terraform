const core = require('@actions/core');
try{
  const exampleInput = core.getInput('example-input');
  console.log(`Example input: ${exampleInput}`);
  const exampleOutput = `Hello, ${exampleInput}!`;
  core.setOutput('example-output', exampleOutput);
} catch (error) {
  core.setFailed(error.message)
}
