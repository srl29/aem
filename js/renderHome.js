export class RenderHome {
    constructor(data) {
      this.data = data;
    }
    render() {
      const dom = this.data.map((item, i) => (
        `
        <article>
          <h2>${item.category}</h2>
          <div class="movies">
            ${item.movies.map((el, i) => (
              `<div>
                <a href="./detail.html">
                  <div class="movie-img">
                    <img src=${el.image} alt="ном" />
                  </div>
                  <div class="tag">
                    <p class="movie-title">${el.title}</p>
                    <p class="movie-price">${el.price}</p>
                  </div>
                </a>
              </div>`
            )).join('')}
          </div>
        </article>
        `
      ))
      return dom;
    }
  }