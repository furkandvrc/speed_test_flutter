/// [LoadingStatus] state management te kullanılan yüklenme durumları.
/// [ApiStatus] Api den gelen status durumları.
/// [BaseModelStatus] BL katmanı ile Controleller katmanı arasındaki (HttpStatus) API Durumlarını 'dır.
// ignore_for_file: constant_identifier_names

enum LoadingStatus { INIT, LOADING, LOADED, ERROR }

