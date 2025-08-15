#!/usr/bin/bash

read -p "Enter a number: " num


if [[ ${num} =~ ^-?[0-9]+$ ]]; then
    if (( ${num} > 0 )); then
        case $(( ${num} % 2 )) in
            0) echo "${num} is a positive and even number" ;;
            *) echo "${num} is a positive and odd number" ;;
        esac
    elif (( ${num} < 0 )); then
        case $(( ${num} % 2 )) in
            0) echo "${num} is a negative and even number" ;;
            *) echo "${num} is a negative and odd number" ;;
        esac
    else
        echo "${num} is zero — neither positive nor negative, even nor odd"
    fi
else
    echo "Please enter a valid number. '${num}' is not a number."
fi

