
process HELLOWORLD {
    debug true
   
    input:
    val x

   
    script:
    """
    echo ${launchDir}
    echo ${projectDir}
    echo ${x} > out.txt
    """
}

workflow {
  HELLOWORLD(params.data_for)
}


