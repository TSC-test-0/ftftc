using { guitarstore } from '../db/schema.cds';

service guitarstoreSrv {
  entity Pitch as projection on guitarstore.Pitch;
  entity Warehouse as projection on guitarstore.Warehouse;
  entity Discount as projection on guitarstore.Discount;
}