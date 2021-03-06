Attribute VB_Name = "Module1"

'EPANET2.BAS
'
'Declarations of functions in the EPANET PROGRAMMERs TOOLKIT
'(EPANET2.DLL)

'Last updated on 01/01/2019

' These are codes used by the DLL functions
Public Const EN_ELEVATION = 0     ' Node parameters
Public Const EN_BASEDEMAND = 1
Public Const EN_PATTERN = 2
Public Const EN_EMITTER = 3
Public Const EN_INITQUAL = 4
Public Const EN_SOURCEQUAL = 5
Public Const EN_SOURCEPAT = 6
Public Const EN_SOURCETYPE = 7
Public Const EN_TANKLEVEL = 8
Public Const EN_DEMAND = 9
Public Const EN_HEAD = 10
Public Const EN_PRESSURE = 11
Public Const EN_QUALITY = 12
Public Const EN_SOURCEMASS = 13
Public Const EN_INITVOLUME = 14
Public Const EN_MIXMODEL = 15
Public Const EN_MIXZONEVOL = 16

Public Const EN_TANKDIAM = 17
Public Const EN_MINVOLUME = 18
Public Const EN_VOLCURVE = 19
Public Const EN_MINLEVEL = 20
Public Const EN_MAXLEVEL = 21
Public Const EN_MIXFRACTION = 22
Public Const EN_TANK_KBULK = 23
Public Const EN_TANKVOLUME = 24
Public Const EN_MAXVOLUME = 25

Public Const EN_DIAMETER = 0      ' Link parameters
Public Const EN_LENGTH = 1
Public Const EN_ROUGHNESS = 2
Public Const EN_MINORLOSS = 3
Public Const EN_INITSTATUS = 4
Public Const EN_INITSETTING = 5
Public Const EN_KBULK = 6
Public Const EN_KWALL = 7
Public Const EN_FLOW = 8
Public Const EN_VELOCITY = 9
Public Const EN_HEADLOSS = 10
Public Const EN_STATUS = 11
Public Const EN_SETTING = 12
Public Const EN_ENERGY = 13
Public Const EN_LINKQUAL = 14
Public Const EN_LINKPATTERN = 15

Public Const EN_PUMP_STATE = 16
Public Const EN_PUMP_EFFIC = 17
Public Const EN_PUMP_POWER = 18
Public Const EN_PUMP_HCURVE = 19
Public Const EN_PUMP_ECURVE = 20
Public Const EN_PUMP_ECOST = 21
Public Const EN_PUMP_EPAT = 22

Public Const EN_DURATION = 0      ' Time parameters
Public Const EN_HYDSTEP = 1
Public Const EN_QUALSTEP = 2
Public Const EN_PATTERNSTEP = 3
Public Const EN_PATTERNSTART = 4
Public Const EN_REPORTSTEP = 5
Public Const EN_REPORTSTART = 6
Public Const EN_RULESTEP = 7
Public Const EN_STATISTIC = 8
Public Const EN_PERIODS = 9
Public Const EN_STARTTIME = 10
Public Const EN_HTIME = 11
Public Const EN_QTIME = 12
Public Const EN_HALTFLAG = 13
Public Const EN_NEXTEVENT = 14

Public Const EN_ITERATIONS = 0    ' Run statistics
Public Const EN_RELATIVEERROR = 1
Public Const EN_MAXHEADERROR = 2
Public Const EN_MAXFLOWCHANGE = 3
Public Const EN_MASSBALANCE = 4

Public Const EN_NODECOUNT = 0     ' Component counts
Public Const EN_TANKCOUNT = 1
Public Const EN_LINKCOUNT = 2
Public Const EN_PATCOUNT = 3
Public Const EN_CURVECOUNT = 4
Public Const EN_CONTROLCOUNT = 5
Public Const EN_RULECOUNT = 6

Public Const EN_JUNCTION = 0      ' Node types
Public Const EN_RESERVOIR = 1
Public Const EN_TANK = 2

