#Description: I2C FREERTOS Driver; user_visible: True
include_guard(GLOBAL)
message("driver_i2c_freertos component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/fsl_i2c_freertos.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/.
)


include(driver_i2c)
include(middleware_freertos-kernel_MK22F51212)
