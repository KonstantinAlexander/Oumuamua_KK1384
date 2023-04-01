all: oumuamua

oumuamua: libsofa.a main.o Solution.o Converter.o DataReader.o Integration.o BarycentricCoord.o CartesianCoord.o CylindricalCoord.o GeocentricCoord.o Observation.o Observatory.o SphericalCoord.o EarthRotation.o HubbleData.o IntegrationVector.o Velocity.o Date.o InterpolationTime.o
	g++ main.o Solution.o Converter.o DataReader.o Integration.o BarycentricCoord.o CartesianCoord.o CylindricalCoord.o GeocentricCoord.o Observation.o Observatory.o SphericalCoord.o EarthRotation.o HubbleData.o IntegrationVector.o Velocity.o Date.o InterpolationTime.o sofa/src/libsofa_c.a -o oumuamua

main.o: ./source/main.cpp
	g++ -c ./source/main.cpp

Solution.o: ./source/Solution.cpp
	g++ -c ./source/Solution.cpp

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

HubbleData.o: ./source/measure/data_structures/HubbleData.cpp
	g++ -c ./source/measure/data_structures/HubbleData.cpp

IntegrationVector.o: ./source/measure/data_structures/IntegrationVector.cpp
	g++ -c ./source/measure/data_structures/IntegrationVector.cpp

Velocity.o: ./source/measure/movement/Velocity.cpp
	g++ -c ./source/measure/movement/Velocity.cpp

Date.o: ./source/measure/time/Date.cpp
	g++ -c ./source/measure/time/Date.cpp

InterpolationTime.o: ./source/measure/time/InterpolationTime.cpp
	g++ -c ./source/measure/time/InterpolationTime.cpp

libsofa.a:
	$(MAKE) -C ./sofa/src

clean:
	rm -rf *.o
	$(MAKE) clean -C ./sofa/src
