from Bio.Seq import Seq
from Bio import SeqIO

#declaracao de uma sequencia
my_seq = Seq("ATG")
print(f"Sequencia: {my_seq}")

#sequencia complementar
seq_comp = my_seq.complement()

print(f"Sequencia complementar: {seq_comp}")

#sequencia complementar reversa normal 5'--- 3' reversa para 3'--- 5'- Seq DNA
seq_reverse_comp = my_seq.reverse_complement()

print(f"Sequencia complementar reversa: {seq_reverse_comp}")

#Processo de transcricao
seq_rna = my_seq.transcribe()

print(f"Sequencia RNA: {seq_rna}")

#Processo de transcricao reverso

seq_rna_rev = my_seq.back_transcribe()

print(f"Sequencia RNA reversa: {seq_rna_rev}")

#Processo de traducao RNA --> (Aminoacido) Proteinas

seq_proteina_rna = seq_rna.translate()
seq_proteina_dna = my_seq.translate()

print(f"Sequencia proteina form RNA: {seq_proteina_rna}")
print(f"Sequencia proteina form DNA: {seq_proteina_dna}")


#Analise arquivos FASTA

for fasta in SeqIO.parse("./seq.fasta","fasta"):
    print(f"Fasta Id: {fasta.id}")
    print(f"Fasta Seq: {fasta.seq}")