Public Const EN_CVPIPE = 0        ' Link types
Public Const EN_PIPE = 1
Public Const EN_PUMP = 2
Public Const EN_PRV = 3
Public Const EN_PSV = 4
Public Const EN_PBV = 5
Public Const EN_FCV = 6
Public Const EN_TCV = 7
Public Const EN_GPV = 8

Public Const EN_NONE = 0          ' Quality analysis types
Public Const EN_CHEM = 1
Public Const EN_AGE = 2
Public Const EN_TRACE = 3

Public Const EN_CONCEN = 0        ' Source quality types
Public Const EN_MASS = 1
Public Const EN_SETPOINT = 2
Public Const EN_FLOWPACED = 3

Public Const EN_HW = 0            ' Head loss formulas
Public Const EN_DW = 1
Public Const EN_CM = 2

Public Const EN_CFS = 0           ' Flow units types
Public Const EN_GPM = 1
Public Const EN_MGD = 2
Public Const EN_IMGD = 3
Public Const EN_AFD = 4
Public Const EN_LPS = 5
Public Const EN_LPM = 6
Public Const EN_MLD = 7
Public Const EN_CMH = 8
Public Const EN_CMD = 9

Public Const EN_DDA = 0           ' Demand driven analysis
Public Const EN_PDA = 1           ' Pressure driven analysis

Public Const EN_TRIALS = 0        ' Hydraulic options
Public Const EN_ACCURACY = 1
Public Const EN_TOLERANCE = 2
Public Const EN_EMITEXPON = 3
Public Const EN_DEMANDMULT = 4
Public Const EN_HEADERROR = 5
Public Const EN_FLOWCHANGE = 6
Public Const EN_DEMANDDEFPAT = 7
Public Const EN_HEADLOSSFORM = 8
Public Const EN_GLOBALEFFIC = 9
Public Const EN_GLOBALPRICE = 10
Public Const EN_GLOBALPATTERN = 11
Public Const EN_DEMANDCHARGE = 12

Public Const EN_LOWLEVEL = 0      ' Control types
Public Const EN_HILEVEL = 1
Public Const EN_TIMER = 2
Public Const EN_TIMEOFDAY = 3

Public Const EN_AVERAGE = 1       ' Time statistic types
Public Const EN_MINIMUM = 2
Public Const EN_MAXIMUM = 3
Public Const EN_RANGE = 4

Public Const EN_MIX1 = 0          ' Tank mixing models
Public Const EN_MIX2 = 1
Public Const EN_FIFO = 2
Public Const EN_LIFO = 3

Public Const EN_NOSAVE = 0        ' Save-results-to-file flag
Public Const EN_SAVE = 1
Public Const EN_INITFLOW = 10     ' Re-initialize flow flag
Public Const EN_SAVE_AND_INIT = 11

Public Const EN_CONST_HP = 0      ' Constant horsepower pump curve
Public Const EN_POWER_FUNC = 1    ' Power function pump cuve
Public Const EN_CUSTOM = 2        ' User-defined custom pump curve
Public Const EN_NOCURVE = 3       ' No pump curve

Public Const EN_VOLUME_CURVE = 0  ' Volume curve
Public Const EN_PUMP_CURVE = 1    ' Pump curve
Public Const EN_EFFIC_CURVE = 2   ' Efficiency curve
Public Const EN_HLOSS_CURVE = 3   ' Head loss curve
Public Const EN_GENERIC_CURVE = 4 ' Generic curve

Public Const EN_UNCONDITIONAL = 0 ' Unconditional object deletion
Public Const EN_CONDITIONAL = 1   ' Conditional object deletion

Public Const EN_NO_REPORT = 0     ' No status report
Public Const EN_NORMAL_REPORT = 1 ' Normal status report
Public Const EN_FULL_REPORT = 2   ' Full status report

Public Const EN_R_NODE   = 6      ' Rule objects
Public Const EN_R_LINK   = 7
Public Const EN_R_SYSTEM = 8

