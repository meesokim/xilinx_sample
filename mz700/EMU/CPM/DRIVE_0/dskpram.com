!  91�!:�:] �/�$�?�$�-͔�*!,����:\ =�7͝_�A2�͑ͩ��ͳ�;�;�;ͳͳ>;g;�ͳ�ͳ!|����!v��
�:\ =�͝_O͑ͩ^#V�"�>�*^#V�"�}���!���!�>2�*�"���*�#"�^ {������ ��:�����[:�� �B>,���:�� �=2���:�� �B=2�>0��:�� �B>,�����
!�*���!v��
� ���o���o}�0��/�qz/W{/_y�1ҋx�y����������� �������� ������� ����#;�;��~#��y�|��}����������������
����0����O��������_� �����>��>
�����> ����~��~�#���* �o�!7�����

DSKPRAM ver. 1.1
Copyright (c) 1984 Robert C. Kuhman
� hex�DPB table for drive �:

SPT:  ����H	Sectors per track.
BSH:  �H	Block shift.
BLM:  ��H	Block mask.
EXM:  �H	Extent mask.
DSM:  � H	Disk size-1.
DRM:  ��~H	Directory entries-1.
ASV0: DSH	Directory group allocation 0.
ALV1: rtH	Directory group allocation 1.
CKS:  �:
H	Check size.
OFF:  per H	Offset (number of reserve tracks).
DPB address =�Diskette needs no translation.�Skew table decimal values.�DPH address =�
              >>> DSKPRAM.COM - H E L P <<<

DSKPRAM displays DPB and skew tables for a floppy drive.
Information provided can be used as input for ESET.COM,
allowing the AMPRO's "E:" drive to read and write non-AMPRO
diskette formats not included in MULTIDSK.COM.

                         SYNTAX

A0>DSKPRAM <RET>  --> DPB and SKEW table for default drive
A0>DSKPRAM d:     --> Tables for selected drive
A0>DSKPRAM ? or / --> Displays this message

                          NOTES

1. DSKPRAM must be run in the alien system, not the
   AMPRO system.  It will not provide useful data when
   used in the AMPRO on a non-AMPRO format diskette.

2. DSKPRAM does not work in some CP/M 2.2 systems.�      