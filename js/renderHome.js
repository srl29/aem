export class RenderHome {
  constructor(data) {
    this.data = data;
  }
  render() {
    const dom = this.data.map((item, index) => (
      `
        <div>
        <article>
          <h2>${item.category}</h2>
        </article>
        <div class="movies" id="slide_show_${index}">
            ${item.movies.map((el) => (
        `<div id="movie-no-${el.id}">
                <a class="no-dec" href="./detail-${el.id}.html">
                  <div class="movie-img">
                    <div style="background:url(${el.image})">
                    <div class="types">
                      ${el?.type?.map(element => (
          `<span class="element">${element}</span>`
        ))}
                      </div>
                         </div>
                  </div>
                </a>
              </div>`
      ))}
          </div>
          <div class="slider_button_container">
          <span onclick="previous(${index})" class="previous_click"><</span>
          <span onclick="next(${index})" class="next_click">></span>
          </div>
          </div>
        `
    ))
    return dom;
  }
}