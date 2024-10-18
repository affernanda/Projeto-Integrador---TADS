 function validarFormulario(event) {
    event.preventDefault(); //Garante q o formulario nao vai ser enviado automaticamente

    const dataInput = document.forms["frmAgenda"]["Opt1"]; //Pega a data marcada no formulario
    const dataSelecionada = new Date(dataInput.value); //Converte em uma variavel tipo date
    const dataAtual = new Date(); //Cria uma variavel com a data d hj
    
    if (dataSelecionada <= dataAtual) { 
        alert("Escolha uma data futura para sua aula.");
        dataInput.focus();
        return false;
        //Garante q a data sera futura
    }

    const periodoSelecionado = document.querySelector('input[name="grupo"]:checked');
    if (!periodoSelecionado) {
        alert("Por favor, selecione um período (Manhã, Tarde ou Noite).");
        return false;
        //Verifica c alguma opção do radio foi marcada, c nao, tome alert
    }

    const telefoneInput = document.forms["frmAgenda"]["Opt3"];
    if (telefoneInput.value.trim() === ""){
        alert('Por favor, insira um número de telefone');
        telefoneInput.focus();
        return false;
    }

    alert("Formulário enviado!");
    window.location.assign('agendamento.html');
}
