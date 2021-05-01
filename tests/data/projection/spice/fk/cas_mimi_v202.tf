KPL/FK

\beginlabel
PDS_VERSION_ID               = PDS3
RECORD_TYPE                  = STREAM
RECORD_BYTES                 = "N/A"
^SPICE_KERNEL                = "cas_mimi_v202.tf"
MISSION_NAME                 = "CASSINI-HUYGENS"
SPACECRAFT_NAME              = "CASSINI ORBITER"
DATA_SET_ID                  = "CO-S/J/E/V-SPICE-6-V1.0"
KERNEL_TYPE_ID               = FK
PRODUCT_ID                   = "cas_mimi_v202.tf"
PRODUCT_CREATION_TIME        = 2018-09-27T10:35:23
PRODUCER_ID                  = "CASSINI_MIMI/APL"
MISSION_PHASE_NAME           = "N/A"
PRODUCT_VERSION_TYPE         = ACTUAL
PLATFORM_OR_MOUNTING_NAME    = "N/A"
START_TIME                   = "N/A"
STOP_TIME                    = "N/A"
SPACECRAFT_CLOCK_START_COUNT = "N/A"
SPACECRAFT_CLOCK_STOP_COUNT  = "N/A"
TARGET_NAME                  = "N/A"
INSTRUMENT_NAME              = "N/A"
NAIF_INSTRUMENT_ID           = "N/A"
SOURCE_PRODUCT_ID            = "N/A"
NOTE                         = "See comments in the file for details"
OBJECT                       = SPICE_KERNEL
  INTERCHANGE_FORMAT         = ASCII
  KERNEL_TYPE                = FRAMES
  DESCRIPTION                = "SPICE Frames Kernel file containing
definitions of various frames used by the MIMI team, APL. "
END_OBJECT                   = SPICE_KERNEL
\endlabel


Cassini MIMI Frame Definitions Kernel
==============================================================================

   This frame kernel contains frames that are specific to the Cassini MIMI
   detector.


Version and Date
----------------------------------------------------------

   The TEXT_KERNEL_ID stores version information of loaded project text
   kernels. Each entry associated with the keyword is a string that consists
   of four parts: the kernel name, version, entry date, and type. For example,
   the ISS I-kernel might have an entry as follows:
  
           TEXT_KERNEL_ID += 'CASSINI_ISS V0.0.0 29-SEPTEMBER-1999 IK'
                                  |          |         |            |
                                  |          |         |            |
              KERNEL NAME <-------+          |         |            |
                                             |         |            V
                             VERSION <-------+         |       KERNEL TYPE
                                                       |
                                                       V
                                                  ENTRY DATE

   Cassini MIMI Frame Kernel Version:

      \begindata

      TEXT_KERNEL_ID += 'CASSINI_MIMI_FRAMES V2.0.1 02-Jul-2018 FK'

      \begintext
   
   Version 2.0.2 -- September 26, 2018 -- Ryan Poffenbarger

            -- corrected description of CASSINI_MIMI_PROF_TITAN
               to match the frame definition

            -- added frames to complete the frame tree visualization,
               and corrected some errors with its heirarchy

            -- appended 'cas_' to the beginning of this file's name

   Version 2.0.1 -- July 2, 2018 -- Boris Semenov

            --  corrected frame ID in the CASSINI_MIMI_ECLIPJ2000
                definition keywords (-82933 -> -82963)

            --  in the "Cassini MIMI Frames" section, corrected some
                entries in the frames summary table and added key
                attributes and old names/IDs tables
 
            --  added a note to the frames hierarchy section stating
                that the frame tree is incomplete
 
            --  added a note to the CASSINI_MIMI_PROF_TITAN section
                stating that the description and definition of this
                frame given in the section do not match
 
            --  re-wrapped a few paragraphs with long lines
 
            --  made minor formatting changes (replaced TABs, adjusted
                indentation, added/removed white space, etc)

            --  spell-checked
 
            --  updated TEXT_KERNEL_ID string

   Version 2.0.0 -- May 22, 2018 -- Ryan Poffenbarger

            --  Changed all frame names and ids in accordance with
                recommendations made by Boris Semenov
 
            --  Changed a redundant SZM_PROMETHEUS definition to the
                proper SZM_TELESTO
 
            --  Changed centers in SZM_IO and SZM_MOON from 699 to 599
                and 399 respectively
            
   Version 1.1.8 -- Feb 1, 2013 -- Scott Turner

            --  Added CASSINI_SUNJ2000 frame at Jim Carbary's request.

   Version 1.1.7 -- Apr 31, 2012 -- Martha Kusterer and Jon Vandegriff

            --  Added SKR N and S frames from L. Lamy at Meudon
                CASSINI_SKR_SLSM_SOUTH and CASSINI_SKR_SLSM_NORTH
   
   Version 1.1.6 -- Mar 15, 2012 -- Martha Kusterer

            --  Added CASSINI_SATURN_SKR3_LOCK, CASSINI_SATURN_SKR4S_LOCK,
            and CASSINI_SATURN_SKR4N_LOCK
            
   Version 1.1.5 -- Mar 14, 2012 -- Martha Kusterer

            --  Changed CASSINI_SATURN_KM_RAD to point to
                CASSINI_SKR_SLS4_SOUTH, and changed
                CASSINI_SATURN_SKR_LOCK to use CASSINI_SKR_SLS4_SOUTH.
            
   Version 1.1.4 -- Mar 01, 2012 -- Martha Kusterer

            --  Added frames CASSINI_MIMI_MAG_RTN and CASSINI_MIMI_MAG_KRTP
            
            
   Version 1.1.3 -- Nov 4, 2011 -- Martha Kusterer

            --  Added frames CASSINI_JUPITER_EQU_SOLAR and
                CASSINI_JUPITER_CENTERED
            
   Version 1.1.2 -- July 19, 2011 -- Martha Kusterer

            --  Added frames CASSINI_SKR_SLS4_SOUTH and CASSINI_SKR_SLS4_NORTH
            
      
   Version 1.1.1 -- July 30, 2010 -- Martha Kusterer

            --  Changed name of XINCA_SC2SATNRML_SPIN_PLANE to
                CASSINI_SC2SAT_SPIN_PLN because it was too long. Limit
                is 32
            
   Version 1.1.0 -- March 23, 2010 -- Martha Kusterer

            --  Added the CASSINI_SC2SAT_SPIN_PLN frame. Removed
                XINCA_SATURN_RING_BELOW and XINCA_SATURN_RING_ABOVE and
                added some more comments to the XINCA frames.
            
   Version 1.0.9 -- February 19, 2010 -- Martha Kusterer

            --  Fixed the CASSINI_SZS_XY_PLANE frame definition with
                Scott's help :)
            
   Version 1.0.8 -- November 4, 2009 -- Martha Kusterer

            --  Added the CASSINI_SZS_XY_PLANE frame definition
            
   Version 1.0.7 -- October 21 2009 -- Martha Kusterer

            --  Added the ISMF_X frame definition
      
   Version 1.0.6 -- August 13, 2009 -- Scott Turner

            --  Added the ISMF frame definition

   Version 1.0.5 -- May 14, 2009 -- Martha Kusterer
   
            --  Added the CASSINI_MIMI_ECLIPJ2000 frame
            
   Version 1.0.4 -- April 9, 2008 -- Martha Kusterer
   
            --  Added the CASSINI_COROT_ENCELADUS frame
            
   Version 1.0.3 -- March 28, 2008 -- Martha Kusterer
   
            --  Added the GSE frame

      
   Version 1.0.2 -- December 14, 2007 -- Martha Kusterer
   
            --  Edited the Profile-Titan System Frame

   Version 1.0.1 -- November 13, 2007 -- Martha Kusterer
   
            --  Added MIMI CRTN Frame, MIMI_LEMMS_AA Frame,
                Profile-Titan System Frame
            
   Version 1.0.0 -- November 5, 2007 -- Scott Turner

            --  CASSINI_SATURN_KM_RAD is now an alias pointing to the latest
                release of the RPWS SKR model.  

            --  ID code changes were made to provide a coupled range of 
                codes for use with the SKR frames.

            --  Added CASSINI_SKR_SLS1, CASSINI_SKR_SLS2,
                CASSINI_SKR_SLS3 to capture the various SKR style
                frames and establish a convention for future releases
                by the RPWS team.

   Version 0.9.9 -- April 4, 2007 -- Martha Kusterer

            --  Added XINCA_SATURN_RING_ABOVE and XINCA_SATURN_RING_BELOW
                reference frame definition for suppporting testing
                projecting in ring plane software.
      
   Version 0.9.8 -- February 9, 2007 -- Scott Turner

            --  Added CASSINI_SATURN_SKR_LOCK reference frame definition
                for suppporting INCA corotating plasma analysis.

   Version 0.9.7 -- October 11, 2006 -- Scott Turner

            --  Updated the CASSINI_SATURN_KM_RAD frame definition to
                agree with the latest release of the GRL paper.

   Version 0.9.6 -- July 25, 2006 -- Scott Turner and Martha Kusterer

            --  Added CASSINI_SZM_TITAN dynamic frame definition.

            --  Added CASSINI_SATURN_KM_RAD dynamic frame definiton.
            
            --  Added CASSINI_SZM_ATLAS dynamic frame definition.
            
            --  Added CASSINI_SZM_CALYPSO dynamic frame definition.
            
            --  Added CASSINI_SZM_DIONE dynamic frame definition.
            
            --  Added CASSINI_SZM_ENCELADUS dynamic frame definition.
            
            --  Added CASSINI_SZM_EPIMETHEUS dynamic frame definition.
            
            --  Added CASSINI_SZM_HELENE dynamic frame definition.
            
            --  Added CASSINI_SZM_HYPERION dynamic frame definition.
            
            --  Added CASSINI_SZM_JANUS dynamic frame definition.
            
            --  Added CASSINI_SZM_IAPETUS dynamic frame definition.
            
            --  Added CASSINI_SZM_MIMAS dynamic frame definition.
            
            --  Added CASSINI_SZM_RHEA dynamic frame definition.
            
            --  Added CASSINI_SZM_TETHYS dynamic frame definition.
            
            --  Added CASSINI_SZM_PAN dynamic frame definition.
            
            --  Added CASSINI_SZM_PANDORA dynamic frame definition.
            
            --  Added CASSINI_SZM_PHOEBE dynamic frame definition.
            
            --  Added CASSINI_SZM_PROMETHEUS dynamic frame definition.
            
            --  Added CASSINI_SZM_TELESTO dynamic frame definition.
            
            --  Added CASSINI_SZM_IO dynamic frame definition.
            
            --  Added CASSINI_SZM_MOON dynamic frame definition.

            --  Updated CASSINI_SATURN_KM_RAD frame definition 
                to address the timing offset due to the polynomial's
                specification of t0 is 1-JAN-2004 (UTC), not TDB.

            --  Modified the definition of the CASSINI_KRTP frame
                to tie the frame's center to CASSINI, not SATURN.
                This reference frame is located at the spacecraft,
                not Saturn.

   Version 0.9.5 -- June 07, 2006 -- Martha Kusterer

            --  Added CASSINI_PITCH_GYROPHASE  dynamic frame definition.

      
   Version 0.9.4 -- May 02, 2006 -- Martha Kusterer

            --  Added CASSINI_MIMI_INCA_BSIGHT  dynamic frame definition.
            
            --  Added CASSINI_SATURN_CENTERED  dynamic frame definition.
            
            --  Added CASSINI_TITAN_CENTERED  dynamic frame definition.

   Version 0.9.3 -- May 24, 2005 -- Martha Kusterer

            --  Changed frame centers for CASSINI_KRTP and 
                CASSINI_SATURN_SYSTEM_III from -82 (Cassini) to 699 (Saturn).

   Version 0.9.2 -- May 24, 2005 -- Scott Turner

            --  Added CASSINI_SATURN_SOL_ORBIT dynamic frame definition.

            --  Added CASSINI_SATURN_SYSTEM_III frame definition.

   Version 0.9.1 -- May 5, 2005 -- Scott Turner

            --  Added CASSINI_KRTP dynamic frame definition.

   Version 0.9.0 -- June 21, 2004 -- Scott Turner

            --  Preliminary release.


