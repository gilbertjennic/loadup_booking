import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import $ from 'jquery';
import "bootstrap/dist/css/bootstrap";
import "bootstrap";
import "datatables.net-bs4";
import "datatables.net-bs4/css/dataTables.bootstrap4.min.css";

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener('turbolinks:load', () => {
  const table = document.querySelector('#booking-table');
  if (table) {
    $(table).DataTable();
  }
});
  