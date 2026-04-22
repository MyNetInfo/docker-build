@echo off

net stop EasyTier
net stop EasyTier
net stop EasyTierService
net stop EasyTierService

sc delete EasyTier
sc delete EasyTier
sc delete EasyTierService
sc delete EasyTierService