Public Const EN_R_DEMAND    = 0   ' Rule variables
Public Const EN_R_HEAD      = 1
Public Const EN_R_GRADE     = 2
Public Const EN_R_LEVEL     = 3
Public Const EN_R_PRESSURE  = 4
Public Const EN_R_FLOW      = 5
Public Const EN_R_STATUS    = 6
Public Const EN_R_SETTING   = 7
Public Const EN_R_POWER     = 8
Public Const EN_R_TIME      = 9
Public Const EN_R_CLOCKTIME = 10
Public Const EN_R_FILLTIME  = 11
Public Const EN_R_DRAINTIME = 12

Public Const EN_R_EQ    = 0       ' Rule operators
Public Const EN_R_NE    = 1
Public Const EN_R_LE    = 2
Public Const EN_R_GE    = 3
Public Const EN_R_LT    = 4
Public Const EN_R_GT    = 5
Public Const EN_R_IS    = 6
Public Const EN_R_NOT   = 7
Public Const EN_R_BELOW = 8
Public Const EN_R_ABOVE = 9

Public Const EN_R_IS_OPEN   = 1   ' Rule status types
Public Const EN_R_IS_CLOSED = 2
Public Const EN_R_IS_ACTIVE = 3

'These are the external functions that comprise the DLL

'System Functions
 Declare Function ENgetversion Lib "epanet2.dll" (value As Long) As Long
 Declare Function ENepanet Lib "epanet2.dll" (ByVal F1 As String, ByVal F2 As String, ByVal F3 As String, ByVal F4 As Any) As Long
 Declare Function ENinit Lib "epanet2.dll" (ByVal rptFile As String, ByVal binOutFile As String, ByVal UnitsType As Long, ByVal HeadlossFormula As Long) As Long
 Declare Function ENopen Lib "epanet2.dll" (ByVal F1 As String, ByVal F2 As String, ByVal F3 As String) As Long
 Declare Function ENsaveinpfile Lib "epanet2.dll" (ByVal F As String) As Long
 Declare Function ENclose Lib "epanet2.dll" () As Long

'Hydraulic Analysis Functions
 Declare Function ENsolveH Lib "epanet2.dll" () As Long
 Declare Function ENsaveH Lib "epanet2.dll" () As Long
 Declare Function ENopenH Lib "epanet2.dll" () As Long
 Declare Function ENinitH Lib "epanet2.dll" (ByVal SaveFlag As Long) As Long
 Declare Function ENrunH Lib "epanet2.dll" (T As Long) As Long
 Declare Function ENnextH Lib "epanet2.dll" (Tstep As Long) As Long
 Declare Function ENcloseH Lib "epanet2.dll" () As Long
 Declare Function ENsavehydfile Lib "epanet2.dll" (ByVal F As String) As Long
 Declare Function ENusehydfile Lib "epanet2.dll" (ByVal F As String) As Long

'Water Quality Analysis Functions
 Declare Function ENsolveQ Lib "epanet2.dll" () As Long
 Declare Function ENopenQ Lib "epanet2.dll" () As Long
 Declare Function ENinitQ Lib "epanet2.dll" (ByVal SaveFlag As Long) As Long
 Declare Function ENrunQ Lib "epanet2.dll" (T As Long) As Long
 Declare Function ENnextQ Lib "epanet2.dll" (Tstep As Long) As Long
 Declare Function ENstepQ Lib "epanet2.dll" (Tleft As Long) As Long
 Declare Function ENcloseQ Lib "epanet2.dll" () As Long

'Reporting Functions
 Declare Function ENwriteline Lib "epanet2.dll" (ByVal S As String) As Long
 Declare Function ENreport Lib "epanet2.dll" () As Long
 Declare Function ENresetreport Lib "epanet2.dll" () As Long
 Declare Function ENsetreport Lib "epanet2.dll" (ByVal S As String) As Long
 Declare Function ENsetstatusreport Lib "epanet2.dll" (ByVal code As Long) As Long
 Declare Function ENgetcount Lib "epanet2.dll" (ByVal code As Long, value As Long) As Long
 Declare Function ENgeterror Lib "epanet2.dll" (ByVal ErrCode As Long, ByVal ErrMsg As String, ByVal N As Long) As Long
 Declare Function ENgetstatistic Lib "epanet2.dll" (ByVal code As Long, ByRef value As Single) As Long

