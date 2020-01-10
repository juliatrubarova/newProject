let block = document.querySelector('.hello');

if (block) {
    block.style.width = '700px';
}


class Catalog {
    constructor() {
        this.parentEl = document.querySelector('.catalog');
    }
    preloaderOn() {
        let preloader = document.createElement('div');
        preloader.classList.add('preloader');
        preloader.innerText = 'Загрузка....';
        this.parentEl.appendChild(preloader);
    }
    preloaderOff() {
        let preloader = this.parentEl.querySelector('.preloader');
        preloader.remove();
    }
    renderCatalog() {
        // AJAX - технология Javascript
        let xhr = new XMLHttpRequest();
        // создать соединение с сервером
        xhr.open('GET', '/handlers/catalog.php');
        // отправить данные на сервер 
        xhr.send();
        this.preloaderOn();
        // получить данные

        // xhr.onreadystatechange(function() {
        //     if (xhr.readyState == 4 && xhr.status == 200) {

        //     } else if (xhr.readyState == 3) {

        //     }
        // });

        xhr.addEventListener('load', ()=> {
            this.preloaderOff(); 
            let data = JSON.parse(xhr.responseText);
            console.log(xhr);

            data.forEach((value)=> {
                let product = new Product(value.itemPic, value.itemName, value.itemPrice);
                product.renderProduct();
            });
        });
        
        

        
        
    }

}


class Product {
    constructor(pic, title, price) {
        this.pic = pic;
        this.title = title;
        this.price = price;
        this.parentEl = document.querySelector('.catalog');
    }
    renderProduct() {
        let el = document.createElement('div');
        el.classList.add('catalog-item');
        el.innerHTML = `
            <div class="catalog-item-pic" style="background-image: url(/images/catalog/${this.pic})"></div>
            <div class="catalog-item-title">${this.title}</div>
            <div class="catalog-item-price">${this.price} руб.</div>
        `;
        this.parentEl.appendChild(el);
    }
}

let catalog = new Catalog();
catalog.renderCatalog();


// window.addEventListener('DomContentLoaded', function() {

// });