 require('sonarlint').setup({
    server = {
       cmd = {
          'java', '-jar', 'sonarlint-language-server-VERSION.jar',
          -- Ensure that sonarlint-language-server uses stdio channel
          '-stdio',
          '-analyzers', 'path/to/analyzer1.jar', 'path/to/analyzer2.jar', 'path/to/analyzer3.jar',
       },
    },
    filetypes = {
       -- Tested and working
       -- 'python',
       -- 'cpp',
       -- 'java',
       'javascript',
       'typescript',
    }
 })