'Analysis Options Functions
 Declare Function ENgetoption Lib "epanet2.dll" (ByVal code As Long, value As Single) As Long
 Declare Function ENsetoption Lib "epanet2.dll" (ByVal code As Long, ByVal value As Single) As Long
 Declare Function ENgetflowunits Lib "epanet2.dll" (code As Long) As Long
 Declare Function ENsetflowunits Lib "epanet2.dll" (ByVal code As Long) As Long
 Declare Function ENgettimeparam Lib "epanet2.dll" (ByVal code As Long, value As Long) As Long
 Declare Function ENsettimeparam Lib "epanet2.dll" (ByVal code As Long, ByVal value As Long) As Long
 Declare Function ENgetqualtype Lib "epanet2.dll" (QualCode As Long, TraceNode As Long) As Long
 Declare Function ENgetqualinfo Lib "epanet2.dll" (QualCode As Long, ByVal ChemName As String, ByVal ChemUnits As String, TraceNode As Long) As Long
 Declare Function ENsetqualtype Lib "epanet2.dll" (ByVal QualCode As Long, ByVal ChemName As String, ByVal ChemUnits As String, ByVal TraceNode As String) As Long

'Basic Node Functions
 Declare Function ENaddnode Lib "epanet2.dll" (ByVal id As String, ByVal nodeType As Long) As Long
 Declare Function ENdeletenode Lib "epanet2.dll" (ByVal linkIndex As Long, ByVal actionCode As Long) As Long
 Declare Function ENgetnodeindex Lib "epanet2.dll" (ByVal id As String, index As Long) As Long
 Declare Function ENgetnodeid Lib "epanet2.dll" (ByVal index As Long, ByVal id As String) As Long
 Declare Function ENsetnodeid Lib "epanet2.dll" (ByVal index As Long, ByVal newid As String) As Long
 Declare Function ENgetnodetype Lib "epanet2.dll" (ByVal index As Long, code As Long) As Long
 Declare Function ENgetnodevalue Lib "epanet2.dll" (ByVal index As Long, ByVal code As Long, value As Single) As Long
 Declare Function ENsetnodevalue Lib "epanet2.dll" (ByVal index As Long, ByVal code As Long, ByVal value As Single) As Long
 Declare Function ENsetjuncdata Lib "epanet2.dll" (ByVal index As Long, ByVal elev As Single, ByVal dmnd As Single, ByVal dmndpat As String) As Long
 Declare Function ENsettankdata Lib "epanet2.dll" (ByVal index As Long, ByVal elev As Single, ByVal initlvl As Single, ByVal minlvl As Single, ByVal maxlvl As Single, ByVal diam As Single, ByVal minvol As Single, ByVal volcurve As String) As Long
 Declare Function ENgetcoord Lib "epanet2.dll" (ByVal index As Long, X As Single, Y As Single) As Long
 Declare Function ENsetcoord Lib "epanet2.dll" (ByVal index As Long, ByVal X As Single, ByVal Y As Single) As Long
 
'Nodal Demand Functions
 Declare Function ENgetdemandmodel Lib "epanet2.dll" (mtype As Long, pmin As Single, preq As Single, pexp As Single) As Long
 Declare Function ENsetdemandmodel Lib "epanet2.dll" (ByVal mtype As Long, ByVal pmin As Single, ByVal preq As Single, ByVal pexp As Single) As Long
 Declare Function ENgetnumdemands Lib "epanet2.dll" (ByVal index As Long, numDemands As Long) As Long
 Declare Function ENgetbasedemand Lib "epanet2.dll" (ByVal index As Long, ByVal DemandIndex As Long, value As Single) As Long
 Declare Function ENsetbasedemand Lib "epanet2.dll" (ByVal index As Long, ByVal DemandIndex As Long, ByVal BaseDemand As Single) As Long
 Declare Function ENgetdemandpattern Lib "epanet2.dll" (ByVal index As Long, ByVal DemandIndex As Long, PatIndex As Long) As Long
 Declare Function ENsetdemandpattern Lib "epanet2.dll" (ByVal index As Long, ByVal DemandIndex As Long, ByVal PatIndex As Long) As Long
 Declare Function ENgetdemandname Lib "epanet2.dll" (ByVal index As Long, ByVal DemandIndex As Long, ByVal demandName As String) As Long
 Declare Function ENsetdemandname Lib "epanet2.dll" (ByVal nodeIndex As Long, ByVal DemandIndex As Long, ByVal demandName As String) As Long

