# ${TARGET_NAME}_LIBS is a list popped to the current scope from the parent scope by value

# modify list in the current scope
list (APPEND ${TARGET_NAME}_LIBS "lib_name")

# push modified list value to the parent scope
set (${TARGET_NAME}_LIBS "${${TARGET_NAME}_LIBS}" PARENT_SCOPE)