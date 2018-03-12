{ stdenv, lib, buildPythonPackage, fetchPypi
, setuptools_scm
, pytestrunner, sortedcontainers, sortedcollections
}:

buildPythonPackage rec {
  pname = "bidict";
  version = "0.15.0rc1";
  name = "${pname}-${version}";

  src = fetchPypi {
    inherit pname version;
    sha256 = "08j1pnpzifffxar8s58gs4agwi186qgp4hnwjhqlcr96icr7nn2f";
  };

  buildInputs = [
    setuptools_scm pytestrunner
  ];

  checkInputs = [
    pytestrunner sortedcontainers sortedcollections
  ];

  doCheck = false;

  meta = with stdenv.lib; {
    description = "Efficient, Pythonic bidirectional map implementation and related functionality";
    homepage = "https://github.com/jab/bidict";
    license = lib.licenses.mpl20;
  };
}
