cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  primary-malignancy_brain-other-cns-and-intracranial-neoplasm---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  primary-malignancy_brain-other-cns-and-intracranial-tumour---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-neoplasm---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-cerebrum---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-cerebrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-tumour---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-paraganglia---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-paraganglia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-cerebrum---primary/output
  cerebral-primary-malignancy_brain-other-cns-and-intracranial---primary:
    run: cerebral-primary-malignancy_brain-other-cns-and-intracranial---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-paraganglia---primary/output
  temporal-primary-malignancy_brain-other-cns-and-intracranial---primary:
    run: temporal-primary-malignancy_brain-other-cns-and-intracranial---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cerebral-primary-malignancy_brain-other-cns-and-intracranial---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-overlap---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-overlap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: temporal-primary-malignancy_brain-other-cns-and-intracranial---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-nerve---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-nerve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-overlap---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-meninge---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-meninge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-nerve---primary/output
  spinal-primary-malignancy_brain-other-cns-and-intracranial---primary:
    run: spinal-primary-malignancy_brain-other-cns-and-intracranial---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-meninge---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-unspecified---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: spinal-primary-malignancy_brain-other-cns-and-intracranial---primary/output
  craniopharyngeal-primary-malignancy_brain-other-cns-and-intracranial---primary:
    run: craniopharyngeal-primary-malignancy_brain-other-cns-and-intracranial---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-unspecified---primary/output
  pituitary-primary-malignancy_brain-other-cns-and-intracranial---primary:
    run: pituitary-primary-malignancy_brain-other-cns-and-intracranial---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: craniopharyngeal-primary-malignancy_brain-other-cns-and-intracranial---primary/output
  aortic-primary-malignancy_brain-other-cns-and-intracranial---primary:
    run: aortic-primary-malignancy_brain-other-cns-and-intracranial---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: pituitary-primary-malignancy_brain-other-cns-and-intracranial---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-mastrocytoma---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-mastrocytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: aortic-primary-malignancy_brain-other-cns-and-intracranial---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-moligodendroglioma---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-moligodendroglioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-mastrocytoma---primary/output
  anaplastic-primary-malignancy_brain-other-cns-and-intracranial---primary:
    run: anaplastic-primary-malignancy_brain-other-cns-and-intracranial---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-moligodendroglioma---primary/output
  primary-malignancy_brain-other-cns-and-intracranial---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: anaplastic-primary-malignancy_brain-other-cns-and-intracranial---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-[m]astroblastoma---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-[m]astroblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-mglioblastoma---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-mglioblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-[m]astroblastoma---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-[m]oligodendroblastoma---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-[m]oligodendroblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-mglioblastoma---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-[m]medullomyoblastoma---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-[m]medullomyoblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-[m]oligodendroblastoma---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-sarcoma---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-[m]medullomyoblastoma---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-astrocytoma---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-astrocytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-sarcoma---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-[m]glioneuroma---primary:
    run: primary-malignancy_brain-other-cns-and-intracranial-[m]glioneuroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-astrocytoma---primary/output
  primary-malignancy_brain-other-cns-and-intracranial-neoplasm---secondary:
    run: primary-malignancy_brain-other-cns-and-intracranial-neoplasm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-[m]glioneuroma---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: primary-malignancy_brain-other-cns-and-intracranial-neoplasm---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
