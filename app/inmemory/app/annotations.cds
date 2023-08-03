using { guitarstoreSrv } from '../srv/service.cds';

annotate guitarstoreSrv.Pitch with @odata.draft.enabled;
annotate guitarstoreSrv.Warehouse with @odata.draft.enabled;
annotate guitarstoreSrv.Discount with @odata.draft.enabled;
annotate guitarstoreSrv.Warehouse with @cds.odata.valuelist;
annotate guitarstoreSrv.Discount with @cds.odata.valuelist;
annotate guitarstoreSrv.Product with @cds.odata.valuelist;
annotate guitarstoreSrv.Product with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products', Title: { Value: productName } };
annotate guitarstoreSrv.Product with {
  ID @Common.Text: { $value: productName, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Product with @UI.Identification: [{ Value: productName }];
annotate guitarstoreSrv.Product with {
  productName @title: 'Product Name';
  productDescription @title: 'Product Description';
  price @title: 'Price'
};

annotate guitarstoreSrv.Product with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: price },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
];

annotate guitarstoreSrv.Product with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: price },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
  ]
};

annotate guitarstoreSrv.Product with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarstoreSrv.Pitch with @UI.HeaderInfo: { TypeName: 'Pitch', TypeNamePlural: 'Pitches', Title: { Value: targetAudience } };
annotate guitarstoreSrv.Pitch with {
  ID @Common.Text: { $value: targetAudience, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Pitch with @UI.Identification: [{ Value: targetAudience }];
annotate guitarstoreSrv.Pitch with {
  targetAudience @title: 'Target Audience';
  pitchText @title: 'Pitch Text'
};

annotate guitarstoreSrv.Pitch with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: targetAudience },
    { $Type: 'UI.DataField', Value: pitchText },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
];

annotate guitarstoreSrv.Pitch with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: targetAudience },
    { $Type: 'UI.DataField', Value: pitchText },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
  ]
};

annotate guitarstoreSrv.Pitch with {
  product @Common.Text: { $value: product.productName, ![@UI.TextArrangement]: #TextOnly }
};

annotate guitarstoreSrv.Pitch with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarstoreSrv.Warehouse with @UI.HeaderInfo: { TypeName: 'Warehouse', TypeNamePlural: 'Warehouses', Title: { Value: stock } };
annotate guitarstoreSrv.Warehouse with {
  ID @Common.Text: { $value: stock, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Warehouse with @UI.Identification: [{ Value: stock }];
annotate guitarstoreSrv.Warehouse with {
  stock @title: 'Stock'
};

annotate guitarstoreSrv.Warehouse with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: stock }
];

annotate guitarstoreSrv.Warehouse with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: stock }
  ]
};

annotate guitarstoreSrv.Warehouse with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' },
  { $Type : 'UI.ReferenceFacet', ID : 'Product', Target : 'products/@UI.LineItem' }
];

annotate guitarstoreSrv.Discount with @UI.HeaderInfo: { TypeName: 'Discount', TypeNamePlural: 'Discounts', Title: { Value: discountPercentage } };
annotate guitarstoreSrv.Discount with {
  ID @Common.Text: { $value: discountPercentage, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Discount with @UI.Identification: [{ Value: discountPercentage }];
annotate guitarstoreSrv.Discount with {
  discountPercentage @title: 'Discount Percentage'
};

annotate guitarstoreSrv.Discount with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: discountPercentage }
];

annotate guitarstoreSrv.Discount with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: discountPercentage }
  ]
};

annotate guitarstoreSrv.Discount with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

