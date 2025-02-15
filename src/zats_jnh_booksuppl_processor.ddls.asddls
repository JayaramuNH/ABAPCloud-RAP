@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'My Travel processor projection' 
@Metadata.allowExtensions: true
define view entity ZATS_JNH_BOOKSUPPL_PROCESSOR as projection on ZATS_JNH_BOOKSUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
    _Booking: redirected to parent ZATS_JNH_BOOKING_PROCESSOR,
    _Travel : redirected to ZATS_JNH_TRAVEL_PROCESSOR
}
