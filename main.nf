
process HELLOWORLD {
    debug true
   publishDir = [
        path: "${params.results_dir}/out" ,
        mode: 'copy',
    ]

    input:
      val x

    output:
      path out.txt

   
    script:
    """
    echo ${launchDir}
    echo ${projectDir}
    echo ${params.results_dir}
    echo ${x}
    echo ${x} > out.txt
    """
}

workflow {
  HELLOWORLD(params.data_for)
}


