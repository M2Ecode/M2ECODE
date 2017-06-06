{\rtf1\ansi\ansicpg936\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 *********************************************************************************************\
Dataset:\
HIV_Dataset.mat   \
BP_Dataset.mat\
\
Format:\
data: third-dimensional tensor contain the fMRI and DTI\
gnd: ground-truth label\
K: clustering numer\
\
*********************************************************************************************\
Function:\
M2E_demo: main function uses M2E method to calculate the HIV and BP dataset\
1. M2E: update F*\
2. M2E_initial: initialize the H and F\
3. M2E_ADMM: use to update H, P, U and F\
}