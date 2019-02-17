set-alias -name k -value kubectl

function kg() { kubectl get $args }
function kd() { kubectl describe $args }
function kdel() { kubectl delete $args }

function kaf() { kubectl apply -f $args }

# Context Functions
function kcuc() { kubectl config use-context $args }
function kcsc() { kubectl config set-context $args }
function kcdc() { kubectl config delete-context $args }
function kccc() { kubectl config current-context $args }
function kcgc { kubectl config get-contexts }

#Pod Functions
function kgp() { kubectl get pods $args }
function kdp() { kubectl describe pods $args }
function kgpw { kubectl get pods --watch }
function kgpwide { kubectl get pods -o wide }
function kdp() { kubectl describe pods $args }
function kdpl() { kubectl describe pods -l $args }
function kgpl() { kgp -l $args } #pods by label
function kgpa { kubectl get pods --all-namespaces }

#Namespace Functions
function kgns { kubectl get ns }
function kdns() { kubectl describe ns $args }
function kcn { 
    $context = (kubectl config current-context)
    kubectl config set-context $context --namespace $args
}
function kswitch { 
    $context = (kubectl config current-context)
    kubectl config set-context $context --namespace $args
}

function kgcm { kubectl get configmaps }
function kdcm() { kubectl describe configmap $args }
