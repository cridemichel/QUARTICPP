ifeq (,$(findstring intercept,$(CXX)))
CXX=g++-9
endif
#ifneq ($(CC),intercept-c)
ifeq (,$(findstring intercept,$(CC)))
CC=gcc-9
endif
BOOST_LIB=-L /usr/local/lib -lmpfr
CXXFLAGS= -Wall -std=c++17 -O3
CFLAGS= -Wall -O3 
HEADERS=./quartic.hpp ./pvector.hpp
LDFLAGS=-lm -llapack -lblas $(BOOST_LIB) 
all: quartic quartic_mp

quartic: quartic.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -o quartic quartic.cpp  

quartic_mp: quartic_mp.cpp $(HEADERS) 
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o quartic_mp quartic_mp.cpp  

clean:
	rm -f quartic quartic_mp *.o
