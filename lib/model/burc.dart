class Burc {
  final String _burcAdi;
  final String _burcTarih;
  final String _burcDetayi;
  final String _kucukResim;
  final String _buyukResim;
  get burcAdi => this._burcAdi;
  get burcTarih => this._burcTarih;
  get burcDetayi => this._burcDetayi;
  get kucukResim => this._kucukResim;
  get buyukResim => this._buyukResim;

  Burc(this._burcAdi, this._burcTarih, this._burcDetayi, this._kucukResim, this._buyukResim);

  @override
String toString() {
  return '$_burcAdi - $_buyukResim';
}

}



