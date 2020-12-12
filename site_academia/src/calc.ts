
   const form = document.querySelector<HTMLFormElement>('#form-ts')!
   const result = document.querySelector<HTMLDivElement>('#result')!
   // const name: string = document.querySelector<HTMLInputElement>('#name')!

   form.addEventListener('submit', (e:Event) => {
      e.preventDefault()
      const height = getinputEl('#height')
      const weight = getinputEl('#weight')

      function getinputEl(id) {
         return Number(document.querySelector<HTMLInputElement>(id)!.value)
      }
      if('submit') {
         const name = getinputele('#name')
         let valor: number = (weight / (height * height)).toFixed(2)
         
         if (valor < 17) {
            result.innerText = 'Olá ' + `${name}` + '! Seu IMC é ' + `${valor}` + ' e Você está Muito Abaixo do Peso.' 
         } 
         else if (valor < 18.49) {
            result.innerText = 'Olá ' + `${name}` + '! Seu IMC é ' + `${valor}` + ' e Você está Abaixo do Peso.' 
         } 
         else if (valor < 24.99) {
            result.innerText = 'Olá ' + `${name}` + '! Seu IMC é ' + `${valor}` + ' e Você está com o Peso Normal.' 
         } 
         else if (valor < 29.99) {
            result.innerText = 'Olá ' + `${name}` + '! Seu IMC é ' + `${valor}` + ' e Você está Acima do Peso.' 
         } 
         else if (valor < 34.99) {
            result.innerText = 'Olá ' + `${name}` + '! Seu IMC é ' + `${valor}` + ' e Você está com Obesidade Grau 1.' 
         }
         else if (valor < 39.99) {
            result.innerText = 'Olá ' + `${name}` + '! Seu IMC é ' + `${valor}` + ' e Você está com Obesidade Grau 2.' 
         }
         else if (valor >= 40 ) {
            result.innerText = 'Olá ' + `${name}` + '! Seu IMC é ' + `${valor}` + 'e Você está com Obesidade Grau 3 (Mórbida).' 
         }
         
         function getinputele(id) {
            return String(document.querySelector<HTMLInputElement>(id)!.value)
         }
      }
   })
