baseCommand: [tar, xvzf]
class: CommandLineTool
cwlVersion: v1.0
hints: []
inputs:
- id: index_name
  inputBinding: {position: 1}
  type: File
outputs:
- id: output
  outputBinding: {glob: bowtie}
  type: Directory
