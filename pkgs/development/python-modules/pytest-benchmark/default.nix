{ lib, buildPythonPackage, fetchPypi, py-cpuinfo }:

buildPythonPackage rec {
  name = "${pname}-${version}";
  pname = "pytest-benchmark";
  version = "3.1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1034wdbrfsh6v2rsjl3f7hijzvv16mjw0apkn1681wbw1fqjcm8q";
  };

  buildInputs = [ py-cpuinfo ];

  meta = {
    description = "A py.test fixture for benchmarking code. It will group the tests into rounds that are calibrated to the chosen timer";
    homepage = https://github.com/ionelmc/pytest-benchmark;
    license = lib.licenses.bsd2;
  };
}