References
----------------------------------------------------------
  
   1. ``C-kernel Required Reading''

   2. ``Kernel Pool Required Reading''

   3. ``Frames Required Reading''

   4. MIMI Flight Software Documentation (http://sd-www.jhuapl.edu/MIMI)

   5. Email from Don Mitchell regarding KRTP frame definition.

   6. JCSN User's Guide

   7. "A Saturnian Longitude System Based on a Variable Kilometric
      Radiation Period", W.S.Kurth, et.al. July 2006, obtained from
      an email from Don Mitchell.

   8. "A Saturnian Longitude System Based on a Variable Kilometric
      Radiation Period", W.S.Kurth, et.al. September 2006, Submitted
      to Geophysical Research Letters.

   9. "An Update to a Saturnian Longitude System Based on Kilometric
      Radio Emissions", W.S.Kurth, et.all. October 2007, Submitted
      to Journal of Geophysical Research.


Contact Information
----------------------------------------------------------

   Direct questions, comments, or concerns about the contents of this kernel
   to:

          Scott Turner, APL, (443)778-1693, Scott.Turner@jhuapl.edu
          
          or 
          
          Martha Kusterer, APL, (443)778-7276, Martha.Kusterer@jhuapl.edu


Implementation Notes
----------------------------------------------------------

   This file is used by the SPICE system as follows: programs that make use of
   this frame kernel must `load' the kernel, normally during program
   initialization. Loading the kernel associates data items with their names
   in a data structure called the `kernel pool'. The SPICELIB routine FURNSH
   loads a kernel file into the pool as shown below:

           CALL FURNSH ( frame_kernel_name )

   or, if one is using CSPICE:

           furnsh_c ( frame_kernel_name )

   or, ICY:

           cspice_furnsh, frame_kernel_name

   This file was created and may be updated with a text editor or word
   processor.

   The frames defined in this kernel require the Cassini Spacecraft frame
   kernel to be loaded into the system.  It augments the frame definitions
   provided there with frames that are convenient for MIMI specific interests.


Cassini MIMI Frames
----------------------------------------------------------

   The following MIMI frames are defined in this kernel file, listed
   in the order in which they appear in the file:

      Frame Name                 Relative To              Type    FrameID
      ========================== =======================  ======= =======
      CASSINI_MIMI_INCA_LL       CASSINI_MIMI_INCA        FIXED   -82920
      CASSINI_KRTP               J2000                    DYNAMIC -82921
      CASSINI_SATURN_SOL_ORBIT   J2000                    DYNAMIC -82922
      CASSINI_SATURN_SYSTEM_III  IAU_SATURN               FIXED   -82923
      CASSINI_SATURN_EQU_SOLAR   J2000                    DYNAMIC -82924
      CASSINI_SATURN_KM_RAD      CASSINI_SKR_SLS4_SOUTH   FIXED   -82910
      CASSINI_SKR_SLS1           IAU_SATURN               FIXED   -82911
      CASSINI_SKR_SLS2           CASSINI_SATURN_EQU_SOLAR DYNAMIC -82912
      CASSINI_SKR_SLS3           CASSINI_SATURN_EQU_SOLAR DYNAMIC -82913
      CASSINI_SZM_TITAN          J2000                    DYNAMIC -82926
      CASSINI_SZM_ATLAS          J2000                    DYNAMIC -82927
      CASSINI_SZM_CALYPSO        J2000                    DYNAMIC -82928
      CASSINI_SZM_DIONE          J2000                    DYNAMIC -82929
      CASSINI_SZM_ENCELADUS      J2000                    DYNAMIC -82930
      CASSINI_SZM_EPIMETHEUS     J2000                    DYNAMIC -82931
      CASSINI_SZM_HELENE         J2000                    DYNAMIC -82932
      CASSINI_SZM_HYPERION       J2000                    DYNAMIC -82933
      CASSINI_SZM_JANUS          J2000                    DYNAMIC -82934
      CASSINI_SZM_IAPETUS        J2000                    DYNAMIC -82935
      CASSINI_SZM_MIMAS          J2000                    DYNAMIC -82936
      CASSINI_SZM_RHEA           J2000                    DYNAMIC -82937
      CASSINI_SZM_TETHYS         J2000                    DYNAMIC -82938
      CASSINI_SZM_PAN            J2000                    DYNAMIC -82939
      CASSINI_SZM_PANDORA        J2000                    DYNAMIC -82940
      CASSINI_SZM_PHOEBE         J2000                    DYNAMIC -82941
      CASSINI_SZM_PROMETHEUS     J2000                    DYNAMIC -82942
      CASSINI_SZM_TELESTO        J2000                    DYNAMIC -82943
      CASSINI_SZM_IO             J2000                    DYNAMIC -82944
      CASSINI_SZM_MOON           J2000                    DYNAMIC -82945
      CASSINI_SUNJ2000           J2000                    DYNAMIC -82946
      CASSINI_MIMI_INCA_BSIGHT   J2000                    DYNAMIC -82951
      CASSINI_SATURN_CENTERED    J2000                    DYNAMIC -82952
      CASSINI_TITAN_CENTERED     J2000                    DYNAMIC -82953
      CASSINI_PITCH_GYROPHASE    J2000                    DYNAMIC -82954
      CASSINI_SATURN_SKR_LOCK    J2000                    DYNAMIC -82955
      CASSINI_SATURN_SKR3_LOCK   J2000                    DYNAMIC -82980
      CASSINI_SATURN_SKR4S_LOCK  J2000                    DYNAMIC -82981
      CASSINI_SATURN_SKR4N_LOCK  J2000                    DYNAMIC -82982
      CASSINI_CRTN               J2000                    DYNAMIC -82958
      CASSINI_MIMI_LEMMS_AA      J2000                    DYNAMIC -82959
      CASSINI_MIMI_PROF_TITAN    J2000                    DYNAMIC -82960
      CASSINI_MIMI_GSE           J2000                    DYNAMIC -82961
      CASSINI_COROT_ENCELADUS    J2000                    DYNAMIC -82962
      CASSINI_MIMI_ECLIPJ2000    ECLIPJ2000               FIXED   -82963
      CASSINI_ISMF               J2000                    DYNAMIC -82964
      CASSINI_ISMF_X             J2000                    DYNAMIC -82965
      CASSINI_SZS_XY_PLANE       CASSINI_SATURN_EQU_SOLAR FIXED   -82966
      CASSINI_SC2SAT_SPIN_PLN    J2000                    DYNAMIC -82967
      CASSINI_SKR_SLS4_SOUTH     CASSINI_SATURN_EQU_SOLAR CK      -82970
      CASSINI_SKR_SLS4_NORTH     CASSINI_SATURN_EQU_SOLAR CK      -82971
      CASSINI_SKR_SLSM_SOUTH     CASSINI_SATURN_EQU_SOLAR CK      -82972
      CASSINI_SKR_SLSM_NORTH     CASSINI_SATURN_EQU_SOLAR CK      -82973
      CASSINI_JUPITER_EQU_SOLAR  J2000                    DYNAMIC -82976
      CASSINI_JUPITER_CENTERED   J2000                    DYNAMIC -82947
      CASSINI_MIMI_MAG_RTN       J2000                    DYNAMIC -82978
      CASSINI_MIMI_MAG_KRTP      J2000                    DYNAMIC -82979


   This table provides at-a-glance summary of key attributes of these
   frames (center, dynamic frames family, principal dynamic vectors,
   etc):

      Frame Name                 Center    Kind   
      ========================== ========= ====== ===========================================================
      CASSINI_MIMI_INCA_LL       CASSINI   FIXED  AXIS-SWAP,CASSINI_MIMI_INCA
      CASSINI_KRTP               CASSINI   TWOVEC +X(POS:SATURN->CASSINI),+Z((0,0,1)IAU_SATURN)
      CASSINI_SATURN_SOL_ORBIT   SATURN    TWOVEC +X(POS:SATURN->SUN),-Y(VEL:SUN->SATURN,J2000)
      CASSINI_SATURN_SYSTEM_III  SATURN    FIXED  ALIAS,IAU_SATURN
      CASSINI_SATURN_EQU_SOLAR   SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:SATURN->SUN)
      CASSINI_SATURN_KM_RAD      SATURN    FIXED  ALIAS,CASSINI_SKR_SLS4_SOUTH
      CASSINI_SKR_SLS1           SATURN    FIXED  ALIAS,IAU_SATURN
      CASSINI_SKR_SLS2           SATURN    EULER  w.r.t.SATURN_EQUATORIAL_SYSTEM
      CASSINI_SKR_SLS3           SATURN    EULER  w.r.t.SATURN_EQUATORIAL_SYSTEM
      CASSINI_SZM_TITAN          SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:TITAN->SATURN)
      CASSINI_SZM_ATLAS          SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:ATLAS->SATURN)
      CASSINI_SZM_CALYPSO        SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:CALYPSO->SATURN)
      CASSINI_SZM_DIONE          SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:DIONE->SATURN)
      CASSINI_SZM_ENCELADUS      SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:ENCELADUS->SATURN)
      CASSINI_SZM_EPIMETHEUS     SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:EPIMETHEUS->SATURN)
      CASSINI_SZM_HELENE         SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:HELENE->SATURN)
      CASSINI_SZM_HYPERION       SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:HYPERION->SATURN)
      CASSINI_SZM_JANUS          SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:JANUS->SATURN)
      CASSINI_SZM_IAPETUS        SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:IAPETUS->SATURN)
      CASSINI_SZM_MIMAS          SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:MIMAS->SATURN)
      CASSINI_SZM_RHEA           SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:RHEA->SATURN)
      CASSINI_SZM_TETHYS         SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:TETHYS->SATURN)
      CASSINI_SZM_PAN            SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:PAN->SATURN)
      CASSINI_SZM_PANDORA        SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:PANDORA->SATURN)
      CASSINI_SZM_PHOEBE         SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:PHOEBE->SATURN)
      CASSINI_SZM_PROMETHEUS     SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:PROMETHEUS->SATURN)
      CASSINI_SZM_TELESTO        SATURN    TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:TELESTO->SATURN)
      CASSINI_SZM_IO             SATURN    TWOVEC +Z((0,0,1)IAU_JUPITER),+X(POS:IO->JUPITER)
      CASSINI_SZM_MOON           SATURN    TWOVEC +Z((0,0,1)IAU_EARTH),+X(POS:MOON->EARTH)
      CASSINI_SUNJ2000           SUN       TWOVEC +Z((0,0,1)IAU_SUN),+X(POS:SUN->JUPITER@J2000)
      CASSINI_MIMI_INCA_BSIGHT   CASSINI   TWOVEC +X((1,0,0)CASSINI_MIMI_INCA_LL),+Z((0,0,1)IAU_SATURN)
      CASSINI_SATURN_CENTERED    CASSINI   TWOVEC +X(POS:CASSINI->SATURN),+Z((0,0,1)IAU_SATURN)
      CASSINI_TITAN_CENTERED     CASSINI   TWOVEC +X(POS:CASSINI->TITAN),+Z((0,0,1)IAU_TITAN)
      CASSINI_PITCH_GYROPHASE    CASSINI   TWOVEC +Z((0,0,1)J2000),+X(POS:CASSINI->SUN)
      CASSINI_SATURN_SKR_LOCK    CASSINI   TWOVEC +X(POS:CASSINI->SATURN),+Z((1,0,0)SATURN_KILOMETRIC_RAD)
      CASSINI_SATURN_SKR3_LOCK   CASSINI   TWOVEC +X(POS:CASSINI->SATURN),+Z((1,0,0)SKR_SLS3)
      CASSINI_SATURN_SKR4S_LOCK  CASSINI   TWOVEC +X(POS:CASSINI->SATURN),+Z((1,0,0)CASSINI_SKR_SLS4_SOUTH)
      CASSINI_SATURN_SKR4N_LOCK  CASSINI   TWOVEC +X(POS:CASSINI->SATURN),+Z((1,0,0)CASSINI_SKR_SLS4_NORTH)
      CASSINI_CRTN               CASSINI   TWOVEC +X(POS:CASSINI->SUN),+Z((0,0,1)IAU_SUN)
      CASSINI_MIMI_LEMMS_AA      CASSINI   TWOVEC +Z(POS:CASSINI->SUN),-Y((0,0,1)ECLIPJ2000)
      CASSINI_MIMI_PROF_TITAN    CASSINI   TWOVEC +Z(POS:CASSINI->TITAN),+X((0,0,1)IAU_SATURN)
      CASSINI_MIMI_GSE           EARTH     TWOVEC +X(POS:EARTH->SUN),-Y(VEL:SUN->EARTH,J2000)
      CASSINI_COROT_ENCELADUS    ENCELADUS TWOVEC +Z((0,0,1)IAU_SATURN),+X(POS:SATURN->ENCELADUS)
      CASSINI_MIMI_ECLIPJ2000    CASSINI   FIXED  AXIS-SWAP,ECLIPJ2000
      CASSINI_ISMF               SSB       TWOVEC +Z(LON1/LAT1,ECLIPJ2000),+X(LON2/LAT2,ECLIPJ2000)
      CASSINI_ISMF_X             SSB       TWOVEC +X(LON1/LAT1,ECLIPJ2000),+Z(LON2/LAT2,ECLIPJ2000)
      CASSINI_SZS_XY_PLANE       SATURN    FIXED  AXIS-SWAP,SATURN_EQUATORIAL_SYSTEM
      CASSINI_SC2SAT_SPIN_PLN    SATURN    TWOVEC +Y((0,0,1)SATURN_EQUATORIAL_SYSTEM),-Z(POS:CASSINI->SATURN)
      CASSINI_SKR_SLS4_SOUTH     SATURN    CK     http://www-pw.physics.uiowa.edu/SLS4/
      CASSINI_SKR_SLS4_NORTH     SATURN    CK     http://www-pw.physics.uiowa.edu/SLS4/
      CASSINI_SKR_SLSM_SOUTH     SATURN    CK     http://www.lesia.obspm.fr/kronos/skr_periodicity.php
      CASSINI_SKR_SLSM_NORTH     SATURN    CK     http://www.lesia.obspm.fr/kronos/skr_periodicity.php
      CASSINI_JUPITER_EQU_SOLAR  JUPITER   TWOVEC +Z((0,0,1)IAU_JUPITER),+X(POS:JUPITER->SUN)
      CASSINI_JUPITER_CENTERED   CASSINI   TWOVEC +X(POS:CASSINI->JUPITER),+Z((0,0,1)IAU_JUPITER)
      CASSINI_MIMI_MAG_RTN       SUN       TWOVEC +X(POS:SUN->CASSINI),+Z((0,0,1)IAU_SUN)
      CASSINI_MIMI_MAG_KRTP      CASSINI   TWOVEC +X(POS:SATURN->CASSINI),+Y((0,0,-1)IAU_SATURN)

   Many frames defined in this FK had different names and IDs prior to
   version 2.0.0. This table shows the current and the old names and
   IDs, which may still appear in some documentation and comments in
   other kernels:
      
      Current Frame Name         FrameID Old Frame Name             Old ID
      ========================== ======= ========================== =======
      CASSINI_MIMI_INCA_LL       -82920  CASSINI_MIMI_INCA_LL       1400000
      CASSINI_KRTP               -82921  CASSINI_KRTP               1400001
      CASSINI_SATURN_SOL_ORBIT   -82922  SATURN_SOLAR_ORBIT         1400002
      CASSINI_SATURN_SYSTEM_III  -82923  SATURN_SYSTEM_III          1400003
      CASSINI_SATURN_EQU_SOLAR   -82924  SATURN_EQUATORIAL_SYSTEM   1400004
      CASSINI_SATURN_KM_RAD      -82910  SATURN_KILOMETRIC_RAD      1410000
      CASSINI_SKR_SLS1           -82911  SKR_SLS1                   1410010
      CASSINI_SKR_SLS2           -82912  SKR_SLS2                   1410020
      CASSINI_SKR_SLS3           -82913  SKR_SLS3                   1410030
      CASSINI_SZM_TITAN          -82926  SZM_TITAN                  1400006
      CASSINI_SZM_ATLAS          -82927  SZM_ATLAS                  1400007
      CASSINI_SZM_CALYPSO        -82928  SZM_CALYPSO                1400008
      CASSINI_SZM_DIONE          -82929  SZM_DIONE                  1400009
      CASSINI_SZM_ENCELADUS      -82930  SZM_ENCELADUS              1400010
      CASSINI_SZM_EPIMETHEUS     -82931  SZM_EPIMETHEUS             1400011
      CASSINI_SZM_HELENE         -82932  SZM_HELENE                 1400012
      CASSINI_SZM_HYPERION       -82933  SZM_HYPERION               1400013
      CASSINI_SZM_JANUS          -82934  SZM_JANUS                  1400014
      CASSINI_SZM_IAPETUS        -82935  SZM_IAPETUS                1400015
      CASSINI_SZM_MIMAS          -82936  SZM_MIMAS                  1400016
      CASSINI_SZM_RHEA           -82937  SZM_RHEA                   1400017
      CASSINI_SZM_TETHYS         -82938  SZM_TETHYS                 1400018
      CASSINI_SZM_PAN            -82939  SZM_PAN                    1400019
      CASSINI_SZM_PANDORA        -82940  SZM_PANDORA                1400020
      CASSINI_SZM_PHOEBE         -82941  SZM_PHOEBE                 1400021
      CASSINI_SZM_PROMETHEUS     -82942  SZM_PROMETHEUS             1400022
      CASSINI_SZM_TELESTO        -82943  SZM_TELESTO                1400023
      CASSINI_SZM_IO             -82944  SZM_IO                     1400024
      CASSINI_SZM_MOON           -82945  SZM_MOON                   1400025
      CASSINI_SUNJ2000           -82946  SUNJ2000                   1400026
      CASSINI_MIMI_INCA_BSIGHT   -82951  XINCA_BORESIGHT_CENTERED   1450001
      CASSINI_SATURN_CENTERED    -82952  XINCA_SATURN_CENTERED      1450002
      CASSINI_TITAN_CENTERED     -82953  XINCA_TITAN_CENTERED       1450003
      CASSINI_PITCH_GYROPHASE    -82954  XINCA_PITCH_GYROPHASE      1450004
      CASSINI_SATURN_SKR_LOCK    -82955  XINCA_SATURN_SKR_LOCKED    1450005
      CASSINI_SATURN_SKR3_LOCK   -82980  XINCA_SATURN_SKR3_LOCKED   1450030
      CASSINI_SATURN_SKR4S_LOCK  -82981  XINCA_SATURN_SKR4S_LOCKED  1450031
      CASSINI_SATURN_SKR4N_LOCK  -82982  XINCA_SATURN_SKR4N_LOCKED  1450032
      CASSINI_CRTN               -82958  CASSINI_CRTN               1450008
      CASSINI_MIMI_LEMMS_AA      -82959  CASSINI_MIMI_LEMMS_AA      1450009
      CASSINI_MIMI_PROF_TITAN    -82960  CASSINI_MIMI_PROF_TITAN    1450010
      CASSINI_MIMI_GSE           -82961  CASSINI_MIMI_GSE           1450011
      CASSINI_COROT_ENCELADUS    -82962  COROTATION_ENCELADUS       1450012
      CASSINI_MIMI_ECLIPJ2000    -82963  MIMI_ECLIPJ2000            1450013
      CASSINI_ISMF               -82964  CASSINI_ISMF               1450014
      CASSINI_ISMF_X             -82965  CASSINI_ISMF_X             1450015
      CASSINI_SZS_XY_PLANE       -82966  XINCA_SZS_XY_PLANE         1450016
      CASSINI_SC2SAT_SPIN_PLN    -82967  XINCA_SC2SATNRML_SPIN_PLN  1450017
      CASSINI_SKR_SLS4_SOUTH     -82970  CASSINI_SKR_SLS4_SOUTH     1440000
      CASSINI_SKR_SLS4_NORTH     -82971  CASSINI_SKR_SLS4_NORTH     1441000
      CASSINI_SKR_SLSM_SOUTH     -82972  CASSINI_SKR_SLSM_SOUTH     1442000
      CASSINI_SKR_SLSM_NORTH     -82973  CASSINI_SKR_SLSM_NORTH     1443000
      CASSINI_JUPITER_EQU_SOLAR  -82976  JUPITER_EQUATORIAL_SYSTEM  1450026
      CASSINI_JUPITER_CENTERED   -82947  XINCA_JUPITER_CENTERED     1400027
      CASSINI_MIMI_MAG_RTN       -82978  CASSINI_MIMI_MAG_RTN       1450028
      CASSINI_MIMI_MAG_KRTP      -82979  CASSINI_MIMI_MAG_KRTP      1450029


