namespace productcatalog;
using productcatalog as prod from '../db/data-model';
using clouds.products.CatalogService from '@sap/cloud-samples-catalog';

extend service CatalogService with {
    
    entity Reviews @(
    	title: '{i18n>review}',
    	Capabilities: {
    		InsertRestrictions: { Insertable: false },
    		UpdateRestrictions: { Updatable: false },
    		DeleteRestrictions: { Deletable: false }
    	}
    ) as projection on prod.Reviews;
    
}
