{ stdenv, buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "bidict";
  version = "0.15.0rc1";
  name = "${pname}-${version}";

  src = fetchPypi {
    inherit pname version;
    sha256 = "08j1pnpzifffxar8s58gs4agwi186qgp4hnwjhqlcr96icr7nn2f";
  };

  meta = with stdenv.lib; {
    description = "Efficient, Pythonic bidirectional map implementation and related functionality";
    homepage = "https://github.com/jab/bidict";
    license = stdenv.lib.licenses.mpl20;
  };
}
