import homeTemplate from 'text!./home.html';
import HomeController from './home.controller';
import './home.css'

const HomeComponent = {
  template: homeTemplate,
  controller: HomeController
};

export default HomeComponent;