'Basic Link Functions
 Declare Function ENaddlink Lib "epanet2.dll" (ByVal id As String, ByVal linkType As Long, ByVal fromNode As String, ByVal toNode As String) As Long
 Declare Function ENdeletelink Lib "epanet2.dll" (ByVal linkIndex As Long, ByVal actionCode As Long) As Long
 Declare Function ENgetlinkindex Lib "epanet2.dll" (ByVal id As String, index As Long) As Long
 Declare Function ENgetlinkid Lib "epanet2.dll" (ByVal index As Long, ByVal id As String) As Long
 Declare Function ENsetlinkid Lib "epanet2.dll" (ByVal index As Long, ByVal newid As String) As Long
 Declare Function ENgetlinktype Lib "epanet2.dll" (ByVal index As Long, code As Long) As Long
 Declare Function ENsetlinktype Lib "epanet2.dll" (index As Long, ByVal code As Long) As Long
 Declare Function ENgetlinknodes Lib "epanet2.dll" (ByVal index As Long, node1 As Long, node2 As Long) As Long
 Declare Function ENsetlinknodes Lib "epanet2.dll" (ByVal index As Long, ByVal node1 As Long, ByVal node2 As Long) As Long
 Declare Function ENgetlinkvalue Lib "epanet2.dll" (ByVal index As Long, ByVal code As Long, value As Single) As Long
 Declare Function ENsetlinkvalue Lib "epanet2.dll" (ByVal index As Long, ByVal code As Long, ByVal value As Single) As Long
 Declare Function ENsetpipedata Lib "epanet2.dll" (ByVal index As Long, ByVal length As Single, ByVal diam As Single, ByVal rough As Single, ByVal mloss As Single) As Long

'Pump Functions
 Declare Function ENgetheadcurveindex Lib "epanet2.dll" (ByVal pumpIndex As Long, curveIndex As Long) As Long
 Declare Function ENsetheadcurveindex Lib "epanet2.dll" (ByVal pumpIndex As Long, ByVal curveIndex As Long) As Long
 Declare Function ENgetpumptype Lib "epanet2.dll" (ByVal index As Long, PumpType As Long) As Long

'Time Pattern Functions
 Declare Function ENaddpattern Lib "epanet2.dll" (ByVal id As String) As Long
 Declare Function ENgetpatternindex Lib "epanet2.dll" (ByVal id As String, index As Long) As Long
 Declare Function ENgetpatternid Lib "epanet2.dll" (ByVal index As Long, ByVal id As String) As Long
 Declare Function ENgetpatternlen Lib "epanet2.dll" (ByVal index As Long, L As Long) As Long
 Declare Function ENgetpatternvalue Lib "epanet2.dll" (ByVal index As Long, ByVal Period As Long, value As Single) As Long
 Declare Function ENsetpatternvalue Lib "epanet2.dll" (ByVal index As Long, ByVal Period As Long, ByVal value As Single) As Long
 Declare Function ENgetaveragepatternvalue Lib "epanet2.dll" (ByVal index As Long, value As Single) As Long
 Declare Function ENsetpattern Lib "epanet2.dll" (ByVal index As Long, F As Any, ByVal N As Long) As Long