Cassini MIMI Frames Hierarchy
----------------------------------------------------------

   NOTE: the diagram below does not show all frames defined in this FK.

   The diagram below shows the Cassini MIMI Frames Hierarchy:

             'ECLIPJ2000' INERTIAL
              |
              |
              |
             'CASSINI_MIMI_ECLIPJ2000'



             'IAU_EARTH' (EARTH BODY FIXED)
              |
              |<--- pck       +--- pck
              |               V
           'J2000' INERTIAL ---- 'IAU_SATURN' ---- 'CASSINI_SATURN_SYSTEM_III' 
              |                            |
              |<--- ck                     +--- 'CASSINI_SKR_SLS1'
              |
             'CASSINI_SC_COORD'
              |   |
              |  'CASSINI_MIMI_INCA'
              |        |
              |       'CASSINI_MIMI_INCA_LL'
              |
             'CASSINI_KRTP'
              |
              | 
              |
             'CASSINI_SATURN_SOL_ORBIT'
              |
              | 
              |
             'CASSINI_SATURN_EQU_SOLAR'
              |     |
              |    'CASSINI_SZS_XY_PLANE'
              |     |
              |    'CASSINI_SC2SAT_SPIN_PLN'
              |     |
              |    'CASSINI_SKR_SLS4_SOUTH' ---- 'CASSINI_SATURN_KM_RAD'
              |     |
              |    'CASSINI_SKR_SLS4_NORTH'
              |     |
              |    'CASSINI_SKR_SLSM_SOUTH'
              |     |
              |    'CASSINI_SKR_SLSM_NORTH'
              |     
              |
             'CASSINI_SKR_SLS2'
              |
              |
              |
             'CASSINI_SKR_SLS3'
              |
              |
              |
             'CASSINI_SZM_TITAN'
              |
              |
              |
             'CASSINI_SZM_ATLAS'
              |
              |
              |
             'CASSINI_SZM_CALYPSO'
              |
              |
              |
             'CASSINI_SZM_DIONE'
              |
              |
              |
             'CASSINI_SZM_ENCELADUS'
              |
              |
              |
             'CASSINI_SZM_EPIMETHEUS'
              |
              |
              |
             'CASSINI_SZM_HELENE'
              |
              |
              |
             'CASSINI_SZM_HYPERION'
              |
              |
              |
             'CASSINI_SZM_JANUS'
              |
              |
              |
             'CASSINI_SZM_IAPETUS'
              |
              |
              |
             'CASSINI_SZM_MIMAS'
              |
              |
              |
             'CASSINI_SZM_RHEA'
              |
              |
              |
             'CASSINI_SZM_TETHYS'
              |
              |
              |
             'CASSINI_SZM_PAN'
              |
              |
              |
             'CASSINI_SZM_PANDORA'
              |
              |
              |
             'CASSINI_SZM_PHOEBE'
              |
              |
              |
             'CASSINI_SZM_PROMETHEUS'
              |
              |
              |
             'CASSINI_SZM_TELESTO'
              |
              |
              |
             'CASSINI_SZM_IO'
              |
              |
              |
             'CASSINI_SZM_MOON'
              |
              |
              |
             'CASSINI_SUNJ2000'
              |
              |
              |
             'CASSINI_SZM_MOON'
              |
              |
              |
             'CASSINI_SUNJ2000'
              |
              |
              |
             'CASSINI_MIMI_INCA_BSIGHT'
              |
              | 
              |
             'CASSINI_SATURN_CENTERED'
              |
              | 
              |
             'CASSINI_TITAN_CENTERED'
              |
              | 
              |
             'CASSINI_PITCH_GYROPHASE'
              |
              | 
              |
             'CASSINI_MIMI_GSE'
              |
              |
              |
             'CASSINI_SATURN_SKR_LOCK'
              |
              |
              |
             'CASSINI_SATURN_SKR3_LOCK'
              |
              |
              |
             'CASSINI_SATURN_SKR4S_LOCK'
              |
              |
              |
             'CASSINI_SATURN_SKR4N_LOCK'
              |
              |
              |
             'CASSINI_CRTN'
              |
              |
              |
             'CASSINI_MIMI_LEMMS_AA'
              |
              |
              |
             'CASSINI_MIMI_PROF_TITAN'
              |
              |
              |
             'CASSINI_COROT_ENCELADUS'
              |
              |
              |
             'CASSINI_ISMF'
              |
              |
              |
             'CASSINI_ISMF_X'
              |
              |
              |
             'CASSINI_JUPITER_EQU_SOLAR'
              |
              |
              |
             'CASSINI_JUPITER_CENTERED'
              |
              |
              |
             'CASSINI_MIMI_MAG_RTN'
              |
              |
              |
             'CASSINI_MIMI_MAG_KRTP'


Cassini MIMI INCA Azimuth and Elevation Frame
----------------------------------------------------------

   This frame exists to allow more straightforward manipulations
   to occur in the INCA image product frames.  It is defined in 
   such a way that the SPICELIB routines RECLAT and LATREC will
   return azimuth (longitude) and elevation (latitude) in a format
   almost consistent with the MIMI flight software specification.

   Unfortunately, SPICE has a few conventions that are violated by
   INCA's image product frames:

      1. Frames in SPICE are always right-handed, preserving
         the cross product: i x j = k.

      2. The longitude utilized in the companion routines:
         RECLAT and LATREC is positive East longitude.

   One of these conventions would have to give to accommodate the
   definition of azimuth in the INCA image product frame.  Rather
   than violate either of these conventions, one must adjust the
   output of RECLAT:

         CALL RECLAT ( RECTAN, RADIUS, LONG, LAT )
         LONG = -LONG

   and the input of LATREC:

         CALL LATREC ( RADIUS, -LONG, LAT, RECTAN )

   This frame is defined such that:

                                        ^
                                        |
                                        |
                                        |
                                        | Z   (Z  )
                                        |  LL   sc
                             o          |
                          +90  +-----------------+
                               |                 |
                               |                 |
                               |                 |
                           T   |                 |
                           H   |                 |
                <----------E---|        x        |
                Y  (~X  )  T   |         X       |
                 LL   sc   A   |          LL     |
                               |        (into    |
                               |         screen) |
                               |                 |
                             o |                 |
                          -90  +-----------------+
                               o                   o
                            +45        PHI      -45


   where the boresight of the INCA detector is aligned with the 
   +X axis of the CASSINI_MIMI_INCA_LL frame, and PHI (azimuth)
   and THETA (elevation) are defined as described above.

   Again, note that PHI in this frame is -PHI of the actual INCA
   image frame.

   The matrix that rotates the CASSINI_MIMI_INCA frame into this
   configuration is:

      [     ]   [ 0 1 0 ]
      [ ROT ] = [ 0 0 1 ]
      [     ]   [ 1 0 0 ]

   And the corresponding frame definition:

      \begindata

         FRAME_CASSINI_MIMI_INCA_LL       = -82920
         FRAME_-82920_NAME                = 'CASSINI_MIMI_INCA_LL'
         FRAME_-82920_CLASS               = 4
         FRAME_-82920_CLASS_ID            = -82920
         FRAME_-82920_CENTER              = -82
         TKFRAME_-82920_SPEC              = 'MATRIX'
         TKFRAME_-82920_RELATIVE          = 'CASSINI_MIMI_INCA'
         TKFRAME_-82920_MATRIX            = ( 0.0,
                                              0.0,
                                              1.0,
                                              1.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                              1.0,
                                              0.0  )

      \begintext



Cassini MIMI KRTP Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows 
   (from [5]):

      Data (are) in KRTP, spherical polar Saturn centered coordinates,
      when R is radial away from Saturn, P is azimuthal, and T is 
      meridional.

      I interpret that to mean the magnitude of the B vector components
      as measures at the spacecraft, with the radial direction (R) 
      defined by the Saturn-to-Cassini unit vector, P the azimuthal 
      direction positive in the direction of Saturn's rotation, and 
      parallel to lines of constant latitude in spherical coordinates,
      and the meridional direction (T) completing the system (should
      be unit vector with a component in the Saturn north pole 
      direction).

   The implementation in this frame kernel makes the following
   associations to preserve the right-handed nature of the frame:

      (i) X-axis -> R-axis 
      (j) Y-axis -> P-axis
      (k) Z-axis -> T-axis

   The diagram below illustrates the RT plane of the KRTP frame. The
   plane is the plane that contains the Saturn-Cassini vector and
   Saturn's body rotation axis.


               Saturn's Rotation       ,*  Cassini
                     Axis            ,'
                       ^           ,'
                       |         ,'
             T-axis _  |       ,' 
                   /\  |    _,' 
                     \*|** ,'/ R-axis
                    * \| ,'
                    *  *' * 
                    *     *
                     *****  Saturn


             Figure: The KRTP "RT" Plane

   The P-axis of the CASSINI_KRTP frame is normal to the plane above, 
   and points in the direction of Saturn's rotation.  In the figure
   above, this would be directed into the page.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_KRTP               = -82921
         FRAME_-82921_NAME                = 'CASSINI_KRTP'
         FRAME_-82921_CLASS               = 5
         FRAME_-82921_CLASS_ID            = -82921
         FRAME_-82921_CENTER              = -82
         FRAME_-82921_RELATIVE            = 'J2000'
         FRAME_-82921_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82921_FAMILY              = 'TWO-VECTOR'
         FRAME_-82921_PRI_AXIS            = 'X'
         FRAME_-82921_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82921_PRI_OBSERVER        = 'SATURN'
         FRAME_-82921_PRI_TARGET          = 'CASSINI'
         FRAME_-82921_PRI_ABCORR          = 'NONE'
         FRAME_-82921_SEC_AXIS            = 'Z'
         FRAME_-82921_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82921_SEC_FRAME           = 'IAU_SATURN'
         FRAME_-82921_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82921_SEC_VECTOR          = ( 0.0, 0.0, 1.0 )

      \begintext



Saturn Solar Orbit Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      ... the primary axis is a vector parallel to the Saturn-Sun
      line and is labeled X. The Z-axis is the result of the cross
      product of Saturn's velocity vector relative to the Sun with
      the primary axis. The Y-axis completes the right-handed system.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z
                                Vs |                               
                                '. |
                                  'o Saturn
                                 .' \
                               .'    \
                             .' X     \
                           .'          Y
                         .'
                       .'
                      *
                     Sun

                  Figure: The Saturn Solar Orbit Frame

   In the diagram, X, Vs, and Y all lie in the plane normal to Z.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SATURN_SOL_ORBIT   = -82922
         FRAME_-82922_NAME                = 'CASSINI_SATURN_SOL_ORBIT'
         FRAME_-82922_CLASS               = 5
         FRAME_-82922_CLASS_ID            = -82922
         FRAME_-82922_CENTER              = 699
         FRAME_-82922_RELATIVE            = 'J2000'
         FRAME_-82922_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82922_FAMILY              = 'TWO-VECTOR'
         FRAME_-82922_PRI_AXIS            = 'X'
         FRAME_-82922_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82922_PRI_OBSERVER        = 'SATURN'
         FRAME_-82922_PRI_TARGET          = 'SUN'
         FRAME_-82922_PRI_ABCORR          = 'NONE'
         FRAME_-82922_SEC_AXIS            = '-Y'
         FRAME_-82922_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_VELOCITY'
         FRAME_-82922_SEC_OBSERVER        = 'SUN'
         FRAME_-82922_SEC_TARGET          = 'SATURN'
         FRAME_-82922_SEC_FRAME           = 'J2000'
         FRAME_-82922_SEC_ABCORR          = 'NONE'

      \begintext



Saturn System III Frame
----------------------------------------------------------

   The Saturn System III frame is simply an alias for the IAU_SATURN
   frame currently supported by the PCK system in SPICE.  This may 
   change, if our understanding of the System III analog at Saturn
   improves.

      \begindata

         FRAME_CASSINI_SATURN_SYSTEM_III  = -82923
         FRAME_-82923_NAME                = 'CASSINI_SATURN_SYSTEM_III'
         FRAME_-82923_CLASS               = 4
         FRAME_-82923_CLASS_ID            = -82923
         FRAME_-82923_CENTER              = 699
         TKFRAME_-82923_SPEC              = 'MATRIX'
         TKFRAME_-82923_RELATIVE          = 'IAU_SATURN'
         TKFRAME_-82923_MATRIX            = ( 1.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                              1.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                              1.0  )

      \begintext



