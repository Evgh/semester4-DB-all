--drop database KASPER_MyNewBase;

CREATE DATABASE KASPER_MyNewBase
ON  PRIMARY 
( NAME = N'KASPER_MyNewBase_mdf', FILENAME = N'D:\DB\lab\s4-db-4\myBase1\KASPER_MyNewBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ),
( NAME = N'KASPER_MyNewBase_ndf', FILENAME = N'D:\DB\lab\s4-db-4\myBase1\KASPER_MyNewBase.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ),

FILEGROUP G1 
( NAME = N'KASPER_MyNewBaseG1_ndf', FILENAME = N'D:\DB\lab\s4-db-4\myBase1\KASPER_MyNewBaseG1.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )

 LOG ON 
( NAME = N'KASPER_MyNewBase_log', FILENAME = N'D:\DB\lab\s4-db-4\myBase1\KASPER_MyNewBaseG1.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