'Data Curve Functions
 Declare Function ENaddcurve Lib "epanet2.dll" (ByVal id As String) As Long
 Declare Function ENgetcurveindex Lib "epanet2.dll" (ByVal id As String, index As Long) As Long
 Declare Function ENgetcurveid Lib "epanet2.dll" (ByVal index As Long, ByVal id As String) As Long
 Declare Function ENgetcurvelen Lib "epanet2.dll" (ByVal index As Long, L As Long) As Long
 Declare Function ENgetcurvetype Lib "epanet2.dll" (ByVal curveIndex As Long, CurveType As Long) As Long
 Declare Function ENgetcurvevalue Lib "epanet2.dll" (ByVal index As Long, ByVal Ptn As Long, X As Single, Y As Single) As Long
 Declare Function ENsetcurvevalue Lib "epanet2.dll" (ByVal index As Long, ByVal Ptn As Long, ByVal X As Single, ByVal Y As Single) As Long
 Declare Function ENgetcurve Lib "epanet2.dll" (ByVal curveIndex As Long, ByVal CurveID As String, nValues As Long, xValues As Any, yValues As Any) As Long
 Declare Function ENsetcurve Lib "epanet2.dll" (ByVal index As Long, X As Any, Y As Any, ByVal N As Long) As Long

'Simple Control Functions
 Declare Function ENaddcontrol Lib "epanet2.dll" (Cindex As Long, ByVal Ctype As Long, ByVal Lindex As Long, ByVal setting As Single, ByVal Nindex As Long, ByVal Level As Single) As Long
 Declare Function ENdeletecontrol Lib "epanet2.dll" (ByVal Cindex As Long) As Long
 Declare Function ENgetcontrol Lib "epanet2.dll" (ByVal Cindex As Long, Ctype As Long, Lindex As Long, setting As Single, Nindex As Long, Level As Single) As Long
 Declare Function ENsetcontrol Lib "epanet2.dll" (ByVal Cindex As Long, ByVal Ctype As Long, ByVal Lindex As Long, ByVal setting As Single, ByVal Nindex As Long, ByVal Level As Single) As Long

'Rue-Based Control Functions
 Declare Function ENaddrule Lib "epanet2.dll" (ByVal rule As String) As Long
 Declare Function ENdeleterule Lib "epanet2.dll" (ByVal index As Long) As Long
 Declare Function ENgetrule Lib "epanet2.dll" (ByVal index As Long, nPremises As Long, nTrueActions As Long, nFalseActions As Long, priority As Single) As Long
 Declare Function ENgetruleID Lib "epanet2.dll" (ByVal indexRule As Long, ByVal id As String) As Long
 Declare Function ENsetrulepriority Lib "epanet2.dll" (ByVal index As Long, ByVal priority As Single) As Long
 Declare Function ENgetpremise Lib "epanet2.dll" (ByVal indexRule As Long, ByVal indexPremise As Long, logop As Long, object As Long, indexObj As Long, variable As Long, relop As Long, status As Long, value As Single) As Long
 Declare Function ENsetpremise Lib "epanet2.dll" (ByVal indexRule As Long, ByVal indexPremise As Long, ByVal logop As Long, ByVal object As Long, ByVal indexObj As Long, ByVal variable As Long, ByVal relop As Long, ByVal status As Long, ByVal value As Single) As Long
 Declare Function ENsetpremiseindex Lib "epanet2.dll" (ByVal indexRule As Long, ByVal indexPremise As Long, ByVal indexObj As Long) As Long
 Declare Function ENsetpremisestatus Lib "epanet2.dll" (ByVal indexRule As Long, ByVal indexPremise As Long, ByVal status As Long) As Long
 Declare Function ENsetpremisevalue Lib "epanet2.dll" (ByVal indexRule As Long, ByVal indexPremise As Long, ByVal value As Single) As Long
 Declare Function ENgetthenaction Lib "epanet2.dll" (ByVal indexRule As Long, ByVal indexAction As Long, indexLink As Long, status As Long, setting As Single) As Long
 Declare Function ENsetthenaction Lib "epanet2.dll" (ByVal indexRule As Long, ByVal indexAction As Long, ByVal indexLink As Long, ByVal status As Long, ByVal setting As Single) As Long
 Declare Function ENgetelseaction Lib "epanet2.dll" (ByVal indexRule As Long, ByVal indexAction As Long, indexLink As Long, status As Long, setting As Single) As Long
 Declare Function ENsetelseaction Lib "epanet2.dll" (ByVal indexRule As Long, ByVal indexAction As Long, ByVal indexLink As Long, ByVal status As Long, ByVal setting As Single) As Long