Saturn Equatorial System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The primary axis, labeled Z, is parallel to the Saturn spin
      axis.  The Y-axis is then defined as the cross product of 
      this vector with the Saturn-Sun vector.  The X-axis completes
      the right-handed system and is directed "towards" the Sun.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z
                                   |
                                   | 
                                   o Saturn
                                 ./ \
                               .'/   \
                             .' / X   \
                           .'          Y
                         .'
                       .'
                      *
                     Sun

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Sun vector.  X 
   lies in this plane directed towards the Sun.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SATURN_EQU_SOLAR   = -82924
         FRAME_-82924_NAME                = 'CASSINI_SATURN_EQU_SOLAR'
         FRAME_-82924_CLASS               = 5
         FRAME_-82924_CLASS_ID            = -82924
         FRAME_-82924_CENTER              = 699
         FRAME_-82924_RELATIVE            = 'J2000'
         FRAME_-82924_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82924_FAMILY              = 'TWO-VECTOR'
         FRAME_-82924_PRI_AXIS            = 'Z'
         FRAME_-82924_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82924_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82924_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82924_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82924_SEC_AXIS            = 'X'
         FRAME_-82924_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82924_SEC_OBSERVER        = 'SATURN'
         FRAME_-82924_SEC_TARGET          = 'SUN'
         FRAME_-82924_SEC_ABCORR          = 'NONE'
  
      \begintext



Saturn Variable Kilometric Radiation Frames
----------------------------------------------------------

   Due to the work of the RPWS team we now have several Saturn 
   Kilometric Radiation frames available for use.  The general
   frame naming convention is as follows:

      CASSINI_SKR_SLS1
      CASSINI_SKR_SLS2
      CASSINI_SKR_SLS3
 
   As new frames are added, their numberings will be increased
   according to the papers released once new fits are available.
   The original CASSINI_SATURN_KM_RAD frame defined here when
   the first paper was released is now simply an alias that 
   points to the latest, released version.  This may change to
   a C-kernel or some other implementation if the need arises.

   The currently released paper [9], describes the time ranges 
   of the validity of the fits provided as follows:

      CASSINI_SKR_SLS2  [ Jan 1, 2004; Aug 28, 2006 ]
      CASSINI_SKR_SLS3  [ Jan 1, 2004; Aug 10, 2007 ]
      SLS4N     [ 2006:095; 2009:259]
      SLS4S     [ 2004:256; 2010:314]

   If one attempts to blend the two together, the transition 
   date should be: [ 2007-098T00:00 ], the last point in time
   the two independent fits match.  Using one or the other in 
   the time ranges [ Jan 1, 2004; May 20, 2006 ] the deviations
   between the two are less than 10 degrees, within the fit 
   uncertainty.

      \begindata

         FRAME_CASSINI_SATURN_KM_RAD      = -82910
         FRAME_-82910_NAME                = 'CASSINI_SATURN_KM_RAD'
         FRAME_-82910_CLASS               = 4
         FRAME_-82910_CLASS_ID            = -82910
         FRAME_-82910_CENTER              = 699
         TKFRAME_-82910_SPEC              = 'MATRIX'
         TKFRAME_-82910_RELATIVE          = 'CASSINI_SKR_SLS4_SOUTH'
         TKFRAME_-82910_MATRIX            = ( 1.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                              1.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                              1.0  )

      \begintext   

   The original SKR frame is synonymous the IAU_SATURN frame in SPICE.
   So, for convenience sake, we just define an alias to that frame.

      \begindata

         FRAME_CASSINI_SKR_SLS1           = -82911
         FRAME_-82911_NAME                = 'CASSINI_SKR_SLS1'
         FRAME_-82911_CLASS               = 4
         FRAME_-82911_CLASS_ID            = -82911
         FRAME_-82911_CENTER              = 699
         TKFRAME_-82911_SPEC              = 'MATRIX'
         TKFRAME_-82911_RELATIVE          = 'IAU_SATURN'
         TKFRAME_-82911_MATRIX            = ( 1.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                              1.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                              1.0  )

      \begintext   

   The frame definition for CASSINI_SKR_SLS2 is based off the correction [8]
   to the original [7] RPWS paper describing their modeling efforts 
   for this rotation.  As before, several assumptions are made 
   in the definition:

      (1) The Z-axis of the CASSINI_SKR_SLS2 frame is coincident with the 
          instantaneous body rotation axis of Saturn as defined by 
          the PCK.

      (2) The Julian date used as the independent time argument
          in [7] is synonymous with Julian date TDB.  The initial
          date is actually specified in UTC, but we will assume 
          that we can evaluate the polynomial in a TDB time base.
          Note: there is an issue with leapseconds, in that if 
          the polynomial was truly developed to fit "UTC" then
          as leapseconds are introduced, we will continually 
          drift one second ahead.

   The specific implementation of the frame is as follows:

      The Z-axis is identical to the CASSINI_SATURN_EQU_SOLAR
      Z-axis.  Given the way the CASSINI_SATURN_EQU_SOLAR is 
      defined, this is also identical to the Z-axis of the 
      IAU_SATURN frame.

      The X-axis is defined by the polynomial expansion 
      of the SKR peak solar longitude provided in [8]:

          lambda    = C  + w (t - T ) - phi(t - T )
                sun    0    0      0             0

      where:
                                2     3
          phi(T) = C + C T + C T + C T
                    1   2     3     4

      and the coefficients provided in the paper are:

                  o
          w  = 360 / 0.44970 JD
           0

          T  = JD(1-JAN-2004) = 2453005.5
           0

                    o
          C  = 100.0 
           0

                    o
          C  = 87.77
           1

                     o
          C  = -2.527 /JD
           2

                       o   2
          C  = 3.041E-3 /JD
           3

                        o   3
          C  = -7.913E-7 /JD 
           4

   The Euler family of dynamic frames supported by SPICE requires
   the independent time variable of the polynomial be specified in 
   TDB seconds past some reference epoch.  Further, since the 
   transformation captured here rotates vectors from the SKR based
   system to the equatorial one:

                            [      ]
                     V    = [ M(t) ]  V 
                      SZS   [      ]   SKR
                                    3

   the angle is specified in the opposite sense as discussed in [8].
   The other two angles of the Euler triple are set to zero, since
   the rotation from the CASSINI_SATURN_KM_RAD frame to the 
   CASSINI_SATURN_EQU_SOLAR is purely a rotation about the Z-axis.
   Thus, we need to determine a, b, c, d, and t  such that: 
                                               0

                                            2             3
          M(t) = a + b (t - t ) + c (t - t )  + d (t - t )
                             0            0             0

   So, we have:

      a =   -(C  - C )      = -1.2230000000000E+01
               0    1 


            -(w  - C )
               0    2
      b =  ------------     = -9.2946839019223E-03
               86400


                C
                 3
      c =  ------------     =  4.0736989883402E-13
                    2
             (86400)


                C
                 4
      c =  ------------     = -1.2268739303111E-21
                    3
             (86400)
     

      t =  1-JAN-2004 (UTC) = 1-JAN-2004 00:01:04.1839116 (TDB)
       0

   The SPICE frame definition follows based upon this follows:

      \begindata

         FRAME_CASSINI_SKR_SLS2           = -82912
         FRAME_-82912_NAME                = 'CASSINI_SKR_SLS2'
         FRAME_-82912_CLASS               = 5
         FRAME_-82912_CLASS_ID            = -82912
         FRAME_-82912_CENTER              = 699
         FRAME_-82912_RELATIVE            = 'CASSINI_SATURN_EQU_SOLAR'
         FRAME_-82912_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82912_FAMILY              = 'EULER'
         FRAME_-82912_EPOCH               = @2004-001T00:01:04.1839116
         FRAME_-82912_AXES                = ( 3, 1, 3 )
         FRAME_-82912_UNITS               = 'DEGREES'
         FRAME_-82912_ANGLE_1_COEFFS      = ( -1.2230000000000E+01,
                                              -9.2946839019223E-03,
                                               4.0736989883402E-13,
                                              -1.2268739303111E-21  )
         FRAME_-82912_ANGLE_2_COEFFS      = ( 0 )
         FRAME_-82912_ANGLE_3_COEFFS      = ( 0 )

      \begintext

   This frame is built around the definition of the SKR solar 
   longitude outlined in [7].  Several assumptions are made 
   in the definition:

      (1) The Z-axis of the CASSINI_SKR_SLS2 frame is coincident with the 
          instantaneous body rotation axis of Saturn as defined by 
          the PCK.

      (2) The Julian date used as the independent time argument
          in [7] is synonymous with Julian date TDB.  The initial
          date is actually specified in UTC, but we will assume 
          that we can evaluate the polynomial in a TDB time base.
          Note: there is an issue with leapseconds, in that if 
          the polynomial was truly developed to fit "UTC" then
          as leapseconds are introduced, we will continually 
          drift one second ahead.

   The specific implementation of the frame is as follows:

      The Z-axis is identical to the CASSINI_SATURN_EQU_SOLAR
      Z-axis.  Given the way the CASSINI_SATURN_EQU_SOLAR is 
      defined, this is also identical to the Z-axis of the 
      IAU_SATURN frame.

      The X-axis is defined by the polynomial expansion 
      of the SKR peak solar longitude provided in [7]:

          lambda    = C  + w (t - T ) - phi(t - T )
                sun    0    0      0             0

      where:
                                2     3
          phi(T) = C + C T + C T + C T
                    1   2     3     4

      and the coefficients provided in the paper are:

                  o
          w  = 360 / 0.44970 JD
           0

          T  = JD(1-JAN-2004) = 2453005.5
           0

                    o
          C  = 100.0 
           0

                    o
          C  = 100.2
           1

                      o
          C  = -2.6723 /JD
           2

                        o   2
          C  = 3.3462E-3 /JD
           3

                        o   3
          C  = -9.529E-7 /JD 
           4

   The Euler family of dynamic frames supported by SPICE requires
   the independent time variable of the polynomial be specified in 
   TDB seconds past some reference epoch.  Further, since the 
   transformation captured here rotates vectors from the SKR based
   system to the equatorial one:

                            [      ]
                     V    = [ M(t) ]  V 
                      SZS   [      ]   SKR
                                    3

   the angle is specified in the opposite sense as discussed in [7].
   The other two angles of the Euler triple are set to zero, since
   the rotation from the CASSINI_SATURN_KM_RAD frame to the 
   CASSINI_SATURN_EQU_SOLAR is purely a rotation about the Z-axis.
   Thus, we need to determine a, b, c, d, and t  such that: 
                                               0

                                            2             3
          M(t) = a + b (t - t ) + c (t - t )  + d (t - t )
                             0            0             0

   So, we have:

      a =   -(C  - C )      =  2.0000000000000E-01
               0    1 


            -(w  - C )
               0    2
      b =  ------------     = -9.2963656148852E-03
               86400


                C
                 3
      c =  ------------     =  4.4825424382716E-13
                    2
             (86400)


                C
                 4
      c =  ------------     = -1.4774272313830E-21
                    3
             (86400)
     

      t =  1-JAN-2004 (UTC) = 1-JAN-2004 00:01:04.1839116 (TDB)
       0

   The SPICE frame definition follows based upon this follows:

         FRAME_CASSINI_SKR_SLS2           = -82912
         FRAME_-82912_NAME                = 'CASSINI_SKR_SLS2'
         FRAME_-82912_CLASS               = 5
         FRAME_-82912_CLASS_ID            = -82912
         FRAME_-82912_CENTER              = 699
         FRAME_-82912_RELATIVE            = 'CASSINI_SATURN_EQU_SOLAR'
         FRAME_-82912_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82912_FAMILY              = 'EULER'
         FRAME_-82912_EPOCH               = @2004-001T00:01:04.1839116
         FRAME_-82912_AXES                = ( 3, 1, 3 )
         FRAME_-82912_UNITS               = 'DEGREES'
         FRAME_-82912_ANGLE_1_COEFFS      = (  2.0000000000000E-01, 
                                              -9.2963656148852E-03, 
                                               4.4825424382716E-13,
                                              -1.4774272313830E-21 )
         FRAME_-82912_ANGLE_2_COEFFS      = ( 0 )
         FRAME_-82912_ANGLE_3_COEFFS      = ( 0 )


CASSINI_SKR_SLS3----------------

   The definition of the CASSINI_SKR_SLS3 frame is based off the new model 
   presented in [9].  As with the CASSINI_SKR_SLS2 frame implementation, 
   several assumptions are made:

      (1) The Z-axis of the CASSINI_SKR_SLS3 frame is coincident with the 
          instantaneous body rotation axis of Saturn as defined by 
          the PCK.

      (2) The Julian date used as the independent time argument
          in [7] is synonymous with Julian date TDB.  The initial
          date is actually specified in UTC, but we will assume 
          that we can evaluate the polynomial in a TDB time base.
          Note: there is an issue with leapseconds, in that if 
          the polynomial was truly developed to fit "UTC" then
          as leapseconds are introduced, we will continually 
          drift one second ahead.

   The specific implementation of the frame is as follows:

      The Z-axis is identical to the CASSINI_SATURN_EQU_SOLAR
      Z-axis.  Given the way the CASSINI_SATURN_EQU_SOLAR is 
      defined, this is also identical to the Z-axis of the 
      IAU_SATURN frame.

      The X-axis is defined by the polynomial expansion 
      of the SKR peak solar longitude provided in [8]:

          lambda    = C  + w (t - T ) - phi(t - T )
                sun    0    0      0             0

      where:
                                2     3     4     5
          phi(T) = C + C T + C T + C T + C T + C T
                    1   2     3     4     5     6

      and the coefficients provided in the paper are:

                  o
          w  = 360 / 0.44970 JD
           0

          T  = JD(1-JAN-2004) = 2453005.5
           0

                    o
          C  = 100.0 
           0

                      o
          C  = 86.6681
           1

                      o
          C  = -2.7537 /JD
           2

                        o   2
          C  = 4.7730E-3 /JD
           3

                         o   3
          C  = -4.8755E-6 /JD 
           4

                         o   4
          C  = 3.5653E-9  /JD 
           5

                          o   5
          C  = -9.1485E-13 /JD 
           6



   The Euler family of dynamic frames supported by SPICE requires
   the independent time variable of the polynomial be specified in 
   TDB seconds past some reference epoch.  Further, since the 
   transformation captured here rotates vectors from the SKR based
   system to the equatorial one:

                            [      ]
                     V    = [ M(t) ]  V 
                      SZS   [      ]   SKR
                                    3

   the angle is specified in the opposite sense as discussed in [8].
   The other two angles of the Euler triple are set to zero, since
   the rotation from the CASSINI_SATURN_KM_RAD frame to the 
   CASSINI_SATURN_EQU_SOLAR is purely a rotation about the Z-axis.
   Thus, we need to determine a, b, c, d, e, f and t  such that: 
                                                    0

                                            2             3
          M(t) = a + b (t - t ) + c (t - t )  + d (t - t ) + ...
                             0            0             0

                           4             5
                 e (t - t )  + f (t - t )
                         0             0 

   So, we have:

      a =   -(C  - C )      = -1.333190000000000E+01
               0    1 


            -(w  - C )
               0    2
      b =  ------------     = -9.29730774451486E-03
               86400


                C
                 3
      c =  ------------     =  6.393872170781893E-13
                    2
             (86400)


                C
                 4
      d =  ------------     = -7.559236506042652E-21
                    3
             (86400)
     

                C
                 5
      e =  ------------     = 6.397953940857409E-29
                    4
             (86400)


                C
                 6
      f =  ------------     = -1.900120659809354E-37
                    5
             (86400)

    

      t =  1-JAN-2004 (UTC) = 1-JAN-2004 00:01:04.1839116 (TDB)
       0

   The SPICE frame definition follows based upon this follows:

      \begindata

         FRAME_CASSINI_SKR_SLS3           = -82913
         FRAME_-82913_NAME                = 'CASSINI_SKR_SLS3'
         FRAME_-82913_CLASS               = 5
         FRAME_-82913_CLASS_ID            = -82913
         FRAME_-82913_CENTER              = 699
         FRAME_-82913_RELATIVE            = 'CASSINI_SATURN_EQU_SOLAR'
         FRAME_-82913_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82913_FAMILY              = 'EULER'
         FRAME_-82913_EPOCH               = @2004-001T00:01:04.1839116
         FRAME_-82913_AXES                = ( 3, 1, 3 )
         FRAME_-82913_UNITS               = 'DEGREES'
         FRAME_-82913_ANGLE_1_COEFFS      = ( -1.333190000000000E+01,
                                              -9.29730774451486E-03,
                                               6.393872170781893E-13,
                                              -7.559236506042652E-21,
                                               6.397953940857409E-29,
                                              -1.900120659809354E-37 )
         FRAME_-82913_ANGLE_2_COEFFS      = ( 0 )
         FRAME_-82913_ANGLE_3_COEFFS      = ( 0 )

      \begintext


