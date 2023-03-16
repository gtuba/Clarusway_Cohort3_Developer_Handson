import { LightningElement } from 'lwc';

export default class CreateOpenHouseShow extends LightningElement {
  handleSubmit(event) {
    event.preventDefault(); // Prevent default form submission

    const fields = event.detail.fields;
    this.template.querySelector('lightning-record-edit-form').submit(fields);
  }
}