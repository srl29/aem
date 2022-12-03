import  {RenderHome}  from "./renderHome.js";
import { data } from "../datas/moviePageData";

let main = document.querySelector(".mcontainer");

const home_data = new RenderHome(data);

const home_dom = home_data.render();

home_dom.forEach((item) => {
  main.insertAdjacentHTML('beforeend', item);  
})