
SET(SRCS 
    Dummy.cpp
)

ADD_LIBRARY(__targetname__ ${SRCS})

TARGET_LINK_LIBRARIES(__targetname__
    #${Boost_LIBRARIES}
)


INSTALL(TARGETS __targetname__
    EXPORT __targetname__LibraryDepends
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
    ARCHIVE DESTINATION lib
    COMPONENT libraries
)


