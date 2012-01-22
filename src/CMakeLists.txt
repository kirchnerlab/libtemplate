
SET(SRCS 
    Dummy.cpp
)

ADD_LIBRARY(template ${SRCS})

TARGET_LINK_LIBRARIES(template
    #${Boost_LIBRARIES}
)


INSTALL(TARGETS template
    EXPORT libtemplateLibraryDepends
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
    ARCHIVE DESTINATION lib
    COMPONENT libraries
)