Saturn-Titan System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Titan o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_TITAN          = -82926
         FRAME_-82926_NAME                = 'CASSINI_SZM_TITAN'
         FRAME_-82926_CLASS               = 5
         FRAME_-82926_CLASS_ID            = -82926
         FRAME_-82926_CENTER              = 699
         FRAME_-82926_RELATIVE            = 'J2000'
         FRAME_-82926_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82926_FAMILY              = 'TWO-VECTOR'
         FRAME_-82926_PRI_AXIS            = 'Z'
         FRAME_-82926_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82926_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82926_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82926_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82926_SEC_AXIS            = 'X'
         FRAME_-82926_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82926_SEC_OBSERVER        = 'TITAN'
         FRAME_-82926_SEC_TARGET          = 'SATURN'
         FRAME_-82926_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Atlas System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Atlas o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_ATLAS          = -82927
         FRAME_-82927_NAME                = 'CASSINI_SZM_ATLAS'
         FRAME_-82927_CLASS               = 5
         FRAME_-82927_CLASS_ID            = -82927
         FRAME_-82927_CENTER              = 699
         FRAME_-82927_RELATIVE            = 'J2000'
         FRAME_-82927_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82927_FAMILY              = 'TWO-VECTOR'
         FRAME_-82927_PRI_AXIS            = 'Z'
         FRAME_-82927_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82927_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82927_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82927_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82927_SEC_AXIS            = 'X'
         FRAME_-82927_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82927_SEC_OBSERVER        = 'ATLAS'
         FRAME_-82927_SEC_TARGET          = 'SATURN'
         FRAME_-82927_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Calypso System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Calypso o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_CALYPSO        = -82928
         FRAME_-82928_NAME                = 'CASSINI_SZM_CALYPSO'
         FRAME_-82928_CLASS               = 5
         FRAME_-82928_CLASS_ID            = -82928
         FRAME_-82928_CENTER              = 699
         FRAME_-82928_RELATIVE            = 'J2000'
         FRAME_-82928_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82928_FAMILY              = 'TWO-VECTOR'
         FRAME_-82928_PRI_AXIS            = 'Z'
         FRAME_-82928_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82928_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82928_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82928_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82928_SEC_AXIS            = 'X'
         FRAME_-82928_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82928_SEC_OBSERVER        = 'CALYPSO'
         FRAME_-82928_SEC_TARGET          = 'SATURN'
         FRAME_-82928_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Dione System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Dione o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_DIONE          = -82929
         FRAME_-82929_NAME                = 'CASSINI_SZM_DIONE'
         FRAME_-82929_CLASS               = 5
         FRAME_-82929_CLASS_ID            = -82929
         FRAME_-82929_CENTER              = 699
         FRAME_-82929_RELATIVE            = 'J2000'
         FRAME_-82929_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82929_FAMILY              = 'TWO-VECTOR'
         FRAME_-82929_PRI_AXIS            = 'Z'
         FRAME_-82929_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82929_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82929_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82929_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82929_SEC_AXIS            = 'X'
         FRAME_-82929_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82929_SEC_OBSERVER        = 'DIONE'
         FRAME_-82929_SEC_TARGET          = 'SATURN'
         FRAME_-82929_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Enceladus System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Enceladus o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_ENCELADUS      = -82930
         FRAME_-82930_NAME                = 'CASSINI_SZM_ENCELADUS'
         FRAME_-82930_CLASS               = 5
         FRAME_-82930_CLASS_ID            = -82930
         FRAME_-82930_CENTER              = 699
         FRAME_-82930_RELATIVE            = 'J2000'
         FRAME_-82930_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82930_FAMILY              = 'TWO-VECTOR'
         FRAME_-82930_PRI_AXIS            = 'Z'
         FRAME_-82930_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82930_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82930_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82930_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82930_SEC_AXIS            = 'X'
         FRAME_-82930_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82930_SEC_OBSERVER        = 'ENCELADUS'
         FRAME_-82930_SEC_TARGET          = 'SATURN'
         FRAME_-82930_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Epimetheus System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Epimetheus o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_EPIMETHEUS     = -82931
         FRAME_-82931_NAME                = 'CASSINI_SZM_EPIMETHEUS'
         FRAME_-82931_CLASS               = 5
         FRAME_-82931_CLASS_ID            = -82931
         FRAME_-82931_CENTER              = 699
         FRAME_-82931_RELATIVE            = 'J2000'
         FRAME_-82931_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82931_FAMILY              = 'TWO-VECTOR'
         FRAME_-82931_PRI_AXIS            = 'Z'
         FRAME_-82931_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82931_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82931_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82931_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82931_SEC_AXIS            = 'X'
         FRAME_-82931_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82931_SEC_OBSERVER        = 'EPIMETHEUS'
         FRAME_-82931_SEC_TARGET          = 'SATURN'
         FRAME_-82931_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Helene System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Helene o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_HELENE         = -82932
         FRAME_-82932_NAME                = 'CASSINI_SZM_HELENE'
         FRAME_-82932_CLASS               = 5
         FRAME_-82932_CLASS_ID            = -82932
         FRAME_-82932_CENTER              = 699
         FRAME_-82932_RELATIVE            = 'J2000'
         FRAME_-82932_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82932_FAMILY              = 'TWO-VECTOR'
         FRAME_-82932_PRI_AXIS            = 'Z'
         FRAME_-82932_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82932_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82932_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82932_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82932_SEC_AXIS            = 'X'
         FRAME_-82932_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82932_SEC_OBSERVER        = 'HELENE'
         FRAME_-82932_SEC_TARGET          = 'SATURN'
         FRAME_-82932_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Hyperion System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Hyperion o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_HYPERION       = -82933
         FRAME_-82933_NAME                = 'CASSINI_SZM_HYPERION'
         FRAME_-82933_CLASS               = 5
         FRAME_-82933_CLASS_ID            = -82933
         FRAME_-82933_CENTER              = 699
         FRAME_-82933_RELATIVE            = 'J2000'
         FRAME_-82933_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82933_FAMILY              = 'TWO-VECTOR'
         FRAME_-82933_PRI_AXIS            = 'Z'
         FRAME_-82933_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82933_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82933_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82933_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82933_SEC_AXIS            = 'X'
         FRAME_-82933_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82933_SEC_OBSERVER        = 'HYPERION'
         FRAME_-82933_SEC_TARGET          = 'SATURN'
         FRAME_-82933_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Janus System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Janus o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_JANUS          = -82934
         FRAME_-82934_NAME                = 'CASSINI_SZM_JANUS'
         FRAME_-82934_CLASS               = 5
         FRAME_-82934_CLASS_ID            = -82934
         FRAME_-82934_CENTER              = 699
         FRAME_-82934_RELATIVE            = 'J2000'
         FRAME_-82934_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82934_FAMILY              = 'TWO-VECTOR'
         FRAME_-82934_PRI_AXIS            = 'Z'
         FRAME_-82934_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82934_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82934_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82934_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82934_SEC_AXIS            = 'X'
         FRAME_-82934_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82934_SEC_OBSERVER        = 'JANUS'
         FRAME_-82934_SEC_TARGET          = 'SATURN'
         FRAME_-82934_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Iapetus System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Iapetus o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_IAPETUS        = -82935
         FRAME_-82935_NAME                = 'CASSINI_SZM_IAPETUS'
         FRAME_-82935_CLASS               = 5
         FRAME_-82935_CLASS_ID            = -82935
         FRAME_-82935_CENTER              = 699
         FRAME_-82935_RELATIVE            = 'J2000'
         FRAME_-82935_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82935_FAMILY              = 'TWO-VECTOR'
         FRAME_-82935_PRI_AXIS            = 'Z'
         FRAME_-82935_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82935_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82935_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82935_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82935_SEC_AXIS            = 'X'
         FRAME_-82935_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82935_SEC_OBSERVER        = 'IAPETUS'
         FRAME_-82935_SEC_TARGET          = 'SATURN'
         FRAME_-82935_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Mimus System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Mimus o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_MIMAS          = -82936
         FRAME_-82936_NAME                = 'CASSINI_SZM_MIMAS'
         FRAME_-82936_CLASS               = 5
         FRAME_-82936_CLASS_ID            = -82936
         FRAME_-82936_CENTER              = 699
         FRAME_-82936_RELATIVE            = 'J2000'
         FRAME_-82936_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82936_FAMILY              = 'TWO-VECTOR'
         FRAME_-82936_PRI_AXIS            = 'Z'
         FRAME_-82936_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82936_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82936_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82936_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82936_SEC_AXIS            = 'X'
         FRAME_-82936_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82936_SEC_OBSERVER        = 'MIMAS'
         FRAME_-82936_SEC_TARGET          = 'SATURN'
         FRAME_-82936_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Titan System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Rhea o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_RHEA           = -82937
         FRAME_-82937_NAME                = 'CASSINI_SZM_RHEA'
         FRAME_-82937_CLASS               = 5
         FRAME_-82937_CLASS_ID            = -82937
         FRAME_-82937_CENTER              = 699
         FRAME_-82937_RELATIVE            = 'J2000'
         FRAME_-82937_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82937_FAMILY              = 'TWO-VECTOR'
         FRAME_-82937_PRI_AXIS            = 'Z'
         FRAME_-82937_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82937_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82937_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82937_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82937_SEC_AXIS            = 'X'
         FRAME_-82937_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82937_SEC_OBSERVER        = 'RHEA'
         FRAME_-82937_SEC_TARGET          = 'SATURN'
         FRAME_-82937_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Tethys System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Tethys o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_TETHYS         = -82938
         FRAME_-82938_NAME                = 'CASSINI_SZM_TETHYS'
         FRAME_-82938_CLASS               = 5
         FRAME_-82938_CLASS_ID            = -82938
         FRAME_-82938_CENTER              = 699
         FRAME_-82938_RELATIVE            = 'J2000'
         FRAME_-82938_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82938_FAMILY              = 'TWO-VECTOR'
         FRAME_-82938_PRI_AXIS            = 'Z'
         FRAME_-82938_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82938_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82938_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82938_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82938_SEC_AXIS            = 'X'
         FRAME_-82938_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82938_SEC_OBSERVER        = 'TETHYS'
         FRAME_-82938_SEC_TARGET          = 'SATURN'
         FRAME_-82938_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Pan System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Pan o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_PAN            = -82939
         FRAME_-82939_NAME                = 'CASSINI_SZM_PAN'
         FRAME_-82939_CLASS               = 5
         FRAME_-82939_CLASS_ID            = -82939
         FRAME_-82939_CENTER              = 699
         FRAME_-82939_RELATIVE            = 'J2000'
         FRAME_-82939_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82939_FAMILY              = 'TWO-VECTOR'
         FRAME_-82939_PRI_AXIS            = 'Z'
         FRAME_-82939_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82939_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82939_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82939_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82939_SEC_AXIS            = 'X'
         FRAME_-82939_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82939_SEC_OBSERVER        = 'PAN'
         FRAME_-82939_SEC_TARGET          = 'SATURN'
         FRAME_-82939_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Pandora System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Pandora o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_PANDORA        = -82940
         FRAME_-82940_NAME                = 'CASSINI_SZM_PANDORA'
         FRAME_-82940_CLASS               = 5
         FRAME_-82940_CLASS_ID            = -82940
         FRAME_-82940_CENTER              = 699
         FRAME_-82940_RELATIVE            = 'J2000'
         FRAME_-82940_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82940_FAMILY              = 'TWO-VECTOR'
         FRAME_-82940_PRI_AXIS            = 'Z'
         FRAME_-82940_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82940_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82940_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82940_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82940_SEC_AXIS            = 'X'
         FRAME_-82940_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82940_SEC_OBSERVER        = 'PANDORA'
         FRAME_-82940_SEC_TARGET          = 'SATURN'
         FRAME_-82940_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Phoebe System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Phoebe o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_PHOEBE         = -82941
         FRAME_-82941_NAME                = 'CASSINI_SZM_PHOEBE'
         FRAME_-82941_CLASS               = 5
         FRAME_-82941_CLASS_ID            = -82941
         FRAME_-82941_CENTER              = 699
         FRAME_-82941_RELATIVE            = 'J2000'
         FRAME_-82941_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82941_FAMILY              = 'TWO-VECTOR'
         FRAME_-82941_PRI_AXIS            = 'Z'
         FRAME_-82941_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82941_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82941_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82941_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82941_SEC_AXIS            = 'X'
         FRAME_-82941_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82941_SEC_OBSERVER        = 'PHOEBE'
         FRAME_-82941_SEC_TARGET          = 'SATURN'
         FRAME_-82941_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Prometheus System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Prometheus o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_PROMETHEUS     = -82942
         FRAME_-82942_NAME                = 'CASSINI_SZM_PROMETHEUS'
         FRAME_-82942_CLASS               = 5
         FRAME_-82942_CLASS_ID            = -82942
         FRAME_-82942_CENTER              = 699
         FRAME_-82942_RELATIVE            = 'J2000'
         FRAME_-82942_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82942_FAMILY              = 'TWO-VECTOR'
         FRAME_-82942_PRI_AXIS            = 'Z'
         FRAME_-82942_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82942_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82942_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82942_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82942_SEC_AXIS            = 'X'
         FRAME_-82942_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82942_SEC_OBSERVER        = 'PROMETHEUS'
         FRAME_-82942_SEC_TARGET          = 'SATURN'
         FRAME_-82942_SEC_ABCORR          = 'NONE'

      \begintext


