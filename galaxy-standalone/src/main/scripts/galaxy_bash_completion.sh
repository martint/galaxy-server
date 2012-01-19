_galaxy_completion() 
{
    local alternatives=$(galaxy suggest -- ${COMP_WORDS[@]:1:($COMP_CWORD - 1)})

    local current=${COMP_WORDS[COMP_CWORD]}

    COMPREPLY=( $(compgen -W "${alternatives[@]:0}" -- $current) )
}

complete -F _galaxy_completion galaxy
