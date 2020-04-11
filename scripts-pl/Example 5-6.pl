#!/usr/bin/perl -w
# Example 5-6   Determining frequency of nucleotides, take 2

# Get the DNA sequence data
print "Please type the filename of the DNA sequence data: "; #imprime a menssagem  na tela

$dna_filename = <STDIN>; #usuario entra com o nome do arquivo

chomp $dna_filename; #elimina \n da string com o nome do arquivo

# Does the file exist?
unless ( -e $dna_filename) { #verifica se o arquivo existe

    print "File \"$dna_filename\" doesn\'t seem to exist!!\n"; #imprime na tela uma menssagem de erro
    exit; #finaliza a execução
}

# Can we open the file?
unless ( open(DNAFILE, $dna_filename) ) { #verifica se o arquivo pode ser aberto 

    print "Cannot open file \"$dna_filename\"\n\n"; #imprime na tela uma menssagem de erro
    exit; #finaliza a execução
}

@DNA = <DNAFILE>; #passa o arquivo para um array

close DNAFILE; #fecha o arquivo

print @DNA;

$DNA = join( '', @DNA); #tranforma em uma array de strings


# Remove whitespace
$DNA =~ s/\s//g; 

# Initialize the counts.
# Notice that we can use scalar variables to hold numbers.
$count_of_A = 0;
$count_of_C = 0;
$count_of_G = 0;
$count_of_T = 0;
$errors     = 0;

# In a loop, look at each base in turn, determine which of the
# four types of nucleotides it is, and increment the
# appropriate count.
for ( $position = 0 ; $position < length $DNA ; ++$position ) { #percorre a string da posição 0 até o seu tamanho total

    $base = substr($DNA, $position, 1); #obtem a subtring na posição $position e passa para a variavel $base

    if     ( $base eq 'A' ) { #verifica se a string base é igual a A
        ++$count_of_A;        #incrementa o contador para a base A
    } elsif ( $base eq 'C' ) { #verifica se a string base é igual a B
        ++$count_of_C;         #incrementa o contador para a base B
    } elsif ( $base eq 'G' ) { #verifica se a string base é igual a G
        ++$count_of_G;         #incrementa o contador para a base G
    } elsif ( $base eq 'T' ) { #verifica se a string base é igual a G
        ++$count_of_T;         #incrementa o contador para a base B
    } else {
        print "!!!!!!!! Error - I don\'t recognize this base: $base\n"; # Se a variavel base não for reconhecida por nenhuma das correspondências acima retorna um erro
        ++$errors; ##incrementa o contador para a base com erro
    }
}

# print the results
print "A = $count_of_A\n"; #exibe o numero de base A encontradas dentro do arquivo
print "C = $count_of_C\n"; #exibe o numero de base C encontradas dentro do arquivo
print "G = $count_of_G\n"; #exibe o numero de base G encontradas dentro do arquivo
print "T = $count_of_T\n"; #exibe o numero de base Y encontradas dentro do arquivo
print "errors = $errors\n"; #exibe o numero erros encontrada

# exit the program
exit; #finaliza o programa