Saturn-Telesto System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Saturn Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Saturn spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Saturn-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Telesto o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Saturn

                  Figure: The Saturn Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Saturn's Spin axis (Z) and the Saturn-Moon vector.  X 
   lies in this plane directed towards Saturn.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_TELESTO        = -82943
         FRAME_-82943_NAME                = 'CASSINI_SZM_TELESTO'
         FRAME_-82943_CLASS               = 5
         FRAME_-82943_CLASS_ID            = -82943
         FRAME_-82943_CENTER              = 699
         FRAME_-82943_RELATIVE            = 'J2000'
         FRAME_-82943_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82943_FAMILY              = 'TWO-VECTOR'
         FRAME_-82943_PRI_AXIS            = 'Z'
         FRAME_-82943_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82943_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82943_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82943_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82943_SEC_AXIS            = 'X'
         FRAME_-82943_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82943_SEC_OBSERVER        = 'TELESTO'
         FRAME_-82943_SEC_TARGET          = 'SATURN'
         FRAME_-82943_SEC_ABCORR          = 'NONE'

      \begintext


Jupiter-Io System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Jupiter Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Jupiter spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Jupiter-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Io o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Jupiter

                  Figure: The Jupiter Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Jupiter's Spin axis (Z) and the Jupiter-Moon vector.  X 
   lies in this plane directed towards Jupiter.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_IO             = -82944
         FRAME_-82944_NAME                = 'CASSINI_SZM_IO'
         FRAME_-82944_CLASS               = 5
         FRAME_-82944_CLASS_ID            = -82944
         FRAME_-82944_CENTER              = 599
         FRAME_-82944_RELATIVE            = 'J2000'
         FRAME_-82944_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82944_FAMILY              = 'TWO-VECTOR'
         FRAME_-82944_PRI_AXIS            = 'Z'
         FRAME_-82944_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82944_PRI_FRAME           = 'IAU_JUPITER'
         FRAME_-82944_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82944_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82944_SEC_AXIS            = 'X'
         FRAME_-82944_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82944_SEC_OBSERVER        = 'IO'
         FRAME_-82944_SEC_TARGET          = 'JUPITER'
         FRAME_-82944_SEC_ABCORR          = 'NONE'

      \begintext


Earth-Moon System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The Earth Moon System (SZM) frame is a dynamically defined
      frame whose primary axis, labeled Z, is the Earth spin axis.
      The Y-axis of this frame is chosen to be the cross product
      of the Earth-ReferenceMoon vector and this Z-axis.
      The X-axis completes the right-handed frame.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z   .'
                                   |   .'
                                   | .'
                             Moon o'
                                 ./ \
                               .'/   \
                             .' / X   \
                      |    .'          Y
                      |  .'
                      |.'
                      *
                     Earth

                  Figure: The Earth Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Earth's Spin axis (Z) and the Earth-Moon vector.  X 
   lies in this plane directed towards Earth.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZM_MOON           = -82945
         FRAME_-82945_NAME                = 'CASSINI_SZM_MOON'
         FRAME_-82945_CLASS               = 5
         FRAME_-82945_CLASS_ID            = -82945
         FRAME_-82945_CENTER              = 399
         FRAME_-82945_RELATIVE            = 'J2000'
         FRAME_-82945_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82945_FAMILY              = 'TWO-VECTOR'
         FRAME_-82945_PRI_AXIS            = 'Z'
         FRAME_-82945_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82945_PRI_FRAME           = 'IAU_EARTH'
         FRAME_-82945_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82945_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82945_SEC_AXIS            = 'X'
         FRAME_-82945_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82945_SEC_OBSERVER        = 'MOON'
         FRAME_-82945_SEC_TARGET          = 'EARTH'
         FRAME_-82945_SEC_ABCORR          = 'NONE'

      \begintext


Sun Ecliptic of J2000.0 Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, prescribed as follows:

                     | Sun Spin Axis (Z axis)
                     |
                     |
                 Sun O ---- (Y axis)
                    /
                   /
                  /
                Jupiter (X axis)

   The primary vector points along the Sun spin axis, and the secondary
   vector that defines the X axis points from the Sun to Jupiter.  Since
   the frame is intended to be inertial, it is frozen at the J2000.0 
   epoch.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SUNJ2000           = -82946
         FRAME_-82946_NAME                = 'CASSINI_SUNJ2000'
         FRAME_-82946_CLASS               = 5
         FRAME_-82946_CLASS_ID            = -82946
         FRAME_-82946_CENTER              = 10
         FRAME_-82946_RELATIVE            = 'J2000'
         FRAME_-82946_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82946_FAMILY              = 'TWO-VECTOR'
         FRAME_-82946_PRI_AXIS            = 'Z'
         FRAME_-82946_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82946_PRI_FRAME           = 'IAU_SUN'
         FRAME_-82946_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82946_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82946_SEC_AXIS            = 'X'
         FRAME_-82946_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82946_SEC_OBSERVER        = 'SUN'
         FRAME_-82946_SEC_TARGET          = 'JUPITER'
         FRAME_-82946_SEC_ABCORR          = 'NONE'
         FRAME_-82946_FREEZE_EPOCH        = @2000-JAN-01/12:00:00.000

      \begintext

     
   


----------------------------------------------------------
Cassini/MIMI XINCA Specific Frames
----------------------------------------------------------


XINCA Boresight Centered Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   The primary axis is the CASSINI_MIMI_INCA_LL boresight X axis and
   is labeled X. The secondary Z axis is the Z axis of the IAU_SATURN
   frame. The Y-axis completes the right-handed system.
   
   This frame is primarily used by the XINCA program. XINCA's skymap 
   display is defined to display every frame with the Z axis up, 
   X axis into the page and Y axis out to the left. So in the
   skymap, using this frame, Z or up is the spin axis of Saturn, 
   into the page is the boresight. 
    
    
      \begindata
     
         FRAME_CASSINI_MIMI_INCA_BSIGHT   = -82951
         FRAME_-82951_NAME                = 'CASSINI_MIMI_INCA_BSIGHT'
         FRAME_-82951_CLASS               = 5 
         FRAME_-82951_CLASS_ID            = -82951
         FRAME_-82951_CENTER              = -82
         FRAME_-82951_RELATIVE            = 'J2000' 
         FRAME_-82951_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82951_FAMILY              = 'TWO-VECTOR'
         FRAME_-82951_PRI_AXIS            = 'X'
         FRAME_-82951_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82951_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82951_PRI_VECTOR          = ( 1.0, 0.0, 0.0 )
         FRAME_-82951_PRI_FRAME           = 'CASSINI_MIMI_INCA_LL'
         FRAME_-82951_SEC_AXIS            = 'Z'
         FRAME_-82951_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82951_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82951_SEC_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82951_SEC_FRAME           = 'IAU_SATURN'
   
      \begintext



XINCA Saturn Centered Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   The primary axis is the CASSINI spacecraft to Saturn vector and
   is labeled X. The secondary Z axis is the Z axis of the IAU_SATURN
   frame. The Y-axis completes the right-handed system.
   
    This frame is primarily used by the XINCA program. XINCA's skymap 
   display is defined to display every frame with the Z axis up, 
   X axis into the page and Y axis out to the left. So in the
   skymap, using this frame, into the page is the spacecraft to Saturn
   vector, Z axis or up is the Saturn spin axis.
   
      \begindata
     
         FRAME_CASSINI_SATURN_CENTERED    = -82952
         FRAME_-82952_NAME                = 'CASSINI_SATURN_CENTERED'
         FRAME_-82952_CLASS               = 5 
         FRAME_-82952_CLASS_ID            = -82952
         FRAME_-82952_CENTER              = -82
         FRAME_-82952_RELATIVE            = 'J2000' 
         FRAME_-82952_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82952_FAMILY              = 'TWO-VECTOR'
         FRAME_-82952_PRI_AXIS            = 'X'
         FRAME_-82952_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82952_PRI_OBSERVER        = 'CASSINI'
         FRAME_-82952_PRI_TARGET          = 'SATURN'
         FRAME_-82952_PRI_ABCORR          = 'NONE'
         FRAME_-82952_SEC_AXIS            = 'Z'
         FRAME_-82952_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82952_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82952_SEC_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82952_SEC_FRAME           = 'IAU_SATURN'
   
      \begintext
   


XINCA Titan Centered Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   The primary axis is the CASSINI spacecraft to Titan vector and
   is labeled X. The secondary Z axis is the Z axis of the IAU_TITAN
   frame. The Y-axis completes the right-handed system.
   
   This frame is primarily used by the XINCA program. XINCA's skymap 
   display is defined to display every frame with the Z axis up, 
   X axis into the page and Y axis out to the left. So in the
   skymap, using this frame, into the page is the Cassini to Titan
   vector and Z or up is the Titan spin axis.
   
   
      \begindata
     
         FRAME_CASSINI_TITAN_CENTERED     = -82953
         FRAME_-82953_NAME                = 'CASSINI_TITAN_CENTERED'
         FRAME_-82953_CLASS               = 5 
         FRAME_-82953_CLASS_ID            = -82953
         FRAME_-82953_CENTER              = -82
         FRAME_-82953_RELATIVE            = 'J2000' 
         FRAME_-82953_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82953_FAMILY              = 'TWO-VECTOR'
         FRAME_-82953_PRI_AXIS            = 'X'
         FRAME_-82953_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82953_PRI_OBSERVER        = 'CASSINI'
         FRAME_-82953_PRI_TARGET          = 'TITAN'
         FRAME_-82953_PRI_ABCORR          = 'NONE'
         FRAME_-82953_SEC_AXIS            = 'Z'
         FRAME_-82953_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82953_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82953_SEC_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82953_SEC_FRAME           = 'IAU_TITAN'
   
      \begintext



XINCA XINCA Pitch Gyrophase Frame
----------------------------------------------------------
      \begindata

         FRAME_CASSINI_PITCH_GYROPHASE    = -82954
         FRAME_-82954_NAME                = 'CASSINI_PITCH_GYROPHASE'
         FRAME_-82954_CLASS               = 5
         FRAME_-82954_CLASS_ID            = -82954
         FRAME_-82954_CENTER              = -82 
         FRAME_-82954_RELATIVE            = 'J2000'
         FRAME_-82954_DEF_STYLE           = 'PARAMETERIZED' 
         FRAME_-82954_FAMILY              = 'TWO-VECTOR'
         FRAME_-82954_PRI_AXIS            = 'Z' 
         FRAME_-82954_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82954_PRI_SPEC            = 'RECTANGULAR' 
         FRAME_-82954_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82954_PRI_FRAME           = 'J2000'
         FRAME_-82954_SEC_AXIS            = 'X'
         FRAME_-82954_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82954_SEC_OBSERVER        = 'CASSINI'
         FRAME_-82954_SEC_TARGET          = 'SUN'
         FRAME_-82954_SEC_ABCORR          = 'NONE'

      \begintext

XINCA Saturn SKR Locked Frame
----------------------------------------------------------

   This frame is a Saturn centered frame, similar to
   CASSINI_SATURN_CENTERED, as the primary axis is defined as the
   spacecraft-Saturn vector. However, instead of utilizing the rotation
   axis of Saturn as the definition of the proper clock angle about the
   primary axis, this frame uses the SKR prime meridian. This is, of
   course, inherently ill-posed when the spacecraft flies near Saturn's
   equatorial plane.

      \begindata

         FRAME_CASSINI_SATURN_SKR_LOCK    = -82955
         FRAME_-82955_NAME                = 'CASSINI_SATURN_SKR_LOCK'
         FRAME_-82955_CLASS               = 5
         FRAME_-82955_CLASS_ID            = -82955
         FRAME_-82955_CENTER              = -82
         FRAME_-82955_RELATIVE            = 'J2000'
         FRAME_-82955_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82955_FAMILY              = 'TWO-VECTOR'
         FRAME_-82955_PRI_AXIS            = 'X'
         FRAME_-82955_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82955_PRI_OBSERVER        = 'CASSINI'
         FRAME_-82955_PRI_TARGET          = 'SATURN'
         FRAME_-82955_PRI_ABCORR          = 'NONE'
         FRAME_-82955_SEC_AXIS            = 'Z'
         FRAME_-82955_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82955_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82955_SEC_VECTOR          = ( 1.0, 0.0, 0.0 )
         FRAME_-82955_SEC_FRAME           = 'CASSINI_SATURN_KM_RAD' 

      \begintext




XINCA Saturn SKR Locked Frame to SKR3
----------------------------------------------------------

   This frame is a Saturn centered frame, similar to
   CASSINI_SATURN_CENTERED, as the primary axis is defined as the
   spacecraft-Saturn vector. However, instead of utilizing the rotation
   axis of Saturn as the definition of the proper clock angle about the
   primary axis, this frame uses the SKR 3 prime meridian. This is, of
   course, inherently ill-posed when the spacecraft flies near Saturn's
   equatorial plane.

      \begindata

         FRAME_CASSINI_SATURN_SKR3_LOCK   = -82980
         FRAME_-82980_NAME                = 'CASSINI_SATURN_SKR3_LOCK'
         FRAME_-82980_CLASS               = 5
         FRAME_-82980_CLASS_ID            = -82980
         FRAME_-82980_CENTER              = -82
         FRAME_-82980_RELATIVE            = 'J2000'
         FRAME_-82980_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82980_FAMILY              = 'TWO-VECTOR'
         FRAME_-82980_PRI_AXIS            = 'X'
         FRAME_-82980_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82980_PRI_OBSERVER        = 'CASSINI'
         FRAME_-82980_PRI_TARGET          = 'SATURN'
         FRAME_-82980_PRI_ABCORR          = 'NONE'
         FRAME_-82980_SEC_AXIS            = 'Z'
         FRAME_-82980_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82980_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82980_SEC_VECTOR          = ( 1.0, 0.0, 0.0 )
         FRAME_-82980_SEC_FRAME           = 'CASSINI_SKR_SLS3' 

      \begintext




XINCA Saturn SKR Locked Frame to SKR4 South
----------------------------------------------------------

   This frame is a Saturn centered frame, similar to
   CASSINI_SATURN_CENTERED, as the primary axis is defined as the
   spacecraft-Saturn vector. However, instead of utilizing the rotation
   axis of Saturn as the definition of the proper clock angle about the
   primary axis, this frame uses the SKR 4 South prime meridian. This
   is, of course, inherently ill-posed when the spacecraft flies near
   Saturn's equatorial plane.

      \begindata

         FRAME_CASSINI_SATURN_SKR4S_LOCK  = -82981
         FRAME_-82981_NAME                = 'CASSINI_SATURN_SKR4S_LOCK'
         FRAME_-82981_CLASS               = 5
         FRAME_-82981_CLASS_ID            = -82981
         FRAME_-82981_CENTER              = -82
         FRAME_-82981_RELATIVE            = 'J2000'
         FRAME_-82981_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82981_FAMILY              = 'TWO-VECTOR'
         FRAME_-82981_PRI_AXIS            = 'X'
         FRAME_-82981_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82981_PRI_OBSERVER        = 'CASSINI'
         FRAME_-82981_PRI_TARGET          = 'SATURN'
         FRAME_-82981_PRI_ABCORR          = 'NONE'
         FRAME_-82981_SEC_AXIS            = 'Z'
         FRAME_-82981_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82981_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82981_SEC_VECTOR          = ( 1.0, 0.0, 0.0 )
         FRAME_-82981_SEC_FRAME           = 'CASSINI_SKR_SLS4_SOUTH' 

      \begintext





