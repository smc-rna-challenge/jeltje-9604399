baseCommand: [run.sh]
class: CommandLineTool
cwlVersion: v1.0
hints: []
inputs:
- id: fastq1
  inputBinding: {prefix: -a}
  type: File
- id: fastq2
  inputBinding: {prefix: -b}
  type: File
- default: ref_transcriptome
  id: idxbase
  inputBinding: {prefix: -i}
  type: string
- id: idxdir
  inputBinding: {prefix: -d}
  type: Directory
outputs:
- id: isoforms
  outputBinding: {glob: results.xprs}
  type: File
requirements:
- {class: InlineJavascriptRequirement}
- {class: DockerRequirement, dockerPull: jeltje/express}
