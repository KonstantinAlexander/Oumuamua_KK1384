all: oumuamua

oumuamua: libsofa.a main.o Solution.o Converter.o Interpolator.o DataReader.o Integration.o BarycentricCoord.o CartesianCoord.o CylindricalCoord.o GeocentricCoord.o Observation.o Observatory.o SphericalCoord.o EarthRotation.o IntegrationVector.o Velocity.o Date.o InterpolationTime.o LightCorrector.o ModelMeasure.o Matrix.o MatrixRow.o MNK.o
	g++ main.o Solution.o Converter.o Interpolator.o DataReader.o Integration.o BarycentricCoord.o CartesianCoord.o CylindricalCoord.o GeocentricCoord.o Observation.o Observatory.o SphericalCoord.o EarthRotation.o IntegrationVector.o Velocity.o Date.o InterpolationTime.o LightCorrector.o ModelMeasure.o  Matrix.o MatrixRow.o MNK.o sofa/src/libsofa_c.a -o oumuamua

main.o: ./source/main.cpp
	g++ -c ./source/main.cpp

Solution.o: ./source/Solution.cpp
	g++ -c ./source/Solution.cpp

Interpolator.o: ./source/data_processing/Interpolator.cpp
	g++ -c -w ./source/data_processing/Interpolator.cpp

Converter.o: ./source/data_processing/Converter.cpp
	g++ -c -w ./source/data_processing/Converter.cpp

DataReader.o: ./source/data_processing/DataReader.cpp
	g++ -c ./source/data_processing/DataReader.cpp

Integration.o: ./source/data_processing/Integration.cpp
	g++ -c ./source/data_processing/Integration.cpp

BarycentricCoord.o: ./source/measure/coords/BarycentricCoord.cpp
	g++ -c ./source/measure/coords/BarycentricCoord.cpp

CartesianCoord.o: ./source/measure/coords/CartesianCoord.cpp
	g++ -c ./source/measure/coords/CartesianCoord.cpp

CylindricalCoord.o: ./source/measure/coords/CylindricalCoord.cpp
	g++ -c ./source/measure/coords/CylindricalCoord.cpp

GeocentricCoord.o: ./source/measure/coords/GeocentricCoord.cpp
	g++ -c ./source/measure/coords/GeocentricCoord.cpp

Observation.o:./source/measure/coords/Observation.cpp
	g++ -c ./source/measure/coords/Observation.cpp

Observatory.o: ./source/measure/coords/Observatory.cpp
	g++ -c ./source/measure/coords/Observatory.cpp

SphericalCoord.o: ./source/measure/coords/SphericalCoord.cpp
	g++ -c ./source/measure/coords/SphericalCoord.cpp

EarthRotation.o: ./source/measure/data_structures/EarthRotation.cpp
	g++ -c ./source/measure/data_structures/EarthRotation.cpp

IntegrationVector.o: ./source/measure/data_structures/IntegrationVector.cpp
	g++ -c ./source/measure/data_structures/IntegrationVector.cpp

Velocity.o: ./source/measure/movement/Velocity.cpp
	g++ -c ./source/measure/movement/Velocity.cpp

Date.o: ./source/measure/time/Date.cpp
	g++ -c ./source/measure/time/Date.cpp

InterpolationTime.o: ./source/measure/time/InterpolationTime.cpp
	g++ -c ./source/measure/time/InterpolationTime.cpp

LightCorrector.o: ./source/data_processing/LightCorrector.cpp
	g++ -c ./source/data_processing/LightCorrector.cpp

ModelMeasure.o: ./source/measure/data_structures/ModelMeasure.cpp
	g++ -c ./source/measure/data_structures/ModelMeasure.cpp

Matrix.o: ./source/data_processing/Matrix/Matrix.cpp
	g++ -c ./source/data_processing/Matrix/Matrix.cpp

MatrixRow.o: ./source/data_processing/Matrix/MatrixRow.cpp
	g++ -c ./source/data_processing/Matrix/MatrixRow.cpp

MNK.o: ./source/data_processing/MNK.cpp
	g++ -c ./source/data_processing/MNK.cpp

libsofa.a:
	$(MAKE) -C ./sofa/src

clean:
	rm -rf *.o
	$(MAKE) clean -C ./sofa/src
