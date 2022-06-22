#
# Copyright 2022, Capgemini Engineering
#
# SPDX-License-Identifier: BSD-2-Clause
#

cmake_minimum_required(VERSION 3.8.2)

project(security_demo C)

CAmkESAddCPPInclude("${CMAKE_CURRENT_LIST_DIR}/include/plat/${KernelPlatform}/")

includeGlobalComponents()

DeclareCAmkESComponent(
    Crypto
    SOURCES
    components/Crypto/src/crypto.c)

DeclareCAmkESComponent(
    Key_Reader
    SOURCES
    components/Key_Reader/src/key_reader.c
    INCLUDES
    include/plat/${KernelPlatform}
    LIBS
    ubootdrivers)

DeclareCAmkESRootserver(security_demo.camkes)