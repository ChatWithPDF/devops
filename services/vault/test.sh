root_token_text=$(grep "Initial Root Token" initialization-data.txt)
        if [[ $root_token_text =~ :[[:space:]]*(.*) ]]; then
                token="${BASH_REMATCH[1]}"
                echo "export ANSIBLE_HASHI_VAULT_TOKEN=$token" >> ~/.bashrc
                echo "export ANSIBLE_HASHI_VAULT_ADDR=$VAULT_ADDR" >> ~/.bashrc
        fi