XINCA Saturn SKR Locked Frame to SKR4 North
----------------------------------------------------------

   This frame is a Saturn centered frame, similar to
   CASSINI_SATURN_CENTERED, as the primary axis is defined as the
   spacecraft-Saturn vector. However, instead of utilizing the rotation
   axis of Saturn as the definition of the proper clock angle about the
   primary axis, this frame uses the SKR 4 North prime meridian. This
   is, of course, inherently ill-posed when the spacecraft flies near
   Saturn's equatorial plane.

      \begindata

         FRAME_CASSINI_SATURN_SKR4N_LOCK  = -82982
         FRAME_-82982_NAME                = 'CASSINI_SATURN_SKR4N_LOCK'
         FRAME_-82982_CLASS               = 5
         FRAME_-82982_CLASS_ID            = -82982
         FRAME_-82982_CENTER              = -82
         FRAME_-82982_RELATIVE            = 'J2000'
         FRAME_-82982_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82982_FAMILY              = 'TWO-VECTOR'
         FRAME_-82982_PRI_AXIS            = 'X'
         FRAME_-82982_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82982_PRI_OBSERVER        = 'CASSINI'
         FRAME_-82982_PRI_TARGET          = 'SATURN'
         FRAME_-82982_PRI_ABCORR          = 'NONE'
         FRAME_-82982_SEC_AXIS            = 'Z'
         FRAME_-82982_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82982_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82982_SEC_VECTOR          = ( 1.0, 0.0, 0.0 )
         FRAME_-82982_SEC_FRAME           = 'CASSINI_SKR_SLS4_NORTH' 

      \begintext


Cassini MIMI CRTN Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows 
   (from [5]):
   
   The X axis (R) is the Cassini to Sun Vector. The Y axis (T) is
   the cross of the Sun spin axis with the R or X axis and the 
   Z or N axis completes the right handed system.
   
   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_CRTN               = -82958
         FRAME_-82958_NAME                = 'CASSINI_CRTN'
         FRAME_-82958_CLASS               = 5
         FRAME_-82958_CLASS_ID            = -82958
         FRAME_-82958_CENTER              = -82
         FRAME_-82958_RELATIVE            = 'J2000'
         FRAME_-82958_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82958_FAMILY              = 'TWO-VECTOR'
         FRAME_-82958_PRI_AXIS            = 'X'
         FRAME_-82958_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82958_PRI_OBSERVER        = -82
         FRAME_-82958_PRI_TARGET          = 'SUN'
         FRAME_-82958_PRI_ABCORR          = 'NONE'
         FRAME_-82958_SEC_AXIS            = 'Z'
         FRAME_-82958_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82958_SEC_FRAME           = 'IAU_SUN'
         FRAME_-82958_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82958_SEC_VECTOR          = ( 0.0, 0.0, 1.0 )

      \begintext


CASSINI_MIMI_LEMMS_AA
----------------------------------------------------------

   This frame is a Sun centered frame. The Z axis is the Cassini-sun
   vector. The Y axis is parallel to the Sun spin axis. This is an attempt
   to duplicate the angle-angle frame used by the Angle Angle plots for 
   LEMMS.


   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_MIMI_LEMMS_AA      = -82959
         FRAME_-82959_NAME                = 'CASSINI_MIMI_LEMMS_AA'
         FRAME_-82959_CLASS               = 5
         FRAME_-82959_CLASS_ID            = -82959
         FRAME_-82959_CENTER              = -82
         FRAME_-82959_RELATIVE            = 'J2000'
         FRAME_-82959_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82959_FAMILY              = 'TWO-VECTOR'
         FRAME_-82959_PRI_AXIS            = 'Z'
         FRAME_-82959_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82959_PRI_OBSERVER        = 'CASSINI'
         FRAME_-82959_PRI_TARGET          = 'SUN'
         FRAME_-82959_PRI_ABCORR          = 'NONE'
         FRAME_-82959_SEC_AXIS            = '-Y'
         FRAME_-82959_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82959_SEC_FRAME           = 'ECLIPJ2000'
         FRAME_-82959_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82959_SEC_VECTOR          = ( 0.0, 0.0, 1.0 )

      \begintext



Profile-Titan System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows:

      The Profile-Titan frame is a dynamically defined frame whose
      primary axis, labeled Z, is along the geometric Cassini-Titan
      vector. The Y-axis of this frame is chosen to be the cross
      product of the X axis, pointing in the direction of the Saturn
      north pole (Z axis of the IAU_SATURN frame), and this Z-axis.

   The diagram below attempts to illustrate this frame:
                                     
                              X \     *    
                                 \     Cassini     
                                  \    
                             Titan o. 
                                 ./  `-.  Y
                               .'/      `  
                             .' /     
                 Pole |    .'    Z       
                      |  .'     
                      |.'     
                      *
                     Saturn

                  Figure: Profile-Titan System Frame


   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_MIMI_PROF_TITAN    = -82960
         FRAME_-82960_NAME                = 'CASSINI_MIMI_PROF_TITAN'
         FRAME_-82960_CLASS               = 5
         FRAME_-82960_CLASS_ID            = -82960
         FRAME_-82960_CENTER              = 'CASSINI'
         FRAME_-82960_RELATIVE            = 'J2000'
         FRAME_-82960_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82960_FAMILY              = 'TWO-VECTOR'
         FRAME_-82960_PRI_AXIS            = 'Z'
         FRAME_-82960_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82960_PRI_OBSERVER        = 'CASSINI'
         FRAME_-82960_PRI_TARGET          = 'TITAN'
         FRAME_-82960_PRI_ABCORR          = 'NONE'
         FRAME_-82960_SEC_AXIS            = 'X'
         FRAME_-82960_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82960_SEC_FRAME           = 'IAU_SATURN'
         FRAME_-82960_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82960_SEC_VECTOR          = ( 0.0, 0.0, 1.0 )
         

      \begintext

   From [3]:
   
      Geocentric Solar Ecliptic (GSE):

         This system has its X axis towards the Sun and its Z axis
         perpendicular to the plane of the Earth's orbit around the
         Sun (positive North). Y completes the right-handed system.

   The definition of the Geocentric Solar Ecliptic frame is as
   follows:

      \begindata

         FRAME_CASSINI_MIMI_GSE           = -82961
         FRAME_-82961_NAME                = 'CASSINI_MIMI_GSE'
         FRAME_-82961_CLASS               = 5
         FRAME_-82961_CLASS_ID            = -82961
         FRAME_-82961_CENTER              = 399
         FRAME_-82961_RELATIVE            = 'J2000'
         FRAME_-82961_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82961_FAMILY              = 'TWO-VECTOR'
         FRAME_-82961_PRI_AXIS            = 'X'
         FRAME_-82961_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82961_PRI_OBSERVER        = 'EARTH'
         FRAME_-82961_PRI_TARGET          = 'SUN'
         FRAME_-82961_PRI_ABCORR          = 'NONE'
         FRAME_-82961_SEC_AXIS            = '-Y'
         FRAME_-82961_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_VELOCITY'
         FRAME_-82961_SEC_OBSERVER        = 'SUN'
         FRAME_-82961_SEC_TARGET          = 'EARTH'
         FRAME_-82961_SEC_FRAME           = 'J2000'
         FRAME_-82961_SEC_ABCORR          = 'NONE'

      \begintext

Cassini MIMI CASSINI_COROT_ENCELADUS
----------------------------------------------------------

   This frame is a dynamically defined frame. It has as its primary axis the
Saturn spin axis, labeled Z. The Y-axis is then defined to be the result of
crossing this vector with the Saturn-Reference Enceladus vector. The X-axis
completes the right-handed frame definition and is directed away from Saturn. 

   
   The definition of the Corotation Enceladus frame is as
   follows:

      \begindata
      
         FRAME_CASSINI_COROT_ENCELADUS    = -82962
         FRAME_-82962_NAME                = 'CASSINI_COROT_ENCELADUS'
         FRAME_-82962_CLASS               = 5
         FRAME_-82962_CLASS_ID            = -82962
         FRAME_-82962_CENTER              = 602
         FRAME_-82962_RELATIVE            = 'J2000'
         FRAME_-82962_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82962_FAMILY              = 'TWO-VECTOR'
         FRAME_-82962_PRI_AXIS            = 'Z'
         FRAME_-82962_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82962_PRI_FRAME           = 'IAU_SATURN'
         FRAME_-82962_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82962_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82962_SEC_AXIS            = 'X'
         FRAME_-82962_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82962_SEC_OBSERVER        = 'SATURN'
         FRAME_-82962_SEC_TARGET          = 'ENCELADUS'
         FRAME_-82962_SEC_ABCORR          = 'NONE'

      \begintext


Cassini MIMI INCA ECLIPJ2000 Frame with West Longitude
----------------------------------------------------------

   This frame exists to allow ECLIPJ2000 to be expressed in a way
   familiar to space physicists, with west longitude instead of
   east longitude.

   
   This frame is defined such that ECLIPJ2000 except longitude starts
   at +X and counts up towards -Y.
   
   The matrix that rotates the ECLIPJ2000 frame into this
   configuration is:

      [     ]   [ 1 0 0 ]
      [ ROT ] = [ 0 -1 0 ]
      [     ]   [ 0 0 1 ]

   And the corresponding frame definition:

      \begindata

         FRAME_CASSINI_MIMI_ECLIPJ2000    = -82963
         FRAME_-82963_NAME                = 'CASSINI_MIMI_ECLIPJ2000'
         FRAME_-82963_CLASS               = 4
         FRAME_-82963_CLASS_ID            = -82963
         FRAME_-82963_CENTER              = -82
         TKFRAME_-82963_SPEC              = 'MATRIX'
         TKFRAME_-82963_RELATIVE          = 'ECLIPJ2000'
         TKFRAME_-82963_MATRIX            = ( 1.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                             -1.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                              1.0  )

      \begintext

Cassini ISMF Frame
----------------------------------------------------------

   This frame exists to support the heliospheric ENA imaging activity.
   In emails from Don Mitchell and Ed Roelof the frame is defined, by
   default:

      Primary Axis: Along ISMF vector at -135 longitude, 45 latitude
                    in the Ecliptic frame

      Secondary Axis: Directed towards Solar Apex at 254 longitude, 
                      5 latitude in the Ecliptic frame

   Instead of specifying this frame as a fixed offset frame, class 4,
   we are using a dynamically defined frame with constant vectors.
   This will easily allow the tweaking of the frame definition from
   within an active SPICE application, by simply poking updated 
   latitudes and longitudes into the definition.

   To update the latitude and longitude values for either the primary
   (ISMF pointing vector) or the secondary (longitude zero reference, 
   nominally the solar apex):

      CALL PDPOOL ( 'FRAME_-82964_PRI_LONGITUDE', 1, LON_IN_DEGREES )
      CALL PDPOOL ( 'FRAME_-82964_PRI_LATITUDE',  1, LAT_IN_DEGREES )

   And for the secondary axis:

      CALL PDPOOL ( 'FRAME_-82964_SEC_LONGITUDE', 1, LON_IN_DEGREES )
      CALL PDPOOL ( 'FRAME_-82964_SEC_LATITUDE',  1, LAT_IN_DEGREES )

   If you wish to change the frame these latitude and longitude values
   are defined relative to:

      CALL PCPOOL ( 'FRAME_-82964_PRI_FRAME', 1, NEW_FRAME_STRING )
      CALL PCPOOL ( 'FRAME_-82964_SEC_FRAME', 1, NEW_FRAME_STRING )

   These values can be updated independently.  If they wish to leave the
   Solar Apex direction the same, but adjust the ISMF primary vector 
   relative to GALACTIC coordinates, then only update the PRI_FRAME
   keyword to GALACTIC.

   Note: I have defined the center of this frame to be the Solar System
   Barycenter for the purposes of light time corrections through the 
   frame.  This seemed most appropriate in the moment.  

      \begindata

         FRAME_CASSINI_ISMF               = -82964
         FRAME_-82964_NAME                = 'CASSINI_ISMF'
         FRAME_-82964_CLASS               = 5
         FRAME_-82964_CLASS_ID            = -82964
         FRAME_-82964_CENTER              = 0
         FRAME_-82964_RELATIVE            = 'J2000'
         FRAME_-82964_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82964_FAMILY              = 'TWO-VECTOR'
         FRAME_-82964_PRI_AXIS            = 'Z'
         FRAME_-82964_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82964_PRI_SPEC            = 'LATITUDINAL'
         FRAME_-82964_PRI_FRAME           = 'ECLIPJ2000'
         FRAME_-82964_PRI_UNITS           = 'DEGREES'
         FRAME_-82964_PRI_LONGITUDE       = -135.0D0
         FRAME_-82964_PRI_LATITUDE        =  45.0D0
         FRAME_-82964_SEC_AXIS            = 'X'
         FRAME_-82964_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82964_SEC_SPEC            = 'LATITUDINAL'
         FRAME_-82964_SEC_FRAME           = 'ECLIPJ2000'
         FRAME_-82964_SEC_UNITS           = 'DEGREES'
         FRAME_-82964_SEC_LONGITUDE       = 254.0D0
         FRAME_-82964_SEC_LATITUDE        =   5.0D0

      \begintext

Cassini ISMF_X Frame
----------------------------------------------------------

   See the Cassini ISMF Frame description for more details. This
   frame is exactly the same except the Z and X axis have been 
   switched since we are attempting to duplicate the display
   format for the IBEX mission.
   
      \begindata

         FRAME_CASSINI_ISMF_X             = -82965
         FRAME_-82965_NAME                = 'CASSINI_ISMF_X'
         FRAME_-82965_CLASS               = 5
         FRAME_-82965_CLASS_ID            = -82965
         FRAME_-82965_CENTER              = 0
         FRAME_-82965_RELATIVE            = 'J2000'
         FRAME_-82965_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82965_FAMILY              = 'TWO-VECTOR'
         FRAME_-82965_PRI_AXIS            = 'X'
         FRAME_-82965_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82965_PRI_SPEC            = 'LATITUDINAL'
         FRAME_-82965_PRI_FRAME           = 'ECLIPJ2000'
         FRAME_-82965_PRI_UNITS           = 'DEGREES'
         FRAME_-82965_PRI_LONGITUDE       = -135.0D0
         FRAME_-82965_PRI_LATITUDE        =  45.0D0
         FRAME_-82965_SEC_AXIS            = 'Z'
         FRAME_-82965_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82965_SEC_SPEC            = 'LATITUDINAL'
         FRAME_-82965_SEC_FRAME           = 'ECLIPJ2000'
         FRAME_-82965_SEC_UNITS           = 'DEGREES'
         FRAME_-82965_SEC_LONGITUDE       = 254.0D0
         FRAME_-82965_SEC_LATITUDE        =   5.0D0

      \begintext


