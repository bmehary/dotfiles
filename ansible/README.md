
# ANSIBLE

## Resource
 - https://www.redhat.com/en/blog/developing-ansible-role

#### Debug
- https://docs.ansible.com/ansible/latest/collections/ansible/builtin/debug_module.html

## Commands
#### Create new role
1. Go to roles directory
1. Create new role by typing:
`
ansible-galaxy role init <role>
`

#### Check syntax
`
ansible-playbook main.yml --syntax-check
`

#### Linting ####

##### Yaml Lint
`
yamllint main.yml
`

##### Ansible-playbook syntax check
`
ansible-playbook main.yml --syntax-check
`

##### Ansible-lint
`
ansible-lint main.yml
`

##### Run a tag
- `ansible-playbook main.yml --tag <tag>` 
- `dotfiles --tag <tag>`

##### Ansible Vault 

`
ansible-vault ...
`
*** TBD

##### Molecule

`
molecule ...
`
*** TBD

### Dotfiles usage
- All packages / tags
    ```
    dotfiles
    dotfiles --tags "all"
    ```
- Single package / tag
    ```
    dotfiles --tags "stow 
    ```
- Multiple packages / tags
    ```
    dotfiles --tags "stow, bitwarden
    ```
