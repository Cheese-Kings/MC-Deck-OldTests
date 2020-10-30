import { kill, say, tag } from 'sandstone/commands'
import { mcfunction, saveDatapack } from 'sandstone/core'

mcfunction('setup', () => {
  say('Setting up Mc Deck data')
  kill('@e')
})

saveDatapack('Mc Deck', { verbose: true })