baseCommand: [cut, '-f2,15']
class: CommandLineTool
cwlVersion: v1.0
hints: []
inputs:
- {id: cutfile, type: string}
- id: infile
  inputBinding: {position: 1}
  type: File
outputs:
- {id: cutfile, type: stdout}
stdout: $(inputs.cutfile)