XINCA Saturn Equatorial Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):
    The Y axis is the Z axis of the CASSINI_SATURN_EQU_SOLAR frame and 
    the -Z axis is the X axis of the CASSINI_SATURN_EQU_SOLAR.
    
   This frame is primarily used by XINCA. XINCA's skymap display is 
   defined to display every frame with the 
   Z axis up, X axis into the page and Y axis out to the left. So in the
   skymap, using this frame, the negative spin axis of Saturn goes into the
   page, and the sun is to the right.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_SZS_XY_PLANE       = -82966
         FRAME_-82966_NAME                = 'CASSINI_SZS_XY_PLANE'
         FRAME_-82966_CLASS               = 4
         FRAME_-82966_CLASS_ID            = -82966
         FRAME_-82966_CENTER              = 699
         TKFRAME_-82966_SPEC              = 'MATRIX'
         TKFRAME_-82966_RELATIVE          = 'CASSINI_SATURN_EQU_SOLAR'
         TKFRAME_-82966_MATRIX            = ( 0.0,
                                              0.0,
                                             -1.0,
                                             -1.0,
                                              0.0,
                                              0.0,
                                              0.0,
                                              1.0,
                                              0.0  )


      \begintext

SATURN SZS Z projected Frame
----------------------------------------------------------

    This dynamic plane is defined with the Y axis of the frame is the Z 
    axis of the CASSINI_SATURN_EQU_SOLAR 
    frame and the -Z axis of the frame is the Cassini to Saturn vector.

    XINCA's skymap display is defined to display every frame with the Z
    axis up, X axis into the page and Y axis out to the left. So in the
    skymap, using this frame, spin axis of Saturn to the left, and down
    direction is the Cassini to Saturn direction.
 
    This frame is primarily used by the XINCA program to project the
    data into a plane which is defined to contain the spin axis of
    Saturn with a normal which is the XY projection of the Saturn to
    Cassini vector.


      \begindata

         FRAME_CASSINI_SC2SAT_SPIN_PLN    = -82967
         FRAME_-82967_NAME                = 'CASSINI_SC2SAT_SPIN_PLN'
         FRAME_-82967_CLASS               = 5
         FRAME_-82967_CLASS_ID            = -82967
         FRAME_-82967_CENTER              = 699
         FRAME_-82967_RELATIVE            = 'J2000'
         FRAME_-82967_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82967_FAMILY              = 'TWO-VECTOR'
         FRAME_-82967_PRI_AXIS            = 'Y'
         FRAME_-82967_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82967_PRI_FRAME           = 'CASSINI_SATURN_EQU_SOLAR'
         FRAME_-82967_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82967_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82967_SEC_AXIS            = '-Z'
         FRAME_-82967_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82967_SEC_OBSERVER        = 'CASSINI'
         FRAME_-82967_SEC_TARGET          = 'SATURN'
         FRAME_-82967_SEC_ABCORR          = 'NONE'

      \begintext
      
      
SKR SLS4 Frames
----------------------------------------------------------

    Saturn appears to have a different rotational period for the northern
    and southern hemispheres, and the following two frames,
    CASSINI_SKR_SLS4_NORTH and CASSINI_SKR_SLS4_SOUTH attempt to capture
    these rotating frames. Each frame has +Z as the spin axis of
    Saturn (+Z in the IAU_SATURN frame, and also +Z in the SZS frame)
    and is offset from the IAU_SATURN frame by a rotation about the Z
    axis. But note that this rotational offset changes with time,
    and since it covers such a long time period, it is not practical
    to describe the offset as a single polynomial. So we put the
    offset into a C-Kernel.

    These frame definitions are specified by the plasma wave team (RPWS)
    and are meant to characterize the variable rotation rate of Saturn.
    Previous SLS frames were defined using polynomials, but this set
    of frames were not defined using coefficients. Rather they were only
    available through a web form at the University of Iowa. We captured
    the data output from the web request mechanism and put it into a
    C-Kernel.  The C-Kernel is based on hourly data points. We also tried
    one-minute resolution output from the site in making the C-Kernel,
    but the difference between these two frames was a rotation of at most
    0.01 degrees, and usually much less, so hourly resolution was good
    enough.
    The C-Kernels based on the hourly resolution data were only about
    2 to 4 Mb each, whereas with minute resolution, it was hundreds of
    Mb, so the hourly resolution wins.

    The definition of the SLS4 frame is available here:

    http://www-pw.physics.uiowa.edu/SLS4/

    and also see the paper:
    D.A. Gurnett, J.B. Groene, T.F. Averkamp, W.S. Kurth, S.-Y. Ye,
       and G. Fischer, A SLS4 Longitude System Based on a Tracking
       Filter Analysis of the Rotational Modulation of Saturn
       Kilometric Radiation, Planetary Radio Emissions VII,
       Eds. Rucker, H.O., W.S. Kurth, P. Louarn, G. Fischer,
       Austrian Academy of Sciences Press, in press, June. 2011.


      \begindata

         FRAME_CASSINI_SKR_SLS4_SOUTH     = -82970
         FRAME_-82970_NAME                = 'CASSINI_SKR_SLS4_SOUTH'
         FRAME_-82970_CLASS               = 3
         FRAME_-82970_CLASS_ID            = -82970
         FRAME_-82970_CENTER              = 699
         CK_-82970_SCLK                   = -82
         CK_-82970_SPK                    = 699

      \begintext

      \begindata

         FRAME_CASSINI_SKR_SLS4_NORTH     = -82971
         FRAME_-82971_NAME                = 'CASSINI_SKR_SLS4_NORTH'
         FRAME_-82971_CLASS               = 3
         FRAME_-82971_CLASS_ID            = -82971
         FRAME_-82971_CENTER              = 699
         CK_-82971_SCLK                   = -82
         CK_-82971_SPK                    = 699

      \begintext



SKR N and S frames from L. Lamy at Meudon
-----------------------------------------------------
   These frames define a phase system for Saturn's rotation
   based on on interpretation of SKR by L. Lamy.
   See this web Page:
   http://www.lesia.obspm.fr/kronos/skr_periodicity.php
   and also the paper
   Lamy, submitted, 2012 (also available for a while at above URL)
   for more details.
   I've defined these frames using data at the above web site,
   and I used a decimated version of that data (downloaded on 
   May 23, 2012) to create c-kernels that define the planet
   rotation over the time range of the provided data.
   
   Note that the paper defines a frame with a default offset for the SKR peak
   of 0 degrees, but I've used the more traditional 100 degrees,
   so the c-kernels that specify this frame are 100 degrees off from
   Lamy's formal definition, but they are directly comparable with
   the SLS4 frame from Gurnett.

   Like the SLS4 frames, this frame is defined off the SZS frame.
   (Note that SZS is called CASSINI_SATURN_EQU_SOLAR in the
   Cassini/MIMI frame kernel.)
   So you will need access to the SZS frame to make use of this frame.
   The SLSM frames (North and South) differ from SZS by a
   rotation about their common Z axis.

   The time range of validity for SLSM South is 2004 day of year 1
   up to the start of day 193 of 2010.
   The time range of validity for SLSM North is 2005 day of year 84
   up to the start of day 193 of 2010.
 
      \begindata

         FRAME_CASSINI_SKR_SLSM_SOUTH     = -82972
         FRAME_-82972_NAME                = 'CASSINI_SKR_SLSM_SOUTH'
         FRAME_-82972_CLASS               = 3
         FRAME_-82972_CLASS_ID            = -82972
         FRAME_-82972_CENTER              = 699
         CK_-82972_SCLK                   = -82
         CK_-82972_SPK                    = 699

      \begintext



      \begindata

         FRAME_CASSINI_SKR_SLSM_NORTH     = -82973
         FRAME_-82973_NAME                = 'CASSINI_SKR_SLSM_NORTH'
         FRAME_-82973_CLASS               = 3
         FRAME_-82973_CLASS_ID            = -82973
         FRAME_-82973_CENTER              = 699
         CK_-82973_SCLK                   = -82
         CK_-82973_SPK                    = 699

      \begintext






Jupiter Equatorial System Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   (from [6]):

      The primary axis, labeled Z, is parallel to the Saturn spin
      axis.  The Y-axis is then defined as the cross product of 
      this vector with the Jupiter-Sun vector.  The X-axis completes
      the right-handed system and is directed "towards" the Sun.

   The diagram below attempts to illustrate this frame:
                                     
                                   | Z
                                   |
                                   | 
                                   o Jupiter
                                 ./ \
                               .'/   \
                             .' / X   \
                           .'          Y
                         .'
                       .'
                      *
                     Sun

                  Figure: The Jupiter Equatorial System Frame

   In the poorly rendered diagram above, Y is normal to the plane 
   defined by Jupiter's Spin axis (Z) and the Jupiter-Sun vector.  X 
   lies in this plane directed towards the Sun.

   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_JUPITER_EQU_SOLAR  = -82976
         FRAME_-82976_NAME                = 'CASSINI_JUPITER_EQU_SOLAR'
         FRAME_-82976_CLASS               = 5
         FRAME_-82976_CLASS_ID            = -82976
         FRAME_-82976_CENTER              = 599
         FRAME_-82976_RELATIVE            = 'J2000'
         FRAME_-82976_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82976_FAMILY              = 'TWO-VECTOR'
         FRAME_-82976_PRI_AXIS            = 'Z'
         FRAME_-82976_PRI_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82976_PRI_FRAME           = 'IAU_JUPITER'
         FRAME_-82976_PRI_SPEC            = 'RECTANGULAR'
         FRAME_-82976_PRI_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82976_SEC_AXIS            = 'X'
         FRAME_-82976_SEC_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82976_SEC_OBSERVER        = 'JUPITER'
         FRAME_-82976_SEC_TARGET          = 'SUN'
         FRAME_-82976_SEC_ABCORR          = 'NONE'

      \begintext



XINCA Jupiter Centered Frame
----------------------------------------------------------

   This frame is a dynamically defined frame, defined as follows
   The primary axis is the CASSINI spacecraft to Jupiter vector and
   is labeled X. The secondary Z axis is the Z axis of the IAU_Jupiter
   frame. The Y-axis completes the right-handed system.
   
    This frame is primarily used by the XINCA program. XINCA's skymap 
   display is defined to display every frame with the Z axis up, 
   X axis into the page and Y axis out to the left. So in the
   skymap, using this frame, into the page is the spacecraft to Jupiter
   vector, Z axis or up is the Jupiter spin axis.
   
      \begindata
     
         FRAME_CASSINI_JUPITER_CENTERED   = -82947
         FRAME_-82947_NAME                = 'CASSINI_JUPITER_CENTERED'
         FRAME_-82947_CLASS               = 5 
         FRAME_-82947_CLASS_ID            = -82947
         FRAME_-82947_CENTER              = -82
         FRAME_-82947_RELATIVE            = 'J2000' 
         FRAME_-82947_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82947_FAMILY              = 'TWO-VECTOR'
         FRAME_-82947_PRI_AXIS            = 'X'
         FRAME_-82947_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82947_PRI_OBSERVER        = 'CASSINI'
         FRAME_-82947_PRI_TARGET          = 'JUPITER'
         FRAME_-82947_PRI_ABCORR          = 'NONE'
         FRAME_-82947_SEC_AXIS            = 'Z'
         FRAME_-82947_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82947_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82947_SEC_VECTOR          = ( 0.0, 0.0, 1.0 )
         FRAME_-82947_SEC_FRAME           = 'IAU_JUPITER'
   
      \begintext
   
Cassini MIMI MAG RTN Frame
----------------------------------------------------------

   This frame is a dynamically defined frame.
   
   The RTN coordinates consist of R (radial component, Sun to the 
   spacecraft), T (tangential component, parallel to the Solar 
   Equatorial plane and perpendicular to R), and N (normal 
   component, completes right handed set). 
   This frame is used to transform MAG PDS data.

   
   The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_MIMI_MAG_RTN       = -82978
         FRAME_-82978_NAME                = 'CASSINI_MIMI_MAG_RTN'
         FRAME_-82978_CLASS               = 5
         FRAME_-82978_CLASS_ID            = -82978
         FRAME_-82978_CENTER              = 'SUN'
         FRAME_-82978_RELATIVE            = 'J2000'
         FRAME_-82978_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82978_FAMILY              = 'TWO-VECTOR'
         FRAME_-82978_PRI_AXIS            = 'X'
         FRAME_-82978_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82978_PRI_OBSERVER        = 'SUN'
         FRAME_-82978_PRI_TARGET          = -82
         FRAME_-82978_PRI_ABCORR          = 'NONE'
         FRAME_-82978_SEC_AXIS            = 'Z'
         FRAME_-82978_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82978_SEC_FRAME           = 'IAU_SUN'
         FRAME_-82978_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82978_SEC_VECTOR          = ( 0.0, 0.0, 1.0 )

      \begintext

   
Cassini MIMI MAG KRTP Frame
----------------------------------------------------------

   This frame is a dynamically defined frame. These are the 3 
   definitions I found in the PDS descriptions. I included all.
   This frame is used to transform MAG PDS data.
   
   Kronographic body-fixed, J2000 spherical Coordinates (KRTP)
    -----------------------------------------------------------
      KRTP magnetic field vector components form the standard right
      handed spherical triad (R, Theta, Phi) for a planet centered
      system. Namely, R is radial (along the line from the center of
      Saturn to the center of the spacecraft), and positive away from
      Saturn. Phi, the azimuthal component, is parallel to the
      Kronographic equator (Omega x R) and positive in the direction of
      corotation. Theta, the 'southward' component, completes the right
      handed set. 
      KRTP coordinates are the standard right-handed spherical triad: 
      R (Saturn to spacecraft)
      Phi (parallel  to Saturn's equator)
      Theta (completes right handed set).
      
      X is Saturn to S/C; Y (=THETA) is south in plane containing X and
      Saturn Axis.
  
 The SPICE frame definition follows:

      \begindata

         FRAME_CASSINI_MIMI_MAG_KRTP      = -82979
         FRAME_-82979_NAME                = 'CASSINI_MIMI_MAG_KRTP'
         FRAME_-82979_CLASS               = 5
         FRAME_-82979_CLASS_ID            = -82979
         FRAME_-82979_CENTER              = -82
         FRAME_-82979_RELATIVE            = 'J2000'
         FRAME_-82979_DEF_STYLE           = 'PARAMETERIZED'
         FRAME_-82979_FAMILY              = 'TWO-VECTOR'
         FRAME_-82979_PRI_AXIS            = 'X'
         FRAME_-82979_PRI_VECTOR_DEF      = 'OBSERVER_TARGET_POSITION'
         FRAME_-82979_PRI_OBSERVER        = 'SATURN'
         FRAME_-82979_PRI_TARGET          = 'CASSINI'
         FRAME_-82979_PRI_ABCORR          = 'NONE'
         FRAME_-82979_SEC_AXIS            = 'Y'
         FRAME_-82979_SEC_VECTOR_DEF      = 'CONSTANT'
         FRAME_-82979_SEC_FRAME           = 'IAU_SATURN'
         FRAME_-82979_SEC_SPEC            = 'RECTANGULAR'
         FRAME_-82979_SEC_VECTOR          = ( 0.0, 0.0, -1.0 )

      \begintext

End of FK.
