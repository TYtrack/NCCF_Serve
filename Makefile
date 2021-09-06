CXX ?= g++

DEBUG ?= 1
ifeq ($(DEBUG), 1)
    CXXFLAGS += -g
else
    CXXFLAGS += -O2

endif

server: main.cpp  ./Timer/timer.cpp  ./Connection/connection.cpp ./Log/log.cpp ./Mysql/mysql_connection_pool.cpp  ./Webserve/webserve.cpp ./Config/config.cpp
	$(CXX) -o server  $^ $(CXXFLAGS) -lpthread -lmysqlclient

clean:
	rm  -r server