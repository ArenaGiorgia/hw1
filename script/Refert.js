fetch("Referti.php").then(OnResponseRef).then(OnJsonRef);
//TODO::farsi ritornare i referti di un certo paziente
function OnResponseRef(response)
{
    return response.json();
}
function OnJsonRef(json)
{
    console.log(json);
    const length = json.length;
    for (let i = 0; i < length; i++)
    {
        const main= document.querySelector("#main");
        const div= document.createElement("div");
        const h2= document.createElement('h2');
        const p= document.createElement('p');
        const p1=document.createElement('p');
        const p2=document.createElement('p');
        h2.textContent=json[i].tipologia;
        p.textContent="Eseguito da: "+json[i].personale_medico;
        p1.textContent="In data: "+json[i].dataeff;
        p2.textContent="Esito: "+json[i].descrizione;
        div.appendChild(h2);
        div.appendChild(p);
        div.appendChild(p1);
        div.appendChild(p2);
        main.appendChild(div);




    }

}