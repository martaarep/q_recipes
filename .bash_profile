##############################################################
###### Run source .bash_profile in order to use aliases ######
##############################################################

# Build runner
alias brwatch="flutter pub run build_runner watch --delete-conflicting-outputs"
alias brbuild="flutter pub run build_runner build --delete-conflicting-outputs"
alias brclean="flutter pub run build_runner clean"

# Git aliases
alias gitrb="git rebase --interactive develop"

# Flutter run aliases
alias rundev="flutter run --flavor dev --verbose"
alias runstag="flutter run --flavor staging"
alias runprod="flutter run --flavor prod"

#Coverage utils
alias checkcov="bash coverage_calc.sh --severity info --threshold 0.3"