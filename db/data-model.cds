namespace productcatalog;

using clouds.products.Products from '@sap/cloud-samples-catalog';

extend Products with {
	Reviews: association to many Reviews on Reviews.product = $self @title: '{i18n>review}';
}

entity Reviews {
	key Review: UUID;
	product: association to Products @title: '{i18n>product}';
	title: String(60) @title: '{i18n>reviewTitle}';
	message: String(1024) @title: '{i18n>reviewText}';
	rating: Decimal(4, 2) @title: '{i18n>rating}';
	helpfulCount: Integer @title: '{i18n>ratedHelpful}';
	helpfulTotal: Integer @title: '{i18n>ratedTotal}';
}