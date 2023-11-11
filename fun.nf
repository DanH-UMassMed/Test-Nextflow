
process GOODBYE {
    debug true
   publishDir = [
        path: "${params.results_dir}/out" ,
        mode: 'copy',
    ]

    input:
      val x

    output:
      path "out1.txt"

   
    script:
    """
    echo ${launchDir}
    echo ${projectDir}
    echo ${params.results_dir}
    echo ${x}
    echo ${x} > out1.txt
    """
}

workflow {
  GOODBYE(params.data_for)
}


