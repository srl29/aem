import { RenderHome } from "./renderHome.js";
import { data } from "../datas/homePageData.js";

let main = document.getElementById("movie_container");

const home_data = new RenderHome(data);

const home_dom = home_data.render();

home_dom.map((item) => {
  main.insertAdjacentHTML('beforeend', item);
})

