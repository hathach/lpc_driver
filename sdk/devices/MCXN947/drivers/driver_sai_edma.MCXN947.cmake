# Add set(CONFIG_USE_driver_sai_edma true) in config.cmake to use this component

include_guard(GLOBAL)
message("${CMAKE_CURRENT_LIST_FILE} component is included.")

if(CONFIG_USE_driver_sai AND (CONFIG_DEVICE_ID STREQUAL MCXN947))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/fsl_sai_edma.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/.
)

else()

message(SEND_ERROR "driver_sai_edma.MCXN947 dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()
