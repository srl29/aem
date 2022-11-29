export class RenderHome {
    constructor(data) {
      this.data = data;
    }
    render() {
      const dom = this.data.map((item, i) => (
        `
        <article class="test">
          <h2>${item.category}</h2>
          <div class="movies">
            ${item.movies.map((el, i) => (
              `<div>
                <a href="./detail.html">
                  <div class="movie-img">
                    <img src=${el.image} alt="кино" />
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