
process HELLOWORLD {
    debug true

    script:
    """
    echo "Hello World"
    """
}

workflow {
  HELLOWORLD()
}


