����  -n 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 1cfservermonitoring2ecfc1605556527$funcUPDATEALIAS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 3Lcfservermonitoring2ecfc1605556527$funcUPDATEALIAS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , ALIAS . array 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 
	
         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 
		 Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h %class$coldfusion$tagext$lang$ParamTag Ljava/lang/Class; coldfusion.tagext.lang.ParamTag l forName %(Ljava/lang/String;)Ljava/lang/Class; n o java/lang/Class q
 r p j k	  t _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; v w
  x coldfusion/tagext/lang/ParamTag z cfparam | name ~ aliasSettings � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setName (Ljava/lang/String;)V � �
 { � default � StructNew() � J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
  � 
setDefault � U
 { � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � _autoscalarize � ]
  � ArrayLen (Ljava/lang/Object;)I � �
 R � _Object (I)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � _compare (Ljava/lang/Object;D)D � �
  � 
			 � 1 � _double (Ljava/lang/String;)D � �
 � � (D)Ljava/lang/Object; � �
 � � J � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
  � 
				 � ALIASSETTINGS � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � ALLOWEDKEYS � !TEMPLATEPATH,ALIASNAME,PARAMETERS � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructCount (Ljava/util/Map;)I � �
 R �@       
					 � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � , � KEY � java/util/StringTokenizer � '(Ljava/lang/String;Ljava/lang/String;)V  �
 � � 	nextToken ()Ljava/lang/String; � �
 � � 
						 � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 R � 	
							 � MSG � java/lang/StringBuffer � INVALIDSETTINGKEY �  �
 � �   � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � toString  �
 c %class$coldfusion$tagext$lang$ThrowTag coldfusion.tagext.lang.ThrowTag k	  coldfusion/tagext/lang/ThrowTag cfthrow
 message 
setMessage �
	 CFLOOP checkRequestTimeout �
  hasMoreTokens ()Z
 � EXTRASETTINGMSG 		
				 _checkCondition (DDD)Z
   MONITORINGSERVICE" \ �
 $ updateAlias& 
	( java/lang/String* metaData Ljava/lang/Object;,-	 . remote0 &coldfusion/runtime/AttributeCollection2 hint4*Overrides/updates the previous alias settings. Takes arguement as an array of struct with the following keys:<br>
	TEMPLATEPATH -- Template path being alliased<br>
	ALIASNAME -- Unique alias name for templatepath<br>
	PARAMETERS -- Different parameters being monitored as a comma seperated list<br>6 access8 
Parameters: TYPE< REQUIRED> true@ NAMEB aliasD ([Ljava/lang/Object;)V F
3G getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; param17 !Lcoldfusion/tagext/lang/ParamTag; t13 D t15 t17 t19 t20 Ljava/lang/String; t21 t22 t23 Ljava/util/StringTokenizer; throw18 !Lcoldfusion/tagext/lang/ThrowTag; throw19 LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       j k    k   ,-           #     *� 
�                I �     "     '�                JK    V    4+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-� I-KM� S� Y-[� E-�� I--
� _a� cYeS� iW-[� E-� u� y� {:-�� I}�� �� �}��� �� �� �� �-[� E-�� I-� �� �� �� ���-�� E9-�� I-� �� ��9�� �9� �:-�+� �:� Y��-�� E-�--�� �� Ķ �-�� E-�̶ �-�� E-�� I--�� �� ж Ը � ո ���-ض E-ʶ �� �:�:-�+� �:� �Y� �:� �� �:� Y-� E-�� I--�� �� �-� �� ܶ ��� |-� E-� �Y-�� �� ܷ ��� �-� �� ܶ ��� �-� E-�� y�	:-�� I-� �� ܸ ��� �� �-� E-ض E����<-�� E� L-ض E-�� y�	:-� I-� �� ܸ ��� �� �-� E-�� Ec\9� �:� Y��!��6-[� E-[� E-� I--#�%'� cY-� �S� iW-)� E�       �   4      4LM   4N-   4OP   4QR   4ST   4U-   4 * +   4 V   4 V 	  4 V 
  4 .V   4WX   4YZ   4[Z   4\Z   4]V   4^_   4`_   4aV   4bc   4de   4fe g  " H  � I� S� U� R� R� I� m� {� l� l� l� �� �� �� �� �� �� �� �� �� �� ���7�4�4�1�1�N�N�K�K�c�c�b�r����������������������� �����������=����q�����b��� �� �� h      �     �m� s� u� s��3Y� cYSY'SY5SY7SY9SY1SY;SY� cY�3Y� cY=SY1SY?SYASYCSYES�HSS�H�/�           �     i �     "     1�                jk     (     
�+Y/S�           
     lm     "     �/�                     ����  -@ 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 9cfservermonitoring2ecfc1605556527$funcGETUSERSNAPSHOTLIST  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ;Lcfservermonitoring2ecfc1605556527$funcGETUSERSNAPSHOTLIST; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  FILEMAP  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   RETURNARRAY  ACCESSMANAGER   coldfusion/runtime/CfJspPage " pageContext #Lcoldfusion/runtime/NeoPageContext; $ %	 # & getOut ()Ljavax/servlet/jsp/JspWriter; ( ) javax/servlet/jsp/PageContext +
 , * parent Ljavax/servlet/jsp/tagext/Tag; . /	 # 0 

		 2 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 4 5
 # 6 _setCurrentLineNo (I)V 8 9
 # : ArrayNew (I)Ljava/util/List; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H 	StructNew !()Lcoldfusion/util/FastHashtable; J K
 @ L 

         N 	component P CFIDE.adminapi.accessmanager R CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; T U
 @ V 

         X _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Z [
 # \ checkAdminRoles ^ java/lang/Object ` coldfusion.monitoring b _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; d e
 # f  

		 h 'class$coldfusion$tagext$io$DirectoryTag Ljava/lang/Class; !coldfusion.tagext.io.DirectoryTag l forName %(Ljava/lang/String;)Ljava/lang/Class; n o java/lang/Class q
 r p j k	  t _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; v w
 # x !coldfusion/tagext/io/DirectoryTag z cfdirectory | 	directory ~ SNAPSHOTDIR � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
 # � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 # � setDirectory (Ljava/lang/String;)V � �
 { � name � snapshotDirQuery � setName � �
 { � action � LIST � 	setAction � �
 { � sort � DATELASTMODIFIED DESC � setSort � �
 { � filter � USRGENSNAPSHOTPREFIX � *.txt � concat &(Ljava/lang/String;)Ljava/lang/String; � � java/lang/String �
 � � 	setFilter � �
 { � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
 # � $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag � � k	  � coldfusion/tagext/io/OutputTag � cfoutput � query � setQuery � � coldfusion/tagext/QueryLoop �
 � � 
doStartTag ()I � �
 � � 

		       � FILENAME � SNAPSHOTDIRQUERY � 	DIRECTORY � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
 # � FILESEP � NAME � _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
 # � 
			   � TIME � DATELASTMODIFIED � � [
 # � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 � � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 @ � doAfterBody � �
 � � doEndTag � �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � 
	 getUserSnapshotList metaData Ljava/lang/Object;	  array	 remote &coldfusion/runtime/AttributeCollection hint �Returns the list of all user snapshot files on the server as an array of structs with the following keys:<br>
	FILENAME -- Absolute path to the Snapshot filename<br>
	TIME -- The time at which the snapshot was generated<br> 
returntype access 
Parameters ([Ljava/lang/Object;)V 
 getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; directory20 #Lcoldfusion/tagext/io/DirectoryTag; output21  Lcoldfusion/tagext/io/OutputTag; mode21 I t16 t17 Ljava/lang/Throwable; t18 t19 LineNumberTable java/lang/Throwable8 <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       j k    � k              #     *� 
�                     "     
�                     "     �                     g 
   o+� :+,� :	+� :
+� :+!� :-� '� -:-� 1:-3� 7-�� ;-� A� G-I� 7
-�� ;� M� G-O� 7-�� ;-QS� W� G-Y� 7-¶ ;--� ]_� aYcS� gW-i� 7-� u� y� {:-Ķ ;}-�� �� �� �� �}��� �� �}��� �� �}��� �� �}�-�� �� ��� �� �� �� �� �-I� 7-� �� y� �:-ƶ ;���� �� �� �Y6� �-Ѷ 7
-Ƕ ;� M� G-Ѷ 7-
� aY�S-�� �Y�S� ۸ �-ݶ �� �� �-�� �Y�S� ۸ �� �� �-� 7-
� aY�S-�� �Y�S� ۶ �-Ѷ 7-ʶ ;--� � �-
� � �W-I� 7� ���I� �� :� #�� � #:� �� � :� �:� �-I� 7-� �-� 7� X/59X>D       �   o      o!"   o#   o$%   o&'   o()   o*   o . /   o +   o + 	  o + 
  o +   o  +   o,-   o./   o01   o2   o34   o54   o6 7   A  � B� L� K� K� B� [� d� d� [� r� |� ~� {� {� r� �� �� �� �� �� �� �� �� �� ����� ��P�t�t�k�k�������������������������������������������������4�]�]�]� :      ~     `m� s� u�� s� ��Y
� aY�SYSYSYSYSY
SYSYSYSY	� aS���           `     ;     "     �                <=     #     � ��                >?     "     ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 7cfservermonitoring2ecfc1605556527$funcGETREQUESTDETAILS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 9Lcfservermonitoring2ecfc1605556527$funcGETREQUESTDETAILS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , get (I)Ljava/lang/Object; . / %coldfusion/runtime/ArgumentCollection 1
 2 0 TEMPLATEPATH 4   6 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 8 9
 2 : string < getVariable  (I)Lcoldfusion/runtime/Variable; > ?
 2 @ _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; B C
  D putVariable  (Lcoldfusion/runtime/Variable;)V F G
  H FUNCTIONNAME J 

         L _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V N O
  P _setCurrentLineNo (I)V R S
  T 	component V CFIDE.adminapi.accessmanager X CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Z [ coldfusion/runtime/CFPage ]
 ^ \ set (Ljava/lang/Object;)V ` a coldfusion/runtime/Variable c
 d b 
		 f _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; h i
  j checkAdminRoles l java/lang/Object n coldfusion.monitoring p _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; r s
  t MONITORINGSERVICE v &(Ljava/lang/String;)Ljava/lang/Object; h x
  y getRequestDetails { java/lang/String } _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;  �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 ^ � 
	 � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint ��Returns details for the specified request, or for all requests if template path is null 	<br><br>
	The details are returned in structs with the following keys: <br>
	TEMPLATEPATH -- Full path to the template that was executed<br>
	FUNCTIONNAME-- The name of the function that was invoked, if this was a web service, flash remoting, remote CFC or gateway request.<br>
	LASTRESPONSETIME -- The time taken for the request to complete at the last invocation in milliseconds<br>
	LASTTIMEEXECUTED -- The date/time at which the template/function was last invoked.<br>
	AVGTIME  --  The average response time for the template/function in milliseconds<br>
	MINTIME  --  The min response time for the template/function in milliseconds<br>
	MAXTIME  --  The max response time for the template/function in milliseconds<br>
	AVGREQUESTSIZE -- The average amount of memory allocated over the course of the request in bytes<br>
	MAXREQUESTSIZE -- The max amount of memory allocated over the course of the request in bytes<br>
	MINREQUESTSIZE -- The min amount of memory allocated over the course of the request in bytes<br>
	LASTREQUESTSIZE -- The amount of memory allocated over the course of the request at the last invocation in bytes<br>
	HITCOUNT -- The hit count for the template/function<br>
	LASTERROR -- Last error message for the template/function if any<br>
	LASTERRORAT -- The date/time at which the last error occurred<br>
	ERRORCOUNT -- The number of times errors have occurred for the template/function<br>
	TIMEOUTCOUNT -- The number of times requests to the template/function have timed out<br>
	Monitoring must be turned on for this function to work. Stats providing details of memory consumed will have values only if memory monitoring is turned on.<br> � access � 
returntype � 
Parameters � DEFAULT � TYPE � NAME � templatePath � REQUIRED � false � ([Ljava/lang/Object;)V  �
 � � functionName � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     |�                 � �    *    $+� :+,� :	+� :
-� #� ):-� -:� 3� 57� ;W*5=� A� E:+� I� 3� K7� ;W*K=� A� E:+� I-M� Q
-T� U-WY� _� e-g� Q-U� U--
� km� oYqS� uW-g� Q-V� U--w� z|� oY-V� U-=-� ~Y5S� �� �SY-W� U-=-� ~YKS� �� �S� u�-�� Q�       �   $      $ � �   $ � �   $ � �   $ � �   $ � �   $ � �   $ * +   $  �   $  � 	  $  � 
  $ 4 �   $ J �  �   j    = 8 Q c R � T � T � T � T � T � T � U � U � U � U � U � V � V � V � V � V W W W  W � V � V � V  �      �     �� �Y
� oY�SY|SY�SY�SY�SY�SY�SY�SY�SY	� oY� �Y� oY�SY7SY�SY=SY�SY�SY�SY�S� �SY� �Y� oY�SY7SY�SY=SY�SY�SY�SY�S� �SS� �� ��           �      � �     !     ��                 � �     -     � ~Y5SYKS�                 � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc @cfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDSESSIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this BLcfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDSESSIONS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ resetTopMemoryUsedSessions ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m 1Resets the top sessions with max memory used list o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-B� 7-9;� A� G-I� 3-C� 7--
� MO� QYSS� WW-I� 3-D� 7--Y� \^� Q� WW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   @ 2B <B >B ;B ;B 2B VC dC UC UC UC {D zD zD zD  �      Z     <� jY� QYlSY^SYnSYpSYrSYhSYtSY� QS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Acfservermonitoring2ecfc1605556527$funcRESETAVERAGETOPSLOWREQUESTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this CLcfservermonitoring2ecfc1605556527$funcRESETAVERAGETOPSLOWREQUESTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ resetAverageTopSlowRequests ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m aResets all statistics collected on the server for the slow requests averaged over execution count o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
- � 7-9;� A� G-/� 3-!� 7--
� KM� OYQS� UW-W� 3-"� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    2  <  >  ;  ;  2  V! d! U! U! U! {" z" z" z"  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ?cfservermonitoring2ecfc1605556527$funcISMEMORYMONITORINGENABLED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ALcfservermonitoring2ecfc1605556527$funcISMEMORYMONITORINGENABLED; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ isMemoryMonitoringEnabled ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e boolean g remote i &coldfusion/runtime/AttributeCollection k name m hint o >Indicates whether or not monitoring of memory usage is enabled q access s 
returntype u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-E� 7-9;� A� G-/� 3-F� 7--
� KM� OYQS� UW-W� 3-G� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   C 2E <E >E ;E ;E 2E VF dF UF UF UF {G zG zG zG  �      f     H� lY
� OYnSY^SYpSYrSYtSYjSYvSYhSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 5cfservermonitoring2ecfc1605556527$funcGETTOPHITCOUNTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 7Lcfservermonitoring2ecfc1605556527$funcGETTOPHITCOUNTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getTopHitCounts ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns a struct of the requests with the top hit counts, with the following keys:<br>
	TEMPLATEPATH -- Full path to the template that was executed<br>
	FUNCTIONNAME-- The name of the function that was invoked, if this was a web service, flash remoting, remote CFC	or gateway request.<br>
	HITCOUNT -- The hit count<br>
	AVGTIME  --  The average response time for the template/function in milliseconds<br>
	AVGREQUESTSIZE -- The average amount of memory allocated over the course of the request in bytes<br>
	Monitoring must be turned on for this function to work. Stats providing details of memory consumed<br>
	will have values only if memory monitoring is turned on.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-ڶ 7-9;� A� G-I� 3-۶ 7--
� MO� QYSS� WW-I� 3-ܶ 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  -� 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 8cfservermonitoring2ecfc1605556527$funcSETMONITORSETTINGS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this :Lcfservermonitoring2ecfc1605556527$funcSETMONITORSETTINGS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , SETTINGS . struct 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 
		 Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h 

		 j ALLOWEDKEYS l MONITORINGSERVICE n &(Ljava/lang/String;)Ljava/lang/Object; \ p
  q getMonitorSettingsKeys s _set '(Ljava/lang/String;Ljava/lang/Object;)V u v
  w java/lang/String y _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; { |
  } _validatingMap #(Ljava/lang/Object;)Ljava/util/Map;  �
  � java/util/Map � entrySet ()Ljava/util/Set; � � � � java/util/Set � iterator ()Ljava/util/Iterator; � � � � java/util/Iterator � next ()Ljava/lang/Object; � � � � class$java$util$Map$Entry Ljava/lang/Class; java.util.Map$Entry � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _cast 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object; � � coldfusion/runtime/Cast �
 � � java/util/Map$Entry � getKey � � � � key � SetVariable 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 R � 
			 � _autoscalarize � p
  � _Map � �
 � � KEY � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 R � 
				 � MSG � java/lang/StringBuffer � INVALIDSETTINGKEY � (Ljava/lang/String;)V  �
 � �   � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � toString ()Ljava/lang/String; � �
 c � %class$coldfusion$tagext$lang$ThrowTag coldfusion.tagext.lang.ThrowTag � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 

			 � VALUE � 
StructFind 5(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object; � �
 R � TYPE � NUMBER � CompareNoCase '(Ljava/lang/String;Ljava/lang/String;)I � 
 R _Object (I)Ljava/lang/Object;
 � _compare (Ljava/lang/Object;D)D
 	 	IsNumeric (Ljava/lang/Object;)Z
 R (Z)Ljava/lang/Object;
 � _boolean
 � _double (Ljava/lang/Object;)D
 � Int (D)D
 R (D)Ljava/lang/Object;
 � '(Ljava/lang/Object;Ljava/lang/Object;)D 
 ! 
					# INVALIDSETTINGPREFIX% INVALIDSETTINGNUMERIC' 
					
					) BOOLEAN+ 	IsBoolean-
 R. INVALIDSETTINGBOOLEAN0 
						2 java4 java.lang.Boolean6 valueOf8 true: false< 

			
			> _factor0 j(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;Lcoldfusion/runtime/CFPage;)Ljava/lang/Object;@A
 B StructInsert 7(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Z)ZDE
 RF CFLOOPH checkRequestTimeoutJ �
 K hasNext ()ZMN �O setMonitorSettingsQ 
	S metaData Ljava/lang/Object;UV	 W remoteY &coldfusion/runtime/AttributeCollection[ name] hint_ Sets server monitoring settingsa accessc 
Parameterse REQUIREDg NAMEi settingsk ([Ljava/lang/Object;)V m
\n getName __factorParent out Ljavax/servlet/jsp/JspWriter; 
parentPage Lcoldfusion/runtime/CFPage; value throw12 !Lcoldfusion/tagext/lang/ThrowTag; throw13 LineNumberTable runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance __arguments 'Lcoldfusion/runtime/ArgumentCollection; Lcoldfusion/runtime/Variable; t12 Ljava/util/Iterator; throw11 <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata 1       � �    � �   UV           #     *� 
�                p �     "     R�                @A    � 	   �-,�� E-�-�� I--m� �� �-�� �� �� �� x-,�� E-�� I-�� �� �����
��8-,Ŷ E-�� I-�� ����Y�� .W-�� I-�� ����-�� ��"�~���Y�� W-�� ��
�|��� �-,$� E-ǻ �Y-&� �� �� �ж �-�� �� �� �ж �-(� �� �� Զ ض x-,$� E-� �+� �� �:-�� I��-Ƕ �� �� � �� � �-,Ŷ E� .-,*� E-�-�� I-�� ����� x-,Ŷ E-,�� E�p-�� I-�� �� �,���
��N-,Ŷ E-�� I-�� ��/�� �-,$� E-ǻ �Y-&� �� �� �ж �-�� �� �� �ж �-1� �� �� Զ ض x-,$� E-� �+� �� �:-�� I��-Ƕ �� �� � �� � �-,Ŷ E� �-,*� E-�� ��� E-,3� E-�-�� I--�� I-57� S9� cY;S� i� x-,$� E� B-,3� E-�-�� I--�� I-57� S9� cY=S� i� x-,$� E-,Ŷ E-,?� E-�       H   �      �q +   �rs   �tu   �vV   �wx   �yx z  � g � � � � � � � � 8� 8� A� 8� I� `� `� `� `� `� `� }� }� }� �� }� }� }� }� `� `� �� �� �� �� `� �� �� �� �� �� �� �� �� �� �� �� ��(��]�]�]�]�S�S�K� `���������������������������������������������&��Q�x�{�w���o�o�e�e�������������������Q�I����� 8� {|        `+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-�� I-KM� S� Y-[� E-�� I--
� _a� cYeS� iW-k� E-m-�� I--o� rt� c� i� x-k� E-� zY/S� ~� �� � � � :�K� � � �� �� �� � :-�� �W-�� E-�� I--m� �� �-�� �� �� ��� z-Ŷ E-ǻ �Y-˶ �� �� �ж �-�� �� �� Զ ض x-Ŷ E-� �� �� �:-�� I��-Ƕ �� �� � �� � �-�� E-�� E-�-�� I--� zY/S� ~� �-�� �� �� �� x*-�C� �-�� E-�� I--� zY/S� ~� �-�� �� �-�� ��GW-[� EI�L�P ���-k� E-�� I--o� rR� cY-� zY/S� ~S� iW-T� E�       �   `      `}~   `V   `tu   `��   `rs   `vV   ` * +   ` �   ` � 	  ` � 
  ` .�   `��   `�x z   @  � I� S� U� R� R� I� m� {� l� l� l� �� �� �� �� �� �� �� �� � �	�	� �� �� ��)�)�5�:�:�%�%�"�"�p�T� �������������������������������������� ��2�A�1�1�1� �      �     ��� �� �۸ �� ݻ\Y� cY^SYRSY`SYbSYdSYZSYfSY� cY�\Y� cY�SY1SYhSY;SYjSYlS�oSS�o�X�           �     � �     "     Z�                ��     (     
� zY/S�           
     � �     "     �X�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 4cfservermonitoring2ecfc1605556527$funcGETREQUESTLOAD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 6Lcfservermonitoring2ecfc1605556527$funcGETREQUESTLOAD; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getRequestLoad ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e numeric g remote i &coldfusion/runtime/AttributeCollection k name m hint o 7Returns the request load for the server in requests/sec q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-"� 7-9;� A� G-I� 3-#� 7--
� MO� QYSS� WW-I� 3-$� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B     2" <" >" ;" ;" 2" V# d# U# U# U# {$ z$ z$ z$  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ;cfservermonitoring2ecfc1605556527$funcGETALLACTIVECFTHREADS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this =Lcfservermonitoring2ecfc1605556527$funcGETALLACTIVECFTHREADS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getAllActiveCFThreads ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns all active CF thread as an array of structs with the following keys:<br>
	CFTHREADNAME -- name of the cf thread.<br>
	SPAWNEDFROM  -- template Path from which the thread was spawned.<br>
	REQUESTTEMPLATE -- template path for which the original request came.<br>
	LINENO -- line no at which the cfthread was spawned<br>
	THREADNAME -- Name of the java thread.<br>
	TIMETAKEN -- Time taken<br>
	CFSTACKTRACE -- Array of stack frame strings<br>
	JAVASTACKTRACE -- Array of stack frame strings, available only on JRE 1.5 or higher<br>
	Monitoring must be turned on for this function to work. If a request has been excluded by the monitoring<br>
	filter, it will not show up on this list.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-
-� 7-9;� A� G-/� 3-
.� 7--
� KM� OYQS� UW-W� 3-
/� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   
! 2
- <
- >
- ;
- ;
- 2
- V
. d
. U
. U
. U
. {
/ z
/ z
/ z
/  �      f     H� lY
� OYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Acfservermonitoring2ecfc1605556527$funcGETMEMORYUTILIZATIONSUMMARY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this CLcfservermonitoring2ecfc1605556527$funcGETMEMORYUTILIZATIONSUMMARY; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getMemoryUtilizationSummary ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns a summary of memory utilization across the different scopes as a struct with the following keys:<br>
	SERVERSCOPESIZE -- The size of the server scope in bytes<br>
	APPLICATIONSCOPESSIZE -- The sum of the sizes of all application scopes in bytes<br>
	SESSIONSCOPESSIZE -- The sum of the sizes of all sessions in bytes<br>
	Monitoring and memory monitoring must be turned on for this function to work properly.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-/� 3-� 7--
� KM� OYQS� UW-W� 3-� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� OYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc >cfservermonitoring2ecfc1605556527$funcGETACTIVECFTHREADDETAILS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this @Lcfservermonitoring2ecfc1605556527$funcGETACTIVECFTHREADDETAILS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , JAVATHREADNAME . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Z [
  \ checkAdminRoles ^ java/lang/Object ` coldfusion.monitoring b _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; d e
  f  
		 h MONITORINGSERVICE j &(Ljava/lang/String;)Ljava/lang/Object; Z l
  m getCFThreadDetails o java/lang/String q _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; s t
  u 
	 w getActiveCFThreadDetails y metaData Ljava/lang/Object; { |	  } struct  remote � &coldfusion/runtime/AttributeCollection � name � hint ��Returns details for CF thread being handled by the specified java thread. Result is returned as a struct with the following keys:<br>
	CFTHREADNAME -- name of the cf thread.<br>
	SPAWNEDFROM  -- template Path from which the thread was spawned.<br>
	REQUESTTEMPLATE -- template path for which the original request came.<br>
	LINENO -- line no at which the cfthread was spawned<br>
	THREADNAME -- Name of the java thread.<br>
	TIMETAKEN -- Time taken<br>
	CFSTACKTRACE -- Array of stack frame strings<br>
	JAVASTACKTRACE -- Array of stack frame strings, available only on JRE 1.5 or higher<br>
	Monitoring must be turned on for this function to work. If a request has been excluded by the monitoring<br>
	filter, it will not show up on this list.<br> � 
returntype � access � 
Parameters � HINT � -name of the java thread handling the cfthread � TYPE � NAME � javathreadname � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       { |           #     *� 
�                 � �     !     ��                 � �     !     z�                 � �    �     �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-
l� I-KM� S� Y-A� E-
m� I--
� ]_� aYcS� gW-i� E-
n� I--k� np� aY-� rY/S� vS� g�-x� E�       z    �       � � �    � � |    � � �    � � �    � � �    � � |    � * +    �  �    �  � 	   �  � 
   � . �  �   F   
_ I
l S
l U
l R
l R
l I
l m
m {
m l
m l
m l
m �
n �
n �
n �
n �
n  �      �     �� �Y
� aY�SYzSY�SY�SY�SY�SY�SY�SY�SY	� aY� �Y� aY�SY�SY�SY1SY�SY�SY�SY�S� �SS� �� ~�           �      � �     !     ��                 � �     (     
� rY/S�           
      � �     "     � ~�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 2cfservermonitoring2ecfc1605556527$funcABORTREQUEST  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 4Lcfservermonitoring2ecfc1605556527$funcABORTREQUEST; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 
THREADNAME . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 
		 Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkRootAdminUser ` java/lang/Object b _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; d e
  f MONITORINGSERVICE h &(Ljava/lang/String;)Ljava/lang/Object; \ j
  k abortRequest m java/lang/String o _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; q r
  s JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; u v
 R w 
	 y metaData Ljava/lang/Object; { |	  } boolean  remote � &coldfusion/runtime/AttributeCollection � name � hint �	Aborts the request being handled by the specified thread. Only the root admin user may invoke this API.<br>
	A return value of true indicates that the request aborted successfully. False indicates that
	a problem occurred while aborting the request; check monitor.log for details. � access � 
returntype � 
Parameters � TYPE � REQUIRED � true � NAME � 
threadName � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       { |           #     *� 
�                 � �     !     ��                 � �     !     n�                 � �    �     �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-�� I-KM� S� Y-[� E-�� I--
� _a� c� gW-[� E-�� I--i� ln� cY-�� I-1-� pY/S� t� xS� g�-z� E�       z    �       � � �    � � |    � � �    � � �    � � �    � � |    � * +    �  �    �  � 	   �  � 
   � . �  �   N   | I� S� U� R� R� I� m� l� l� l� �� �� �� �� �� �� �� ��  �      �     u� �Y
� cY�SYnSY�SY�SY�SY�SY�SY�SY�SY	� cY� �Y� cY�SY1SY�SY�SY�SY�S� �SS� �� ~�           u      � �     !     ��                 � �     (     
� pY/S�           
      � �     "     � ~�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc :cfservermonitoring2ecfc1605556527$funcGETLOGGEDINUSERCOUNT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this <Lcfservermonitoring2ecfc1605556527$funcGETLOGGEDINUSERCOUNT; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getLoggedInUserCount ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e numeric g remote i &coldfusion/runtime/AttributeCollection k name m hint o @Returns the number of concurrent users logged in via CFLOGINUSER q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-b� 7-9;� A� G-I� 3-c� 7--
� MO� QYSS� WW-I� 3-d� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   ` 2b <b >b ;b ;b 2b Vc dc Uc Uc Uc {d zd zd zd  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ?cfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDCFTHREADS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ALcfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDCFTHREADS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getTopMemoryUsedThreads ] 
	 _ java/lang/String a getTopMemoryUsedCFThreads c metaData Ljava/lang/Object; e f	  g array i remote k &coldfusion/runtime/AttributeCollection m name o hint q|Returns the top memory used threads as an array of structs, each of which has the following keys:<br>
	SPAWNEDFROM -- Full path to the template that spawned the thread<br>
	LINENO -- Line no in the template at which this thread was spawned<br>
	LASTRESPONSETIME -- The time taken for the thread to complete at the last invocation in milliseconds<br>
	LASTTIMEEXECUTED -- The date/time at which the thread was last invoked.<br>
	LASTREQUESTSIZE -- The amount of memory allocated over the course of the request at the last invocation in bytes<br>
	AVGTIME  --  The average response time for the thread in milliseconds<br>
	MINTIME  --  The min response time for the thread in milliseconds<br>
	MAXTIME  --  The max response time for the thread in milliseconds<br>
	AVGREQUESTSIZE -- The average amount of memory allocated over the course of the CF thread in bytes<br>
	MAXREQUESTSIZE -- The max amount of memory allocated over the course of the CF Thread in bytes<br>
	MINREQUESTSIZE -- The min amount of memory allocated over the course of the CF Thread in bytes<br>
	Monitoring and memory monitoring must be turned on for this function to work.<br> s 
returntype u access w 
Parameters y ([Ljava/lang/Object;)V  {
 n | getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       e f           #     *� 
�                 ~      !     j�                 �      !     d�                 � �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-	ڶ 7-9;� A� G-/� 3-	۶ 7--
� KM� OYQS� UW-W� 3-	ܶ 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � f    � � �    � � �    � � �    � � f    � * +    �  �    �  � 	   �  � 
 �   B   	� 2	� <	� >	� ;	� ;	� 2	� V	� d	� U	� U	� U	� {	� z	� z	� z	�  �      f     H� nY
� OYpSYdSYrSYtSYvSYjSYxSYlSYzSY	� OS� }� h�           H      �      !     l�                 � �     #     � b�                 � �     "     � h�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc @cfservermonitoring2ecfc1605556527$funcRESETTOPAVERAGESLOWQUERIES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this BLcfservermonitoring2ecfc1605556527$funcRESETTOPAVERAGESLOWQUERIES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ resetTopAverageSlowQueries ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m FResets the top slow query list and clears all query timing information o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-I� 3-� 7--
� MO� QYSS� WW-I� 3-� 7--Y� \^� Q� WW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2 < > ; ; 2 V d U U U { z z z  �      Z     <� jY� QYlSY^SYnSYpSYrSYhSYtSY� QS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Bcfservermonitoring2ecfc1605556527$funcGETCFTHREADMEMORYUSEDDETAILS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this DLcfservermonitoring2ecfc1605556527$funcGETCFTHREADMEMORYUSEDDETAILS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , TEMPLATEPATH . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > LINENO @ 

         B _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V D E
  F _setCurrentLineNo (I)V H I
  J 	component L CFIDE.adminapi.accessmanager N CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; P Q coldfusion/runtime/CFPage S
 T R set (Ljava/lang/Object;)V V W coldfusion/runtime/Variable Y
 Z X _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h  
		 j MONITORINGSERVICE l &(Ljava/lang/String;)Ljava/lang/Object; \ n
  o getThreadMemoryUsedDetails q java/lang/String s _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; u v
  w JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; y z
 T { int } 
	  getCFThreadMemoryUsedDetails � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint �uReturns the 10 largest variables allocated inside thread execution for the specified cfthread as an array of structs with the following keys:<br>
	VARIABLENAME -- The name of the request variable<br>
	VARIABLETYPE -- The type of the variable<br>
	VARIABLESCOPE -- The scope in which the variable was declared, may be LOCAL (function local scope), PAGE (page scope) or REQUEST (request scope).<br>
	TEMPLATEPATH -- Path to the template on which the template was declared.<br>
	FUNCTIONNAME -- The name of the function in which the variable was declared, if any.<br>
	AVGSIZE -- The average memory occupied by the variable in bytes<br>
	LASTSIZE -- The size of the variable on the last request<br>
	Monitoring, memory monitoring and profiling must be turned on for this function to work.<br>
	This information will be available only for requests in the top memory used requests list.<br> � 
returntype � access � 
Parameters � HINT � 3The template path from which the thread was spawned � TYPE � NAME � templatepath � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � lineNo � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     ��                 � �    �     +� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?*A� 7� ;:+� ?-C� G
-
� K-MO� U� [-C� G-
� K--
� _a� cYeS� iW-k� G-
� K--m� pr� cY-
� K-1-� tY/S� x� |SY-
� K-~-� tYAS� x� |S� i�-�� G�       �            � �     � �     � �     � �     � �     � �     * +      �      � 	     � 
    . �     @ �  �   b   
 _
 i
 k
 h
 h
 _
 �
 �
 �
 �
 �
 �
 �
 �
 �
 �
 �
 �
 �
 �
 �
 �
 �
  �      �     �� �Y
� cY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� cY� �Y� cY�SY�SY�SY1SY�SY�SY�SY�S� �SY� �Y� cY�SY�SY�SY�S� �SS� �� ��           �      � �     !     ��                 � �     -     � tY/SYAS�                 � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 7cfservermonitoring2ecfc1605556527$funcGETJVMMEMORYSTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 9Lcfservermonitoring2ecfc1605556527$funcGETJVMMEMORYSTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getJVMMemoryStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o �Returns JVM Memory stats with the following keys:<br>
	FREEMEMORY -- The free memory in the JVM in bytes.<br>
	USEDMEMORY -- The used memory in the JVM in bytes.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-/� 3-�� 7--
� KM� OYQS� UW-W� 3-�� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� OYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ;cfservermonitoring2ecfc1605556527$funcGETCURRENTREPORTSSIZE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this =Lcfservermonitoring2ecfc1605556527$funcGETCURRENTREPORTSSIZE; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V REPORT X MONITORINGSERVICE Z &(Ljava/lang/String;)Ljava/lang/Object; J \
  ] getCurrentReportsSize _ _set '(Ljava/lang/String;Ljava/lang/Object;)V a b
  c REALTIMESTATS e GETREALTIMESTATS g getRealtimeStats i 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; k l
  m java/lang/String o JVMFREEMEMORY q _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; s t
  u _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V w x
  y JVMUSEDMEMORY { _autoscalarize } \
  ~ 
	 � metaData Ljava/lang/Object; � �	  � struct � remote � &coldfusion/runtime/AttributeCollection � name � hint �RReturns the size of the current monitor reports<br><br>
Returns all active request as an array of structs with the following keys:<br>
	TOPMEMORYUSEDREQUESTCNT  -- The size of the requests by memory utilitization report<br>
    TOPSLOWREQUESTCNT     --- The size of the slow requests report<br>
    TOPHITCOUNTREQUESTCNT --- The size of the top hit count requests report<br>
    REQUESTCNTWITHERRORS  -- The size of the requests with errors report<br>
    TIMEDOUTREQUESTCNT    -- The size of the timed out requests report<br>
    TOPMEMORYUSEDSESSIONCNT --- The size of the sessions by memory utilization report<br>
    TOPAVERAGESLOWQUERYCNT  -- The size of the average slow queries report<br>
    TOPMEMORYUSEDQUERYCNT  -- The size of the queries by memory utilization report<br>
    TOPSLOWQUERYCNT  -- The size of the slow queries report<br>
	TOPFREQUENTLYRUNQUERYCNT -- The size of the most frequently run queries report<br>
	JVMFREEMEMORY --The free memory in the JVM in bytes<br>
	JVMUSEDMEMORY -- The used memory in the JVM in bytes<br>
	Monitoring must be turned on for this function to work.<br> � 
returntype � access � 
Parameters � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     `�                 � �    ( 	   +� :+,� :	+� :
-� #� ):-� -:-/� 3
-@� 7-9;� A� G-I� 3-A� 7--
� MO� QYSS� WW-I� 3-Y-B� 7--[� ^`� Q� W� d-I� 3-f-C� 7-h� ^j-� Q� n� d-I� 3-Y� pYrS-f� pYrS� v� z-I� 3-Y� pY|S-f� pY|S� v� z-I� 3-Y� �-�� 3�       p          � �    � �    � �    � �    � �    � �    * +     �     � 	    � 
 �   � !  0 2@ <@ >@ ;@ ;@ 2@ VA dA UA UA UA ~B }B }B sB sB �C �C �C �C �C �D �D �D �D �E �E �E �E	F	F	F  �      f     H� �Y
� QY�SY`SY�SY�SY�SY�SY�SY�SY�SY	� QS� �� ��           H      � �     !     ��                 � �     #     � p�                 � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 8cfservermonitoring2ecfc1605556527$funcISPROFILINGENABLED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this :Lcfservermonitoring2ecfc1605556527$funcISPROFILINGENABLED; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ isProfilingEnabled ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e boolean g remote i &coldfusion/runtime/AttributeCollection k name m hint o -Indicates whether or not profiling is enabled q access s 
returntype u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-b� 7-9;� A� G-/� 3-c� 7--
� KM� OYQS� UW-W� 3-d� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   ` 2b <b >b ;b ;b 2b Vc dc Uc Uc Uc {d zd zd zd  �      f     H� lY
� OYnSY^SYpSYrSYtSYjSYvSYhSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Icfservermonitoring2ecfc1605556527$funcGETAVERAGESLOWREQUESTINVOCATIONDATA  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this KLcfservermonitoring2ecfc1605556527$funcGETAVERAGESLOWREQUESTINVOCATIONDATA; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , TEMPLATEPATH . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > get (I)Ljava/lang/Object; @ A
 6 B FUNCTIONNAME D   F put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; H I
 6 J 

         L _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V N O
  P _setCurrentLineNo (I)V R S
  T 	component V CFIDE.adminapi.accessmanager X CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Z [ coldfusion/runtime/CFPage ]
 ^ \ set (Ljava/lang/Object;)V ` a coldfusion/runtime/Variable c
 d b 
		 f _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; h i
  j checkAdminRoles l java/lang/Object n coldfusion.monitoring p _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; r s
  t MONITORINGSERVICE v &(Ljava/lang/String;)Ljava/lang/Object; h x
  y #getAverageSlowRequestInvocationData { java/lang/String } _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;  �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 ^ � 
	 � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint �(Returns slow invocation data for the specified template path as an array of structs, each of which has the following keys.<br>
	Data is returned only for the top slow tags/functions.<br>
	TAGNAME -- name of the tag<br>
	FUNCTIONNAME -- name of the function (optional)<br>
	TEMPLATEPATH -- The path to the template on which the function or tag was invoked.<br>
	LINENO -- The line no at which the tag or function was invoked.<br>
	CFSTACKTRACE -- Array of stack frame strings showing the CF stack to the invocation of the tag/function.<br>
	AVGTIME -- The average execution time for the tag/function.<br>
	MAXTIME -- The maximum execution time for the tag/function.<br>
	MINTIME -- The minimum execution time for the tag/function.<br>
	Monitoring and profiling must be turned on for this function to work.<br> � 
returntype � access � 
Parameters � HINT � =The template path for which to return request invocation data � TYPE � NAME � templatepath � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � false � :The function invoked, if the template path points to a CFC � DEFAULT � functionname � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     |�                 � �        +� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?� C� EG� KW*E1� 7� ;:+� ?-M� Q
- ն U-WY� _� e-g� Q- ֶ U--
� km� oYqS� uW-g� Q- ׶ U--w� z|� oY- ׶ U-1-� ~Y/S� �� �SY- ׶ U-1-� ~YES� �� �S� u�-�� Q�       �          � �    � �    � �    � �    � �    � �    * +     �     � 	    � 
   . �    D �  �   f    � O � t � ~ � � � } � } � t � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �      �     ƻ �Y
� oY�SY|SY�SY�SY�SY�SY�SY�SY�SY	� oY� �Y� oY�SY�SY�SY1SY�SY�SY�SY�S� �SY� �Y
� oY�SY1SY�SY�SY�SY�SY�SYGSY�SY	�S� �SS� �� ��           �      � �     !     ��                 � �     -     � ~Y/SYES�                 � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Ccfservermonitoring2ecfc1605556527$funcGETAPPLICATIONSCOPEMEMORYUSED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ELcfservermonitoring2ecfc1605556527$funcGETAPPLICATIONSCOPEMEMORYUSED; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , APPLICATIONNAME . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 

         Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h  
		 j MONITORINGSERVICE l &(Ljava/lang/String;)Ljava/lang/Object; \ n
  o getApplicationScopeMemoryUsed q java/lang/String s _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; u v
  w JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; y z
 R { 
	 } metaData Ljava/lang/Object;  �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint �nReturns details of how memory is used in the specified application scope as an arrays of structs with the following keys:<br>
	VARIABLENAME -- The name of the request variable<br>
	VARIABLETYPE -- The type of the variable<br>
	SIZE -- The memory occupied by the variable in bytes<br>
	Monitoring and memory monitoring must be turned on to get the SIZE attribute.<br> � 
returntype � access � 
Parameters � TYPE � REQUIRED � true � NAME � applicationName � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1        �           #     *� 
�                 � �     !     ��                 � �     !     r�                 � �    �     �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-ض I-KM� S� Y-[� E-ٶ I--
� _a� cYeS� iW-k� E-ڶ I--m� pr� cY-ڶ I-1-� tY/S� x� |S� i�-~� E�       z    �       � � �    � � �    � � �    � � �    � � �    � � �    � * +    �  �    �  � 	   �  � 
   � . �  �   R   � I� S� U� R� R� I� m� {� l� l� l� �� �� �� �� �� �� �� ��  �      �     u� �Y
� cY�SYrSY�SY�SY�SY�SY�SY�SY�SY	� cY� �Y� cY�SY1SY�SY�SY�SY�S� �SS� �� ��           u      � �     !     ��                 � �     (     
� tY/S�           
      � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Gcfservermonitoring2ecfc1605556527$funcGETALLAPPLICATIONSCOPESMEMORYUSED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ILcfservermonitoring2ecfc1605556527$funcGETALLAPPLICATIONSCOPESMEMORYUSED; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ !getAllApplicationScopesMemoryUsed ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o CReturns details of how memory is used in all the application scopes q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-Ķ 7-9;� A� G-/� 3-Ŷ 7--
� KM� OYQS� UW-W� 3-ƶ 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� OYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc :cfservermonitoring2ecfc1605556527$funcGETREQUESTWITHERRORS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this <Lcfservermonitoring2ecfc1605556527$funcGETREQUESTWITHERRORS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getRequestWithErrors ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�	Returns the list of all requests with errors as an array of structs with the following keys:<br>
	TEMPLATEPATH -- Full path to the template that was executed<br>
	FUNCTIONNAME-- The name of the function that was invoked, if this was a web service, flash remoting, remote CFC	or gateway request.<br>
	ERRORCOUNT -- The number of times errors have occurred on this template.<br>
	LASTERRORAT -- The date/time at which the last error occurred.<br>
	Monitoring must be turned on for this function to work.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-g� 7-9;� A� G-I� 3-h� 7--
� MO� QYSS� WW-I� 3-i� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   ` 2g <g >g ;g ;g 2g Vh dh Uh Uh Uh {i zi zi zi  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcGETHITCOUNTSTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcGETHITCOUNTSTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getHitCountStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns a struct of the hit counts for each type of requests with the following keys:<br>
	TEMPLATEHITCOUNT-- No of hits via regular HTTP template requests<br>
    GATEWAYHITCOUNT -- No of hits via gateways<br>
    FLASHHITCOUNT -- No of hits via Flash remoting<br>
    RCFCHITCOUNT -- No of hits via HTTP calls to CFC functions<br>
    WSHITCOUNT -- No of hits via web services<br>
	TOTALHITCOUNT -- The total hit count<br>
	Monitoring must be turned on for this function to work.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-I� 3-� 7--
� MO� QYSS� WW-I� 3-�� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 7cfservermonitoring2ecfc1605556527$funcGETTOPSLOWQUERIES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 9Lcfservermonitoring2ecfc1605556527$funcGETTOPSLOWQUERIES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getTopSlowQueries ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns the top slow queries as an array of structs with the following keys:<br>
	LASTTIMEEXECUTED -- The time at which the query was last executed<br>
	TIMETAKEN -- The amount of time taken by this slow instance of the query to execute<br>
	AVGTIME -- The average time taken for the query to execute in milliseconds<br>
	MINTIME -- The minimum time taken for the query to execute in milliseconds<br>
	MAXTIME -- The maximum time taken for the query to execute in milliseconds<br>
	LASTRESPONSETIME -- The time taken to execute the last invocation of the query<br>
	AVGSIZE -- The average size of the query in bytes<br>
	MINSIZE -- The minimum size of the query in bytes<br>
	MAXSIZE -- The maximum size of the query in bytes<br>
	LASTSIZE -- The last size of the query in bytes<br>
	ISCACHED -- Boolean, indicates whether or not the query is cached<br>
	QUERYNAME -- The query name<br>
	DSN -- The datasource name<br>
	SQL -- The SQL for the query<br>
	TEMPLATEPATH-- The path to the template on which the query is declared<br>
	LINENUMBER-- The line number on which the query is declared<br>
	FUNCTIONNAME-- The function within which the query is declared, if any<br>
	EXECUTIONCOUNT -- The number of times the query has been executed<br>
	TIMEEXECUTED --  -- The time at which query execution began<br>
	Monitoring and profiling must be turned on for this function to work.<br>
	Stats providing details of memory consumed will have values only if memory monitoring is turned on.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-I� 3-�� 7--
� MO� QYSS� WW-I� 3-�� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 7cfservermonitoring2ecfc1605556527$funcGETTIMEOUTHISTORY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 9Lcfservermonitoring2ecfc1605556527$funcGETTIMEOUTHISTORY; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , TEMPLATEPATH . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > get (I)Ljava/lang/Object; @ A
 6 B FUNCTIONNAME D   F put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; H I
 6 J 

         L _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V N O
  P _setCurrentLineNo (I)V R S
  T 	component V CFIDE.adminapi.accessmanager X CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Z [ coldfusion/runtime/CFPage ]
 ^ \ set (Ljava/lang/Object;)V ` a coldfusion/runtime/Variable c
 d b 
		 f _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; h i
  j checkAdminRoles l java/lang/Object n coldfusion.monitoring p _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; r s
  t MONITORINGSERVICE v &(Ljava/lang/String;)Ljava/lang/Object; h x
  y getTimeOutHistoryData { java/lang/String } _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;  �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 ^ � 
	 � getTimeOutHistory � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint ��Returns details of the last ten timeouts for the specified request as an array of structs with the following keys:<br>
	EXECUTEDAT -- When the template was last executed<br>
	CFSTACKTRACE -- The CF stack trace of the point at which the request timed out, Array of stack frame strings<br>
	JAVASTACKTRACE -- Array of java exception stack frame strings.<br>
	Monitoring must be turned on for this function to work.<br> � 
returntype � access � 
Parameters � HINT � 6The template path for which to return request timeouts � TYPE � NAME � templatepath � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � false � :The function invoked, if the template path points to a CFC � DEFAULT � functionname � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     ��                 � �        +� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?� C� EG� KW*E1� 7� ;:+� ?-M� Q
-�� U-WY� _� e-g� Q-¶ U--
� km� oYqS� uW-g� Q-ö U--w� z|� oY-ö U-1-� ~Y/S� �� �SY-ö U-1-� ~YES� �� �S� u�-�� Q�       �          � �    � �    � �    � �    � �    � �    * +     �     � 	    � 
   . �    D �  �   f   � O� t� ~� �� }� }� t� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��  �      �     ƻ �Y
� oY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� oY� �Y� oY�SY�SY�SY1SY�SY�SY�SY�S� �SY� �Y
� oY�SY1SY�SY�SY�SY�SY�SYGSY�SY	�S� �SS� �� ��           �      � �     !     ��                 � �     -     � ~Y/SYES�                 � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ;cfservermonitoring2ecfc1605556527$funcGETCFTHREADQUEUESTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this =Lcfservermonitoring2ecfc1605556527$funcGETCFTHREADQUEUESTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 
		 . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getCFThreadQueueStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o �Returns the thread queue stats as struct with these keys<br>
	CFTHREADSQUEUED -- the total number of CF threads queued<br>
	CFTHREADSRUNNING -- the total number of CF threads running<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-
�� 7-9;� A� G-/� 3-
�� 7--
� KM� OYQS� UW-W� 3-
�� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   
� 2
� <
� >
� ;
� ;
� 2
� V
� d
� U
� U
� U
� {
� z
� z
� z
�  �      f     H� lY
� OYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 7cfservermonitoring2ecfc1605556527$funcGETACTIVESESSIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 9Lcfservermonitoring2ecfc1605556527$funcGETACTIVESESSIONS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , CFAPPLICATIONNAME . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 
		 Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h arguments.cfapplicationname j 	IsDefined (Ljava/lang/String;)Z l m
 R n 
			 p MONITORINGSERVICE r &(Ljava/lang/String;)Ljava/lang/Object; \ t
  u getActiveSessions w java/lang/String y _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; { |
  } JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;  �
 R � getAllActiveSessions � 
	 � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint ��Returns details of all active sessions, associated with an application,as an array of structs with the following keys:<br>
	CFSESSIONID -- The session ID assigned by CF<br>
	CLIENTIPADDRESS -- Client's IP Address<br>
	SESSIONID -- The ID of the underlying session. This will be different from the CFSESSIONID under a J2EE deployment, as it will indicate the ID of the underlying HTTP session.<br>
	SESSIONSIZE -- The size of the session in bytes
	APPNAME -- The name application for which the session was created, as specified on the CFAPPLICATION tag.<br>
	ELAPSEDTIME -- The time for which the session has been alive, in milliseconds.<br>
	TIMESINCELASTACCESS -- The time that has elapsed since the last access to the session in milliseconds.<br>
	MAXINACTIVEINTERVAL -- The amount of time that the session will be kept alive when it is inactive, in milliseconds.<br>
	Monitoring and memory monitoring must be turned on to get a valid value for the SESSIONSIZE attribute.<br> � 
returntype � access � 
Parameters � TYPE � REQUIRED � false � NAME � cfapplicationname � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     x�                 � �        +� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-�� I-KM� S� Y-[� E-�� I--
� _a� cYeS� iW-[� E-�� I-k� o� M-q� E-�� I--s� vx� cY-�� I-1-� zY/S� ~� �S� i�-[� E� +-q� E-�� I--s� v�� c� i�-[� E-�� E�       z          � �    � �    � �    � �    � �    � �    * +     �     � 	    � 
   . �  �   r   � I� S� U� R� R� I� m� {� l� l� l� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��  �      �     u� �Y
� cY�SYxSY�SY�SY�SY�SY�SY�SY�SY	� cY� �Y� cY�SY1SY�SY�SY�SY�S� �SS� �� ��           u      � �     !     ��                 � �     (     
� zY/S�           
      � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 4cfservermonitoring2ecfc1605556527$funcGETSNAPSHOTDIR  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 6Lcfservermonitoring2ecfc1605556527$funcGETSNAPSHOTDIR; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V SNAPSHOTDIR X _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; Z [
  \ 
	 ^ java/lang/String ` getSnapshotDir b metaData Ljava/lang/Object; d e	  f string h public j &coldfusion/runtime/AttributeCollection l name n hint p OReturns the directory path to the directory in which snapshot files are located r 
returntype t access v 
Parameters x ([Ljava/lang/Object;)V  z
 m { getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       d e           #     *� 
�                 } ~     !     i�                  ~     !     c�                 � �    J     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-	<� 7-9;� A� G-/� 3-	=� 7--
� KM� OYQS� UW-W� 3-Y� ]�-_� 3�       p    �       � � �    � � e    � � �    � � �    � � �    � � e    � * +    �  �    �  � 	   �  � 
 �   >   	: 2	< <	< >	< ;	< ;	< 2	< V	= d	= U	= U	= U	= s	> s	> s	>  �      f     H� mY
� OYoSYcSYqSYsSYuSYiSYwSYkSYySY	� OS� |� g�           H      � ~     !     k�                 � �     #     � a�                 � �     "     � g�                     ����  -m 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcGETREALTIMESTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcGETREALTIMESTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  REALTIMESTATS  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   ACCESSMANAGER  coldfusion/runtime/CfJspPage   pageContext #Lcoldfusion/runtime/NeoPageContext; " #	 ! $ getOut ()Ljavax/servlet/jsp/JspWriter; & ' javax/servlet/jsp/PageContext )
 * ( parent Ljavax/servlet/jsp/tagext/Tag; , -	 ! . 
		 0 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 2 3
 ! 4 _setCurrentLineNo (I)V 6 7
 ! 8 	StructNew !()Lcoldfusion/util/FastHashtable; : ; coldfusion/runtime/CFPage =
 > < set (Ljava/lang/Object;)V @ A coldfusion/runtime/Variable C
 D B 

         F 	component H CFIDE.adminapi.accessmanager J CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; L M
 > N _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; P Q
 ! R checkAdminRoles T java/lang/Object V coldfusion.monitoring X _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; Z [
 ! \ 


		
		 ^ MONITORSTATUS ` GETMONITORSTATUS b &(Ljava/lang/String;)Ljava/lang/Object; P d
 ! e getMonitorStatus g 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; i j
 ! k _set '(Ljava/lang/String;Ljava/lang/Object;)V m n
 ! o 

		 q java/lang/String s 
SERVERTIME u CURRENTSERVERTIME w _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; y z
 ! { _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V } ~
 !  THROTTLESTATS � GETCURRENTTHROTTLESTATS � getCurrentThrottleStats � THROTTLEQUEUESIZE � TOTALTHROTTLEMEMORYUSED � QUERYCACHESTATS � GETQUERYCACHESTATS � getQueryCacheStats � QUERYCACHEHITRATIO � HITRATIO � QUERYCACHESIZE � SIZE � CACHEDQUERYCOUNT � COUNT � CFCACHESTATS � GETTEMPLATECACHESTATS � getTemplateCacheStats � TEMPLATECACHEHITRATIO � TEMPLATECACHECOUNT � TEMPLATECACHESIZE � REQUESTLOAD � GETREQUESTLOAD � getRequestLoad � AVGRESPONSETIME � GETAVERAGERESPONSETIME � getAverageResponseTime � CONCURRENTUSERCOUNT � GETLOGGEDINUSERCOUNT � getLoggedInUserCount � ACTIVESESSIONCOUNT � GETACTIVESESSIONCOUNT � getActiveSessionCount � CFMEMUTILSTATS � GETMEMORYUTILIZATIONSUMMARY � getMemoryUtilizationSummary � SERVERSCOPESIZE � APPLICATIONSCOPESSIZE � SESSIONSCOPESSIZE � JVMMEMSTATS � GETJVMMEMORYSTATS � getJVMMemoryStats � JVMFREEMEMORY � 
FREEMEMORY � JVMUSEDMEMORY � 
USEDMEMORY � 	VARIABLES � REQUESTQUECHECKED � _boolean (Ljava/lang/Object;)Z � � coldfusion/runtime/Cast �
 � � 
			 � true � :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V } �
 ! � CFREQQUESTATS � GETREQUESTQUEUESTATS � getRequestQueueStats � REQUESTQUEAVAILABLE � _autoscalarize � d
 ! � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � REQQUEUESTATSNA � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 > � _Object (Z)Ljava/lang/Object;
 � 

			
			 	REQQUEUED 
					 
REQRUNNING REQTIMEDOUT TEMPLATEREQQUEUED TEMPLATEREQRUNNING TEMPLATEREQTIMEDOUT 

				 FLASHREMOTINGREQQUEUED FLASHREMOTINGREQRUNNING FLASHREMOTINGREQTIMEDOUT WEBSERVICEREQQUEUED WEBSERVICEREQRUNNING WEBSERVICEREQTIMEDOUT! CFCREQQUEUED# CFCREQRUNNING% CFCREQTIMEDOUT' CFTHREADSTATS) GETCFTHREADQUEUESTATS+ getCFThreadQueueStats- CFTHREADQUEUED/ CFTHREADSQUEUED1 CFTHREADRUNNING3 CFTHREADSRUNNING5 � Q
 !7 
	9 getRealtimeStats; metaData Ljava/lang/Object;=>	 ? structA remoteC &coldfusion/runtime/AttributeCollectionE nameG hintIReturns a struct of various realtime statistics<br><br>
	Returns a summary of statistics as a struct with the following keys:<br>
	ACTIVESESSIONCOUNT	--	Returns the number of current sessions on the server<br>
	APPLICATIONSCOPESSIZE -- The size of the application scope in bytes<br>
	AVGRESPONSETIME -- Returns average response time for the server<br>
	CACHEDQUERYCOUNT -- The number of queries in the cache<br>
	CFCREQQUEUED -- CFC requests (via HTTP) that timed out waiting to run<br>
	CFCREQRUNNING -- CFC requests (via HTTP) running<br>
	CFCREQTIMEDOUT -- CFC requests (via HTTP) that timed out waiting to run<br>
	CFTHREADQUEUED -- the total number of CF threads queued<br>
	CFTHREADRUNNING -- the total number of CF threads running<br>
	CONCURRENTUSERCOUNT -- Returns the number of users logged in via the CFLOGIN tag<br>
	FLASHREMOTINGREQQUEUED -- Flash remoting requests waiting to run<br>
	FLASHREMOTINGREQRUNNING -- Flash remoting requests running<br>
	FLASHREMOTINGREQTIMEDOUT -- Flash remoting requests that timed out waiting to run<br>
	JVMFREEMEMORY --The free memory in the JVM in bytes<br>
	JVMUSEDMEMORY -- The used memory in the JVM in bytes<br>
	QUERYCACHEHITRATIO -- The query cache hit ratio (hits/(hits+misses))<br>
	QUERYCACHESIZE -- The size of the cache in bytes<br>
	REQQUEUED -- on JRun, the total number of request threads running<br>
	REQRUNNING -- on JRun, the total number of request threads queued<br>
	REQTIMEDOUT -- on JRun, the total number of request timeouts<br>
	REQUESTLOAD -- Returns the request load for the server in requests/sec<br>
	SERVERSCOPESIZE -- The size of the server scope in bytes<br>
	SERVERTIME -- Current time on the server<br>
	SESSIONSCOPESSIZE -- The size of the session scope in bytes<br>
	TEMPLATECACHECOUNT -- The number of templates in the template cache<br>
	TEMPLATECACHEHITRATIO -- The hit ratio for the template cache<br>
	TEMPLATECACHESIZE -- The size of the template cache in bytes<br>
	TEMPLATEREQQUEUED -- template requests waiting to run<br>
	TEMPLATEREQRUNNING -- template requests running<br>
	TEMPLATEREQTIMEDOUT -- template requests that timed out waiting to run<br>
	THROTTLEQUEUESIZE -- The number of requests queued in the request throttle<br>
	TOTALTHROTTLEMEMORYUSED -- The amount of memory used by the throttle in bytes<br>
	WEBSERVICEREQQUEUED -- Web Service requests waiting to run<br>
	WEBSERVICEREQRUNNING -- Web Service requests running<br>
	WEBSERVICEREQTIMEDOUT -- Web Service requests that timed out waiting to run<br>
	Monitoring must be turned on for this function to work fully. Stats providing details of memory consumed<br>
	will have values only if memory monitoring is turned on. The exception here is for JVM memory stats,<br>
	which will be available regardless of monitoring and/or memory monitoring being turned on or off.<br>K 
returntypeM accessO 
ParametersQ ([Ljava/lang/Object;)V S
FT getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1      =>           #     *� 
�                VW     "     B�                XW     "     <�                YZ    ) 	   �+� :+,� :	+� :
+� :-� %� +:-� /:-1� 5
-ɶ 9� ?� E-G� 5-˶ 9-IK� O� E-1� 5-̶ 9--� SU� WYYS� ]W-_� 5-a-϶ 9-c� fh-� W� l� p-r� 5-
� tYvS-a� tYxS� |� �-r� 5-�-Ӷ 9-�� f�-� W� l� p-r� 5-
� tY�S-�� tY�S� |� �-1� 5-
� tY�S-�� tY�S� |� �-r� 5-�-ض 9-�� f�-� W� l� p-r� 5-
� tY�S-�� tY�S� |� �-1� 5-
� tY�S-�� tY�S� |� �-1� 5-
� tY�S-�� tY�S� |� �-r� 5-�-޶ 9-�� f�-� W� l� p-r� 5-
� tY�S-�� tY�S� |� �-1� 5-
� tY�S-�� tY�S� |� �-1� 5-
� tY�S-�� tY�S� |� �-r� 5-
� tY�S-� 9-�� f�-� W� l� �-1� 5-
� tY�S-� 9-�� f�-� W� l� �-1� 5-
� tY�S-� 9-�� f�-� W� l� �-1� 5-
� tY�S-� 9-�� f�-� W� l� �-r� 5-�-� 9-Ķ f�-� W� l� p-r� 5-
� tY�S-�� tY�S� |� �-1� 5-
� tY�S-�� tY�S� |� �-1� 5-
� tY�S-�� tY�S� |� �-r� 5-�-� 9-ж f�-� W� l� p-r� 5-
� tY�S-�� tY�S� |� �-1� 5-
� tY�S-�� tY�S� |� �-r� 5-�� tY�S� |� ��� {-� 5-�� tY�S� �-� 5-�-�� 9-� f�-� W� l� p-� 5-�� tY�S-�� 9--�� �� ��� ��� �-1� 5-1� 5-�� tY�S� |� �@-� 5-�-�� 9-� f�-� W� l� p-� 5-�� 9--�� �� �� � 4-
� 5-
� tYS-�� tYS� |� �-� 5-� 5-�� 9--�� �� �� � 4-
� 5-
� tYS-�� tYS� |� �-� 5-� 5-� 9--�� �� �� � 4-
� 5-
� tYS-�� tYS� |� �-� 5-� 5-� 9--�� �� �� ��-
� 5-
� tYS-�� tYS� |� �-
� 5-
� tYS-�� tYS� |� �-
� 5-
� tYS-�� tYS� |� �-� 5-
� tYS-�� tYS� |� �-
� 5-
� tYS-�� tYS� |� �-
� 5-
� tYS-�� tYS� |� �-� 5-
� tYS-�� tYS� |� �-
� 5-
� tY S-�� tY S� |� �-
� 5-
� tY"S-�� tY"S� |� �-� 5-
� tY$S-�� tY$S� |� �-
� 5-
� tY&S-�� tY&S� |� �-
� 5-
� tY(S-�� tY(S� |� �-� 5-1� 5-r� 5-*-� 9-,� f.-� W� l� p-r� 5-
� tY0S-*� tY2S� |� �-1� 5-
� tY4S-*� tY6S� |� �-r� 5-
�8�-:� 5�       z   �      �[\   �]>   �^_   �`a   �bc   �d>   � , -   � e   � e 	  � e 
  � e f  � �  � :� C� C� :� Q� [� ]� Z� Z� Q� u� �� t� t� t� �� �� �� �� �� �� �� �� �� �� �� �� �� ������4�4�(�(�X�X�X�N�N���s�s�����������������������������
�
�<�<�0�0�b�b�V�V�������|�|��������������������������>�>�>�4�4�e�e�Y�Y���������������������������������"�"���<�<�<�g�g�[�[�~�~�~�t�t�������������������<���������������'��F�F�9�9��q�q�z�p�� � � � p���������� ??22hh[[�����
�
�
�
������55((^^QQ��zz������������888--bbUU��~~��� g      o     Q�FY
� WYHSY<SYJSYLSYNSYBSYPSYDSYRSY	� WS�U�@�           Q     hW     "     D�                ij     #     � t�                kl     "     �@�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 5cfservermonitoring2ecfc1605556527$funcRESETERRORSTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 7Lcfservermonitoring2ecfc1605556527$funcRESETERRORSTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ resetErrorStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m IResets all statistics collected on the server for the request with errors o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-/� 3-� 7--
� KM� OYQS� UW-W� 3-� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    2 < > ; ; 2 V d U U U { z z z  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 9cfservermonitoring2ecfc1605556527$funcRESETTOPSLOWQUERIES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ;Lcfservermonitoring2ecfc1605556527$funcRESETTOPSLOWQUERIES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ resetTopSlowQueries ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m Resets the top slow query list o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-ȶ 7-9;� A� G-I� 3-ɶ 7--
� MO� QYSS� WW-I� 3-ʶ 7--Y� \^� Q� WW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      Z     <� jY� QYlSY^SYnSYpSYrSYhSYtSY� QS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ;cfservermonitoring2ecfc1605556527$funcGETTEMPLATECACHESTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this =Lcfservermonitoring2ecfc1605556527$funcGETTEMPLATECACHESTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getTemplateCacheStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns statistics for the Template Cache as a struct with the following keys:<br>
	HITRATIO -- The cache hit ratio<br>
	COUNT -- The number of templates in the cache<br>
	SIZE -- The cache size in bytes<br>
	Note: The Template Cache allows growth beyond its configured size using a secondary<br>
	      cache. The data reported here is for both caches together, and so may show a COUNT<br>
	      value greater than that configured via the CF Administrator.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-/� 3-�� 7--
� KM� OYQS� UW-W� 3-�� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� OYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 8cfservermonitoring2ecfc1605556527$funcRESETTIMEDOUTSTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this :Lcfservermonitoring2ecfc1605556527$funcRESETTIMEDOUTSTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ resetTimedOutStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m HResets all statistics collected on the server for the timed out requests o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-/� 3-�� 7--
� KM� OYQS� UW-W� 3-�� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc >cfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDREQUESTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this @Lcfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDREQUESTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getTopMemoryUsedRequests ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns the top memory used requests as an array of structs, each of which has the following keys:<br>
	TEMPLATEPATH -- Full path to the template that was executed<br>
	FUNCTIONNAME-- The name of the function that was invoked, if this was a web service, flash remoting, remote CFC or gateway request.<br>
	LASTRESPONSETIME -- The time taken for the request to complete at the last invocation in milliseconds<br>
	LASTTIMEEXECUTED -- The date/time at which the template/function was last invoked.<br>
	LASTREQUESTSIZE -- The amount of memory allocated over the course of the request at the last invocation in bytes<br>	
	AVGTIME  --  The average response time for the template/function in milliseconds<br>
	MINTIME  --  The min response time for the template/function in milliseconds<br>
	MAXTIME  --  The max response time for the template/function in milliseconds<br>
	AVGREQUESTSIZE -- The average amount of memory allocated over the course of the request in bytes<br>
	MAXREQUESTSIZE -- The max amount of memory allocated over the course of the request in bytes<br>
	MINREQUESTSIZE -- The min amount of memory allocated over the course of the request in bytes<br>
	Monitoring and memory monitoring must be turned on for this function to work.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-'� 7-9;� A� G-I� 3-(� 7--
� MO� QYSS� WW-I� 3-)� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    2' <' >' ;' ;' 2' V( d( U( U( U( {) z) z) z)  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 8cfservermonitoring2ecfc1605556527$funcGETTOPSLOWREQUESTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this :Lcfservermonitoring2ecfc1605556527$funcGETTOPSLOWREQUESTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getTopSlowRequests ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint opReturns the top slow requests as an array of structs. Each struct has the following keys:<br>
	TEMPLATEPATH -- Full path to the template that was executed<br>
	FUNCTIONNAME-- The name of the function that was invoked, if this was a web service, flash remoting, remote CFC or gateway request.<br>
	RESPONSETIME -- The time taken for the request to complete at the last invocation in milliseconds<br>
	TIMEEXECUTED -- The date/time at which the template/function was invoked.<br>
	REQUESTSIZE -- The amount of memory allocated over the course of the request in bytes<br>
	AVGTIME  --  The average response time for the template/function in milliseconds<br>
	MINTIME  --  The min response time for the template/function in milliseconds<br>
	MAXTIME  --  The max response time for the template/function in milliseconds<br>
	will have values only if memory monitoring is turned on.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    \     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-x� 7-9;� A� G-I� 3-y� 7--
� MO� QYSS� WW-I� 3-z� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    m 2 x ; x = x : x : x 2 x T y b y S y S y S y x z w z w z w z  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 5cfservermonitoring2ecfc1605556527$funcGETALERTHISTORY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 7Lcfservermonitoring2ecfc1605556527$funcGETALERTHISTORY; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getAlertHistory ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o*Returns array of structs with information about all alerts occured from the time server restarted<br><br>
Returns history for all alerts triggered as a array of structs with the following keys:<br>
	ALERTTYPE -- The name of the alert<br>
	ALERTSTATE -- State of Alert (ACTIVE, RECOVERED,INVALIDATED)<br>
	OCCUREDAT -- The time at which the alert reached ALERTSTATE<br>
	ALERTMESSAGE -- The Detail message associated with the alert.<br>
	ALERTSNAPSHOTFILE -- The full path to the snapshot file that was dumped the last time the alert occurred, if any.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-/� 3-� 7--
� KM� OYQS� UW-W� 3-� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� OYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 5cfservermonitoring2ecfc1605556527$funcGETQUERYDETAILS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 7Lcfservermonitoring2ecfc1605556527$funcGETQUERYDETAILS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , get (I)Ljava/lang/Object; . / %coldfusion/runtime/ArgumentCollection 1
 2 0 TEMPLATEPATH 4   6 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 8 9
 2 : getVariable  (I)Lcoldfusion/runtime/Variable; < =
 2 > putVariable  (Lcoldfusion/runtime/Variable;)V @ A
  B FUNCTIONNAME D LINENO F -1 H 

         J _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V L M
  N _setCurrentLineNo (I)V P Q
  R 	component T CFIDE.adminapi.accessmanager V CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; X Y coldfusion/runtime/CFPage [
 \ Z set (Ljava/lang/Object;)V ^ _ coldfusion/runtime/Variable a
 b ` 
		 d _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; f g
  h checkAdminRoles j java/lang/Object l coldfusion.monitoring n _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; p q
  r MONITORINGSERVICE t &(Ljava/lang/String;)Ljava/lang/Object; f v
  w getQueryDetails y string { java/lang/String } _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;  �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 \ � int � 
	 � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint �AReturns details of all queries on the specified template. If no template is specified, 
	details for all queries that have been executed are returned. If a function is specified, then
	only queries defined in that function are returned. If a line no is specified, then only
	the query defined at that line no is returned. Details are returned as an array of structs
	with the following keys:<br>
	LASTTIMEEXECUTED-- The time at which the query was last executed<br>
	AVGTIME-- The average time taken for the query to execute in milliseconds<br>
	MINTIME-- The minimum time taken for the query to execute in milliseconds<br>
	MAXTIME-- The maximum time taken for the query to execute in milliseconds<br>
	LASTRESPONSETIME-- The time taken to execute the last invocation of the query<br>
	AVGSIZE-- The average size of the query in bytes<br>
	MINSIZE-- The minimum size of the query in bytes<br>
	MAXSIZE-- The maximum size of the query in bytes<br>
	LASTSIZE-- The last size of the query in bytes<br>
	ISCACHED-- Boolean, indicates whether or not the query is cached<br>
	QUERYNAME-- The query name<br>
	DSN -- The datasource name<br>
	TEMPLATEPATH-- The path to the template on which the query is declared<br>
	LINENUMBER-- The line number on which the query is declared<br>
	FUNCTIONNAME-- The function within which the query is declared, if any<br>
	EXECUTIONCOUNT -- The number of times the query has been executed<br>
	Monitoring and profiling must be turned on for this function to work.<br>
	Stats providing details of memory consumed will have values only if memory monitoring is turned on.<br> � 
returntype � access � 
Parameters � REQUIRED � false � DEFAULT � NAME � templatePath � HINT � 6The path to the template on which the query is defined � ([Ljava/lang/Object;)V  �
 � � functionName � +The function withing which the query occurs � lineNo � )The line no at which the query is defined � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     z�                 � �    |    X+� :+,� :	+� :
-� #� ):-� -:� 3� 57� ;W� ?:+� C� 3� E7� ;W� ?:+� C� 3� GI� ;W� ?:+� C-K� O
-޶ S-UW� ]� c-e� O-߶ S--
� ik� mYoS� sW-e� O-� S--u� xz� mY-� S-|-� ~Y5S� �� �SY-� S-|-� ~YES� �� �SY-� S-�-� ~YGS� �� �S� s�-�� O�       �   X      X � �   X � �   X � �   X � �   X � �   X � �   X * +   X  �   X  � 	  X  � 
  X 4 �   X D �   X F �  �   ~   � 8� Z� |� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������5�7�7�4� �� �� ��  �          � �Y
� mY�SYzSY�SY�SY�SY�SY�SY�SY�SY	� mY� �Y� mY�SY�SY�SY7SY�SY�SY�SY�S� �SY� �Y� mY�SY�SY�SY7SY�SY�SY�SY�S� �SY� �Y� mY�SY�SY�SYISY�SY�SY�SY�S� �SS� �� ��           �      � �     !     ��                 � �     2     � ~Y5SYESYGS�                 � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc @cfservermonitoring2ecfc1605556527$funcGETTOPFREQUENTLYRUNQUERIES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this BLcfservermonitoring2ecfc1605556527$funcGETTOPFREQUENTLYRUNQUERIES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getTopFrequentlyRunQueries ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint oReturns the top frequently run queries as an array of structs with the following keys:<br>
	LASTTIMEEXECUTED-- The time at which the query was last executed<br>
	AVGTIME-- The average time taken for the query to execute in milliseconds<br>
	MINTIME-- The minimum time taken for the query to execute in milliseconds<br>
	MAXTIME-- The maximum time taken for the query to execute in milliseconds<br>
	LASTRESPONSETIME-- The time taken to execute the last invocation of the query<br>
	AVGSIZE-- The average size of the query in bytes<br>
	MINSIZE-- The minimum size of the query in bytes<br>
	MAXSIZE-- The maximum size of the query in bytes<br>
	LASTSIZE-- The last size of the query in bytes<br>
	ISCACHED-- Boolean, indicates whether or not the query is cached<br>
	QUERYNAME-- The query name<br>
	DSN -- The datasource name<br>
	TEMPLATEPATH-- The path to the template on which the query is declared<br>
	LINENUMBER-- The line number on which the query is declared<br>
	FUNCTIONNAME-- The function within which the query is declared, if any<br>
	EXECUTIONCOUNT -- The number of times the query has been executed<br>
	Monitoring and profiling must be turned on for this function to work.<br>
	Stats providing details of memory consumed will have values only if memory monitoring is turned on.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-f� 7-9;� A� G-I� 3-g� 7--
� MO� QYSS� WW-I� 3-h� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   R 2f <f >f ;f ;f 2f Vg dg Ug Ug Ug {h zh zh zh  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcGETALIASSETTINGS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcGETALIASSETTINGS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getAliasSettings ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint oReturns the server monitoring aliasing settings as an array of struct with the following keys:<br>
	TEMPLATEPATH -- Template path to be alliased<br>
	ALIASNAME -- Unique alias name for templatepath<br>
	PARAMETERS -- Different parameters to be monitored as a comma seperated list<br> q access s 
returntype u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-!� 7-9;� A� G-I� 3-"� 7--
� MO� QYSS� WW-I� 3-#� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    2! <! >! ;! ;! 2! V" d" U" U" U" {# z# z# z#  �      f     H� lY
� QYnSY^SYpSYrSYtSYjSYvSYhSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 5cfservermonitoring2ecfc1605556527$funcSTARTMONITORING  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 7Lcfservermonitoring2ecfc1605556527$funcSTARTMONITORING; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ startMonitoring ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m %Starts all server monitoring activity o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-;� 7-9;� A� G-/� 3-<� 7--
� KM� OYQS� UW-W� 3-=� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   : 2; <; >; ;; ;; 2; V< d< U< U< U< {= z= z= z=  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcDISABLEPROFILING  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcDISABLEPROFILING; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ disableProfiling ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m Disables profiling o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-t� 7-9;� A� G-/� 3-u� 7--
� KM� OYQS� UW-W� 3-v� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   s 2t <t >t ;t ;t 2t Vu du Uu Uu Uu {v zv zv zv  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc :cfservermonitoring2ecfc1605556527$funcGETREQUESTQUEUESTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this <Lcfservermonitoring2ecfc1605556527$funcGETREQUESTQUEUESTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getRequestQueueStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint oReturns the request queue stats for template, Web service, Flash Remoting and CFC method requests.<br><br>
	Returns the request queue stats as struct with these keys<br>
	REQQUEUED -- on JRun, the total number of request threads running<br>
	REQRUNNING -- on JRun, the total number of request threads queued<br>
	REQTIMEDOUT -- on JRun, the total number of request timeouts<br>
	TEMPLATEREQQUEUED -- template requests waiting to run<br>
	TEMPLATEREQRUNNING -- template requests running<br>
	TEMPLATEREQTIMEDOUT -- template requests that timed out waiting to run<br>
	FLASHREMOTINGREQQUEUED -- Flash remoting requests waiting to run<br>
	FLASHREMOTINGREQRUNNING -- Flash remoting requests running<br>
	FLASHREMOTINGREQTIMEDOUT -- Flash remoting requests that timed out waiting to run<br>
	WEBSERVICEREQQUEUED -- Web Service requests waiting to run<br>
	WEBSERVICEREQRUNNING -- Web Service requests running<br>
	WEBSERVICEREQTIMEDOUT -- Web Service requests that timed out waiting to run<br>
	CFCREQQUEUED -- CFC requests (via HTTP) waiting to run<br>
	CFCREQRUNNING -- CFC requests (via HTTP) running<br>
	CFCREQTIMEDOUT -- CFC requests (via HTTP) that timed out waiting to run<br>
	REQQUEUESTATSNA -- ' '(This key is returned only in case the request queue stats are not available)<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-M� 7-9;� A� G-I� 3-N� 7--
� MO� QYSS� WW-I� 3-O� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   : 2M <M >M ;M ;M 2M VN dN UN UN UN {O zO zO zO  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc >cfservermonitoring2ecfc1605556527$funcGETSERVERSCOPEMEMORYUSED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this @Lcfservermonitoring2ecfc1605556527$funcGETSERVERSCOPEMEMORYUSED; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getServerScopeMemoryUsed ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint oaReturns details of how the server scope memory is being used as an array of structs with the following keys:<br>
	VARIABLENAME -- The name of the request variable<br>
	VARIABLETYPE -- The type of the variable<br>
	SIZE -- The memory occupied by the variable in bytes<br>
	Monitoring and memory monitoring must be turned on to get the SIZE attribute.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-/� 3-�� 7--
� KM� OYQS� UW-W� 3-�� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� OYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 2cfservermonitoring2ecfc1605556527$funcGETLASTERROR  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 4Lcfservermonitoring2ecfc1605556527$funcGETLASTERROR; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getLastError ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns the details of the last error occurred on the server:<br>
	TEMPLATEPATH -- Full path to the template that was executed<br>
	FUNCTIONNAME-- The name of the function that was invoked, if this was a web service, flash remoting, remote CFC	or gateway request.<br>
	LASTERRORAT -- The date/time at which the last error occurred.<br>
	LASTERROR -- The last error message<br>
	Monitoring must be turned on for this function to work.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-I� 3-�� 7--
� MO� QYSS� WW-I� 3-�� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ;cfservermonitoring2ecfc1605556527$funcGETACTIVESESSIONCOUNT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this =Lcfservermonitoring2ecfc1605556527$funcGETACTIVESESSIONCOUNT; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , CFAPPLICATIONNAME . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 
		 Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h 
		
		 j arguments.cfapplicationname l 	IsDefined (Ljava/lang/String;)Z n o
 R p 
			 r MONITORINGSERVICE t &(Ljava/lang/String;)Ljava/lang/Object; \ v
  w getActiveSessionCount y java/lang/String { _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; } ~
   JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 R � null �   � 
	 � metaData Ljava/lang/Object; � �	  � numeric � remote � &coldfusion/runtime/AttributeCollection � name � hint � 4Returns the number of current sessions on the server � 
returntype � access � 
Parameters � TYPE � REQUIRED � false � NAME � cfapplicationname � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     z�                 � �    <    (+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-m� I-KM� S� Y-[� E-n� I--
� _a� cYeS� iW-k� E-p� I-m� q� M-s� E-q� I--u� xz� cY-q� I-1-� |Y/S� �� �S� i�-[� E� =-s� E-s� I--u� xz� cY-s� I-��� �S� i�-[� E-�� E�       z   (      ( � �   ( � �   ( � �   ( � �   ( � �   ( � �   ( * +   (  �   (  � 	  (  � 
  ( . �  �   �    j Im Sm Um Rm Rm Im mn {n ln ln ln �p �p �q �q �q �q �q �q �q �q �s
sss	s �s �s �s �r �p  �      �     u� �Y
� cY�SYzSY�SY�SY�SY�SY�SY�SY�SY	� cY� �Y� cY�SY1SY�SY�SY�SY�S� �SS� �� ��           u      � �     !     ��                 � �     (     
� |Y/S�           
      � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Bcfservermonitoring2ecfc1605556527$funcGETSLOWREQUESTINVOCATIONDATA  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this DLcfservermonitoring2ecfc1605556527$funcGETSLOWREQUESTINVOCATIONDATA; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , TEMPLATEPATH . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > get (I)Ljava/lang/Object; @ A
 6 B FUNCTIONNAME D   F put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; H I
 6 J 

         L _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V N O
  P _setCurrentLineNo (I)V R S
  T 	component V CFIDE.adminapi.accessmanager X CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Z [ coldfusion/runtime/CFPage ]
 ^ \ set (Ljava/lang/Object;)V ` a coldfusion/runtime/Variable c
 d b 
		 f _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; h i
  j checkAdminRoles l java/lang/Object n coldfusion.monitoring p _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; r s
  t MONITORINGSERVICE v &(Ljava/lang/String;)Ljava/lang/Object; h x
  y getSlowRequestInvocationData { java/lang/String } _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;  �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 ^ � 
	 � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint �^Returns the slow invocation data for the specified template path as an array of structs, each of which has the following keys.<br>
	Data is returned only for the top slow tags/functions.<br>
	TAGNAME -- name of the tag<br>
	FUNCTIONNAME -- name of the function<br>
	TEMPLATEPATH -- The path to the template on which the function or tag was invoked.<br>
	LINENO -- The line no at which the tag or function was invoked.<br>
	CFSTACKTRACE -- Array of stack frame strings showing the CF stack to the invocation of the tag/function.<br>
	Monitoring and profiling must be turned on for this function to work.<br> � 
returntype � access � 
Parameters � HINT � =The template path for which to return request invocation data � TYPE � NAME � templatepath � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � false � :The function invoked, if the template path points to a CFC � DEFAULT � functionname � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     |�                 � �        +� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?� C� EG� KW*E1� 7� ;:+� ?-M� Q
- �� U-WY� _� e-g� Q- �� U--
� km� oYqS� uW-g� Q- �� U--w� z|� oY- �� U-1-� ~Y/S� �� �SY- �� U-1-� ~YES� �� �S� u�-�� Q�       �          � �    � �    � �    � �    � �    � �    * +     �     � 	    � 
   . �    D �  �   f    � O � t � ~ � � � } � } � t � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �      �     ƻ �Y
� oY�SY|SY�SY�SY�SY�SY�SY�SY�SY	� oY� �Y� oY�SY�SY�SY1SY�SY�SY�SY�S� �SY� �Y
� oY�SY1SY�SY�SY�SY�SY�SYGSY�SY	�S� �SS� �� ��           �      � �     !     ��                 � �     -     � ~Y/SYES�                 � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ?cfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDQUERIES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ALcfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDQUERIES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ resetTopMemoryUsedQueries ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m YResets the top memory used query list and clears all query memory consumption information o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-8� 7-9;� A� G-I� 3-9� 7--
� MO� QYSS� WW-I� 3-:� 7--Y� \^� Q� WW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   5 28 <8 >8 ;8 ;8 28 V9 d9 U9 U9 U9 {: z: z: z:  �      Z     <� jY� QYlSY^SYnSYpSYrSYhSYtSY� QS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Ccfservermonitoring2ecfc1605556527$funcGETSLOWCFTHREADINVOCATIONDATA  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ELcfservermonitoring2ecfc1605556527$funcGETSLOWCFTHREADINVOCATIONDATA; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , TEMPLATEPATH . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > get (I)Ljava/lang/Object; @ A
 6 B LINENO D   F put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; H I
 6 J 

         L _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V N O
  P _setCurrentLineNo (I)V R S
  T 	component V CFIDE.adminapi.accessmanager X CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Z [ coldfusion/runtime/CFPage ]
 ^ \ set (Ljava/lang/Object;)V ` a coldfusion/runtime/Variable c
 d b 

         f _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; h i
  j checkAdminRoles l java/lang/Object n coldfusion.monitoring p _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; r s
  t  
		 v MONITORINGSERVICE x &(Ljava/lang/String;)Ljava/lang/Object; h z
  { getSlowThreadInvocationData } java/lang/String  _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 ^ � int � 
	 � getSlowCFThreadInvocationData � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint �+Returns slow thread invocation data for the specified template path, and lineNo as an array of structs, each of which has the following keys. Data is returned only for the top slow tags/functions.<br>
	TAGNAME -- name of the tag<br>
	FUNCTIONNAME -- name of the function<br>
	TEMPLATEPATH -- The path to the template on which the function or tag was invoked.<br>
	LINENO -- The line no at which the tag or function was invoked.<br>
	CFSTACKTRACE -- Array of stack frame strings showing the CF stack to the invocation of the tag/function.<br>
	AVGTIME -- The average execution time for the tag/function.<br>
	MAXTIME -- The maximum execution time for the tag/function.<br>
	MINTIME -- The minimum execution time for the tag/function.<br>
	Monitoring and profiling must be turned on for this function to work.<br> � 
returntype � access � 
Parameters � HINT � 1The template path at which the thread was spawned � TYPE � NAME � templatepath � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � ?line no in the specified template where this thread was spawned � DEFAULT � lineno � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     ��                 � �        +� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?� C� EG� KW*E� 7� ;:+� ?-M� Q
-	� U-WY� _� e-g� Q-	�� U--
� km� oYqS� uW-w� Q-	�� U--y� |~� oY-	�� U-1-� �Y/S� �� �SY-	�� U-�-� �YES� �� �S� u�-�� Q�       �          � �    � �    � �    � �    � �    � �    * +     �     � 	    � 
   . �    D �  �   f   	r O	} s	 }	 	 |	 |	 s	 �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	�  �      �     �� �Y
� oY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� oY� �Y� oY�SY�SY�SY1SY�SY�SY�SY�S� �SY� �Y� oY�SY�SY�SYGSY�SY�SY�SY�S� �SS� �� ��           �      � �     !     ��                 � �     -     � �Y/SYES�                 � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcRESETDBPOOLSTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcRESETDBPOOLSTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ resetDbPoolStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e &coldfusion/runtime/AttributeCollection g name i hint k @Resets average open and total connection counts for all DB pools m 
Parameters o ([Ljava/lang/Object;)V  q
 h r getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 t u     !     ^�                 v w    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-:� 7-9;� A� G-I� 3-;� 7--
� MO� QYSS� WW-I� 3-<� 7--Y� \^� Q� WW-`� 3�       p    �       � x y    � z d    � { |    � } ~    �  �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   9 2: <: >: ;: ;: 2: V; d; U; U; U; {< z< z< z<  �      N     0� hY� QYjSY^SYlSYnSYpSY� QS� s� f�           0      � �     #     � b�                 � �     "     � f�                     ����  - 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcGETALERTSETTINGS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcGETALERTSETTINGS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 	ALERTTYPE . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 

         Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h  
		 j VALIDALERTTYPES l MONITORINGSERVICE n &(Ljava/lang/String;)Ljava/lang/Object; \ p
  q listValidAlertTypes s _List $(Ljava/lang/Object;)Ljava/util/List; u v coldfusion/runtime/Cast x
 y w , { ArrayToList 6(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String; } ~
 R  _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � 
		 � _autoscalarize � p
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 y � � ]
  � ListFindNoCase 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I � �
 R � _Object (I)Ljava/lang/Object; � �
 y � _compare (Ljava/lang/Object;D)D � �
  � 
			 � MSG � java/lang/StringBuffer � (Ljava/lang/String;)V  �
 � �   � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � INVALIDALERTTYPE � toString ()Ljava/lang/String; � �
 c � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � getAlertSettings � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 R � 
	 � metaData Ljava/lang/Object; � �	  � struct � remote � &coldfusion/runtime/AttributeCollection � name � hint ��Returns alert settings for the specified alert type<br><br>
	<b>SLOWSERVERALERT</b> --<br>
		RESPONSETIMETHRESHOLD -- Number, Threshold of average server response time at<br>
	 			      which the alert should be issued in milliseconds.<br>
		DUMPSNAPSHOT -- Boolean, indicates whether a snapshot should be dumped or not.<br>
		ENABLED -- Boolean, indicates whether or not this alert is enabled<br>
		NOTIFYONALERT -- Boolean, indicates if an email should be sent to the user.<br>
		KILLTHREADENABLED -- Boolean, indicates if automatic killing of threads should be done.<br>
		KILLTHREADTHRESHOLD -- Number, specifies time (in milliseconds) for which a thread<br>
		                       should be running if it is to be killed automatically.<br>
		REJECTREQUESTSENABLED -- Boolean, indicates if any new requests should be rejected if this alert is active<br>
		ALERT_PROCESSING_CFC -- The CFC to invoke when this alert occurs<br>
		<br><br>								
	<b>UNRESPONSIVESERVERALERT</b>	--	<br>
		HUNGTHREADCOUNT -- The number of threads which must be busy for this alert to be issued.<br>
		BUSYTIMETHRESHOLD  -- The time in milliseconds for which a thread must be working to be deemed busy.<br>
		DUMPSNAPSHOT -- Boolean, indicates whether a snapshot should be dumped or not.<br>
		ENABLED -- Boolean, indicates whether or not this alert is enabled<br>
		NOTIFYONALERT -- Boolean, indicates if an email should be sent to the user.<br>
		KILLTHREADENABLED -- Boolean, indicates if automatic killing of threads should be done.<br>
		KILLTHREADTHRESHOLD -- Number, specifies time (in milliseconds) for which a thread<br>
		                       should be running if it is to be killed automatically.<br>
		REJECTREQUESTSENABLED -- Boolean, indicates if any new requests should be rejected if this alert is active<br>
		ALERT_PROCESSING_CFC -- The CFC to invoke when this alert occurs<br>
		<br><br>												
	   <b>JVMMEMORYALERT</b>  --	<br>
		JVMMEMORYTHRESHOLD -- Number, specifies the threshold (in MB) for JVM memory allocation <br>
	                              on the server. If the total JVM memory allocation becomes more than this, the alert will become active.<br>
		GARBAGECOLLECTIONENABLED -- Boolean, indicates whether ColdFusion server should ask the JVM to do garbage collection when this alert is active.<br>
		DUMPSNAPSHOT -- Boolean, indicates whether a snapshot should be dumped or not.<br>
		ENABLED -- Boolean, indicates whether or not this alert is enabled<br>
		NOTIFYONALERT -- Boolean, indicates if an email should be sent to the user.<br>
		KILLTHREADENABLED -- Boolean, indicates if automatic killing of threads should be done.<br>
		KILLTHREADTHRESHOLD -- Number, specifies time (in milliseconds) for which a thread<br>
		                       should be running if it is to be killed automatically.<br>
		REJECTREQUESTSENABLED -- Boolean, indicates if any new requests should be rejected if this alert is active<br>
		ALERT_PROCESSING_CFC -- The CFC to invoke when this alert occurs<br>
			<br><Br>
    	<b>TIMEOUTSALERT</b> --	<br>
		TIMEOUTSCOUNT -- Number, specifies the number of requests that should timeout within the specified interval (see below) for this alert to become active.<br>
		TIMEOUTSINTERVAL -- Number, specifies the time interval (in milliseconds) which is used to count the timeouts (see above)<br>
		DUMPSNAPSHOT -- Boolean, indicates whether a snapshot should be dumped or not.<br>
		ENABLED -- Boolean, indicates whether or not this alert is enabled<br>
		NOTIFYONALERT -- Boolean, indicates if an email should be sent to the user.<br>
		KILLTHREADENABLED -- Boolean, indicates if automatic killing of threads should be done.<br>
		KILLTHREADTHRESHOLD -- Number, specifies time (in milliseconds) for which a thread<br>
		                       should be running if it is to be killed automatically.<br>
		REJECTREQUESTSENABLED -- Boolean, indicates if any new requests should be rejected if this alert is active<br>
		ALERT_PROCESSING_CFC -- The CFC to invoke when this alert occurs<br> � 
returntype � access � 
Parameters � TYPE � REQUIRED � true � NAME � 	alertType � ([Ljava/lang/Object;)V  
 � getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw25 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �           #     *� 
�                 �     !     �                 �     !     Ӱ                        �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-�� I-KM� S� Y-[� E-�� I--
� _a� cYeS� iW-k� E-m-�� I-�� I--o� rt� c� i� z|� �� �-�� E-�� I-m� �� �-� �� �|� �� �� ��� �-�� E-�� �Y-� �� �� ��� �-�� �� �� ��� �-m� �� �� �� �� �-�� E-� �� �� �:-�� I��-�� �� �� ʶ �� љ �-�� E-�� E-�� I--o� r�� cY-�� I-1-� �Y/S� ٶ �S� i�-߶ E�       �   �      �   �	 �   �
   �   �   � �   � * +   �    �  	  �  
  � .   �    � 2  z I� S� U� R� R� I� m� {� l� l� l� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������� �� �� �� ��O�3� ���������������       �     }�� �� �� �Y
� cY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� cY� �Y� cY�SY1SY�SY�SY�SY�S�SS�� �           }      �     !     �                     (     
� �Y/S�           
          "     � �                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc =cfservermonitoring2ecfc1605556527$funcGETCURRENTTHROTTLESTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ?Lcfservermonitoring2ecfc1605556527$funcGETCURRENTTHROTTLESTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getCurrentThrottleStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o&Returns throttle statistics as a struct with the following keys:<br>
	THROTTLEQUEUESIZE -- The number of requests queued in the request throttle.<br>
	TOTALTHROTTLEMEMORYUSED -- The amount of memory used by the throttle in bytes.<br>
	Monitoring must be turned on for this function to work.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-I� 3-� 7--
� MO� QYSS� WW-I� 3-� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2 < > ; ; 2 V d U U U { z z z  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 5cfservermonitoring2ecfc1605556527$funcGETERRORHISTORY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 7Lcfservermonitoring2ecfc1605556527$funcGETERRORHISTORY; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , TEMPLATEPATH . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > get (I)Ljava/lang/Object; @ A
 6 B FUNCTIONNAME D   F put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; H I
 6 J 

         L _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V N O
  P _setCurrentLineNo (I)V R S
  T 	component V CFIDE.adminapi.accessmanager X CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Z [ coldfusion/runtime/CFPage ]
 ^ \ set (Ljava/lang/Object;)V ` a coldfusion/runtime/Variable c
 d b 
		 f _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; h i
  j checkAdminRoles l java/lang/Object n coldfusion.monitoring p _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; r s
  t MONITORINGSERVICE v &(Ljava/lang/String;)Ljava/lang/Object; h x
  y getErrorHistoryData { java/lang/String } _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;  �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 ^ � 
	 � getErrorHistory � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint ��Returns details of the last ten errors for the specified request as an array of structs with the following keys:<br>
	ERRORAT -- The date/time at which the error occurred.<br>
	ERROR -- The error message<br>
	CFSTACKTRACE -- Array of stack frame strings<br>
	JAVASTACKTRACE -- Array of java exception stack frame strings<br>
	Monitoring must be turned on for this function to work.<br> � 
returntype � access � 
Parameters � HINT � ;The template path for which to return request error history � TYPE � NAME � templatepath � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � false � :The function invoked, if the template path points to a CFC � DEFAULT � functionname � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     ��                 � �        +� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?� C� EG� KW*E1� 7� ;:+� ?-M� Q
-~� U-WY� _� e-g� Q-� U--
� km� oYqS� uW-g� Q-�� U--w� z|� oY-�� U-1-� ~Y/S� �� �SY-�� U-1-� ~YES� �� �S� u�-�� Q�       �          � �    � �    � �    � �    � �    � �    * +     �     � 	    � 
   . �    D �  �   f   t O| t~ ~~ �~ }~ }~ t~ � � � � � �� �� �� �� �� �� �� �� �� �� �� ��  �      �     ƻ �Y
� oY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� oY� �Y� oY�SY�SY�SY1SY�SY�SY�SY�S� �SY� �Y
� oY�SY1SY�SY�SY�SY�SY�SYGSY�SY	�S� �SS� �� ��           �      � �     !     ��                 � �     -     � ~Y/SYES�                 � �     "     � ��                     ����  - 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcSETALERTSETTINGS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcSETALERTSETTINGS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 	ALERTTYPE . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > ALERTSETTINGS @ struct B 

         D _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V F G
  H _setCurrentLineNo (I)V J K
  L 	component N CFIDE.adminapi.accessmanager P CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; R S coldfusion/runtime/CFPage U
 V T set (Ljava/lang/Object;)V X Y coldfusion/runtime/Variable [
 \ Z 

         ^ _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; ` a
  b checkAdminRoles d java/lang/Object f coldfusion.monitoring h _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; j k
  l  
		 n VALIDALERTTYPES p MONITORINGSERVICE r &(Ljava/lang/String;)Ljava/lang/Object; ` t
  u listValidAlertTypes w _List $(Ljava/lang/Object;)Ljava/util/List; y z coldfusion/runtime/Cast |
 } { ,  ArrayToList 6(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String; � �
 V � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � 
		 � _autoscalarize � t
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 } � � a
  � ListFindNoCase 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I � �
 V � _Object (I)Ljava/lang/Object; � �
 } � _compare (Ljava/lang/Object;D)D � �
  � 
			 � MSG � java/lang/StringBuffer � (Ljava/lang/String;)V  �
 � �   � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � INVALIDALERTTYPE � toString ()Ljava/lang/String; � �
 g � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � setAlertSettings � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 V � 
	 � metaData Ljava/lang/Object; � �	  � remote � &coldfusion/runtime/AttributeCollection � name � hint ��Sets alert settings for the specified alert, with the settings as a struct with the following keys, depending on alert type:<br><br>
	      
	<b>SLOWSERVERALERT</b> --<br>
		RESPONSETIMETHRESHOLD -- Number, Threshold of average server response time at<br>
	 			      which the alert should be issued in milliseconds.<br>
		DUMPSNAPSHOT -- Boolean, indicates whether a snapshot should be dumped or not.<br>
		ENABLED -- Boolean, indicates whether or not this alert is enabled<br>
		NOTIFYONALERT -- Boolean, indicates if an email should be sent to the user.<br>
		KILLTHREADENABLED -- Boolean, indicates if automatic killing of threads should be done.<br>
		KILLTHREADTHRESHOLD -- Number, specifies time (in milliseconds) for which a thread<br>
		                       should be running if it is to be killed automatically.<br>
		REJECTREQUESTSENABLED -- Boolean, indicates if any new requests should be rejected if this alert is active<br>
		ALERT_PROCESSING_CFC -- The CFC to invoke when this alert occurs<br>
		<br><br>								
	<b>UNRESPONSIVESERVERALERT</b>	--	<br>
		HUNGTHREADCOUNT -- The number of threads which must be busy for this alert to be issued.<br>
		BUSYTIMETHRESHOLD  -- The time in milliseconds for which a thread must be working to be deemed busy.<br>
		DUMPSNAPSHOT -- Boolean, indicates whether a snapshot should be dumped or not.<br>
		ENABLED -- Boolean, indicates whether or not this alert is enabled<br>
		NOTIFYONALERT -- Boolean, indicates if an email should be sent to the user.<br>
		KILLTHREADENABLED -- Boolean, indicates if automatic killing of threads should be done.<br>
		KILLTHREADTHRESHOLD -- Number, specifies time (in milliseconds) for which a thread<br>
		                       should be running if it is to be killed automatically.<br>
		REJECTREQUESTSENABLED -- Boolean, indicates if any new requests should be rejected if this alert is active<br>
		ALERT_PROCESSING_CFC -- The CFC to invoke when this alert occurs<br>
		<br><br>												
	   <b>JVMMEMORYALERT</b>  --	<br>
		JVMMEMORYTHRESHOLD -- Number, specifies the threshold (in MB) for JVM memory allocation <br>
	                              on the server. If the total JVM memory allocation becomes more than this, the alert will become active.<br>
		GARBAGECOLLECTIONENABLED -- Boolean, indicates whether ColdFusion server should ask the JVM to do garbage collection when this alert is active.<br>
		DUMPSNAPSHOT -- Boolean, indicates whether a snapshot should be dumped or not.<br>
		ENABLED -- Boolean, indicates whether or not this alert is enabled<br>
		NOTIFYONALERT -- Boolean, indicates if an email should be sent to the user.<br>
		KILLTHREADENABLED -- Boolean, indicates if automatic killing of threads should be done.<br>
		KILLTHREADTHRESHOLD -- Number, specifies time (in milliseconds) for which a thread<br>
		                       should be running if it is to be killed automatically.<br>
		REJECTREQUESTSENABLED -- Boolean, indicates if any new requests should be rejected if this alert is active<br>
		ALERT_PROCESSING_CFC -- The CFC to invoke when this alert occurs<br>
							<br><br>
    	<b>TIMEOUTSALERT</b> --	<br>
		TIMEOUTSCOUNT -- Number, specifies the number of requests that should timeout <br>
	                         within the specified interval (see below) for this alert to become active.<br>
		TIMEOUTSINTERVAL -- Number, specifies the time interval (in milliseconds) which is <br>
 		                 used to count the timeouts (see above)<br>
		DUMPSNAPSHOT -- Boolean, indicates whether a snapshot should be dumped or not.<br>
		ENABLED -- Boolean, indicates whether or not this alert is enabled<br>
		NOTIFYONALERT -- Boolean, indicates if an email should be sent to the user.<br>
		KILLTHREADENABLED -- Boolean, indicates if automatic killing of threads should be done.<br>
		KILLTHREADTHRESHOLD -- Number, specifies time (in milliseconds) for which a thread<br>
		                       should be running if it is to be killed automatically.<br>
		REJECTREQUESTSENABLED -- Boolean, indicates if any new requests should be rejected if this alert is active<br>
		ALERT_PROCESSING_CFC -- The CFC to invoke when this alert occurs<br>
							
	Note: Alert CFCs must have 2 functions named onAlertStart() and onAlertEnd() which take a struct as an argument and return no values.<br> � access � 
Parameters � TYPE � REQUIRED � true � NAME � 	alertType � ([Ljava/lang/Object;)V  
 � alertSettings getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw24 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �           #     *� 
�                 �     !     װ                    V    �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?*AC� 7� ;:+� ?-E� I
-m� M-OQ� W� ]-_� I-n� M--
� ce� gYiS� mW-o� I-q-o� M-o� M--s� vx� g� m� ~�� �� �-�� I-p� M-q� �� �-� �� ��� �� �� ��� �-�� I-�� �Y-� �� �� ��� �-�� �� �� ��� �-q� �� �� �� �� �-�� I-� �� �� �:-r� M��-�� �� �� ζ �� ՙ �-�� I-�� I-t� M--s� v�� gY-t� M-1-� �Y/S� ݶ �SY-� �YAS� �S� mW-� I�       �   �      �	   �
 �   �   �   �   � �   � * +   �    �  	  �  
  � .   � @   �    � 3  4 `m jm lm im im `m �n �n �n �n �n �o �o �o �o �o �o �o �o �p �p �p �p �p �p �pqqqqq+q0q0q
q
qqqfrJr �p�t�t�t�t�t�t�t�t�t       �     ��� �� �� �Y� gY�SY�SY�SY�SY�SY�SY�SY� gY� �Y� gY�SY1SY�SY�SY�SY�S�SY� �Y� gY�SYCSY�SY�SY�SYS�SS�� �           �      �     !     �                     -     � �Y/SYAS�                     "     � �                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 0cfservermonitoring2ecfc1605556527$funcRESETSTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 2Lcfservermonitoring2ecfc1605556527$funcRESETSTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ 
resetStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m -Resets all statistics collected on the server o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-/� 3-�� 7--
� KM� OYQS� UW-W� 3-�� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 4cfservermonitoring2ecfc1605556527$funcSTOPMONITORING  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 6Lcfservermonitoring2ecfc1605556527$funcSTOPMONITORING; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ stopMonitoring ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m $Stops all server monitoring activity o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-2� 7-9;� A� G-/� 3-3� 7--
� KM� OYQS� UW-W� 3-4� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   1 22 <2 >2 ;2 ;2 22 V3 d3 U3 U3 U3 {4 z4 z4 z4  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc :cfservermonitoring2ecfc1605556527$funcGETALLACTIVESESSIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this <Lcfservermonitoring2ecfc1605556527$funcGETALLACTIVESESSIONS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getAllActiveSessions ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns details of all active sessions as an array of structs with the following keys:<br>
	CFSESSIONID -- The session ID assigned by CF<br>
	CLIENTIPADDRESS -- Client's IP Address<br>
	SESSIONID -- The ID of the underlying session. This will be different from the CFSESSIONID under a J2EE deployment, as it will indicate the ID of the underlying HTTP session.<br>
	SESSIONSIZE -- The size of the session in bytes<br>
	APPNAME -- The name application for which the session was created, as specified on the CFAPPLICATION tag.<br>
	ELAPSEDTIME -- The time for which the session has been alive, in milliseconds.<br>
	TIMESINCELASTACCESS -- The time that has elapsed since the last access to the session in milliseconds.<br>
	MAXINACTIVEINTERVAL -- The amount of time that the session will be kept alive when it is inactive, in milliseconds.<br>
	Monitoring and memory monitoring must be turned on to get a valid value for the SESSIONSIZE attribute.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-u� 7-9;� A� G-I� 3-v� 7--
� MO� QYSS� WW-I� 3-w� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   j 2u <u >u ;u ;u 2u Vv dv Uv Uv Uv {w zw zw zw  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 9cfservermonitoring2ecfc1605556527$funcGETTOPSLOWCFTHREADS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ;Lcfservermonitoring2ecfc1605556527$funcGETTOPSLOWCFTHREADS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getTopSlowThreads ] 
	 _ java/lang/String a getTopSlowCFThreads c metaData Ljava/lang/Object; e f	  g array i remote k &coldfusion/runtime/AttributeCollection m name o hint q�Returns the top slow threads as an array of structs. Each struct has the following keys:<br>
	SPAWNEDFROM -- Full path to the template that spawned the thread<br>
	LINENO -- Line no in the template at which this thread was spawned<br>
	LASTRESPONSETIME -- The time taken for the thread to complete at the last invocation in milliseconds<br>
	LASTTIMEEXECUTED -- The date/time at which the thread was last invoked.<br>
	LASTREQUESTSIZE -- The amount of memory allocated over the course of the request at the last invocation in bytes<br>
	AVGTIME  --  The average response time for the thread in milliseconds<br>
	MINTIME  --  The min response time for the thread in milliseconds<br>
	MAXTIME  --  The max response time for the thread in milliseconds<br>
	AVGREQUESTSIZE -- The average amount of memory allocated over the course of the CF thread in bytes<br>
	MAXREQUESTSIZE -- The max amount of memory allocated over the course of the CF Thread in bytes<br>
	MINREQUESTSIZE -- The min amount of memory allocated over the course of the CF Thread in bytes<br>
	Monitoring must be turned on for this function to work. Stats providing details of memory consumed<br>
	will have values only if memory monitoring is turned on.<br> s 
returntype u access w 
Parameters y ([Ljava/lang/Object;)V  {
 n | getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       e f           #     *� 
�                 ~      !     j�                 �      !     d�                 � �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-	_� 7-9;� A� G-/� 3-	`� 7--
� KM� OYQS� UW-W� 3-	a� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � f    � � �    � � �    � � �    � � f    � * +    �  �    �  � 	   �  � 
 �   B   	Q 2	_ <	_ >	_ ;	_ ;	_ 2	_ V	` d	` U	` U	` U	` {	a z	a z	a z	a  �      f     H� nY
� OYpSYdSYrSYtSYvSYjSYxSYlSYzSY	� OS� }� h�           H      �      !     l�                 � �     #     � b�                 � �     "     � h�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc =cfservermonitoring2ecfc1605556527$funcDISABLEMEMORYMONITORING  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ?Lcfservermonitoring2ecfc1605556527$funcDISABLEMEMORYMONITORING; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ disableMemoryMonitoring ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m #Disables monitoring of memory usage o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-W� 7-9;� A� G-/� 3-X� 7--
� KM� OYQS� UW-W� 3-Y� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   V 2W <W >W ;W ;W 2W VX dX UX UX UX {Y zY zY zY  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  -p 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc .cfservermonitoring2ecfc1605556527$funcSETALIAS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 0Lcfservermonitoring2ecfc1605556527$funcSETALIAS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , ALIASSETTINGS . struct 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 
		 Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h ALLOWEDKEYS j !TEMPLATEPATH,ALIASNAME,PARAMETERS l _set '(Ljava/lang/String;Ljava/lang/Object;)V n o
  p java/lang/String r _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; t u
  v _Map #(Ljava/lang/Object;)Ljava/util/Map; x y coldfusion/runtime/Cast {
 | z StructCount (Ljava/util/Map;)I ~ 
 R � _Object (I)Ljava/lang/Object; � �
 | �@       _compare (Ljava/lang/Object;D)D � �
  � 
			 � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 | � , � KEY � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
  � java/util/StringTokenizer � '(Ljava/lang/String;Ljava/lang/String;)V  �
 � � 	nextToken ()Ljava/lang/String; � �
 � � 
				 � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 R � 
					 � MSG � java/lang/StringBuffer � INVALIDSETTINGKEY � (Ljava/lang/String;)V  �
 � �   � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � toString � �
 c � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � CFLOOP � checkRequestTimeout � �
  � hasMoreTokens ()Z � �
 � � EXTRASETTINGMSG � 		
		 � STORED � MONITORINGSERVICE � \ �
  � getAliasSettings � ArrayLen (Ljava/lang/Object;)I � �
 R � 1 � _double (Ljava/lang/String;)D � �
 | � (D)Ljava/lang/Object; �
 | I _arrayGetAt 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
  	ALIASNAME
 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; t
  Trim &(Ljava/lang/String;)Ljava/lang/String;
 R '(Ljava/lang/Object;Ljava/lang/Object;)D �
  (Z)Ljava/lang/Object; �
 | _boolean (Ljava/lang/Object;)Z
 | TEMPLATEPATH SAMEALIASNAMESTRING 	
			! _checkCondition (DDD)Z#$
 % addAlias' 
	) setAlias+ metaData Ljava/lang/Object;-.	 / remote1 &coldfusion/runtime/AttributeCollection3 name5 hint7AAdds new alias settings or updates already saved setting based on templatepath. Takes arguement as a struct with the following keys:<br>
	TEMPLATEPATH -- Template path being alliased<br>
	ALIASNAME -- Unique alias name for templatepath<br>
	PARAMETERS -- Different parameters being monitored as a comma seperated list<br>9 access; 
Parameters= TYPE? REQUIREDA trueC NAMEE aliasSettingsG ([Ljava/lang/Object;)V I
4J getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 Ljava/lang/String; t13 t14 t15 Ljava/util/StringTokenizer; throw14 !Lcoldfusion/tagext/lang/ThrowTag; throw15 t18 D t20 t22 t24 throw16 LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   -.           #     *� 
�                L �     "     ,�                MN        �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-ж I-KM� S� Y-[� E-Ѷ I--
� _a� cYeS� iW-[� E-km� q-[� E-Ӷ I--� sY/S� w� }� �� � �� ���-�� E-k� �� �:�:-�+� �:� �Y� �:� �� �:� Y-�� E-ն I--� sY/S� w� }-�� �� �� ��� z-�� E-�� �Y-�� �� �� ��� �-�� �� �� �� �� q-�� E-� �� �� �:-׶ I��-�� �� �� ڶ �� � �-�� E-�� E� �� ��6-[� E� H-�� E-� �� �� �:-۶ I��-� �� �� ڶ �� � �-� E-[� E-�-ݶ I--� ��� c� i� q-[� E9-޶ I-� �� ��9�� 9�:-+� �:� Y�-�� E--�-� ��	� }� sYS�-߶ I-� sY/SYS� w� ����~��Y�� NW--�-� ��	� }� sYS�-� I-� sY/SYS� w� ����~��� J-�� E-� �� �� �:-� I��- � �� �� ڶ �� � �-"� E-[� Ec\9�:� Y� ��&���-[� E-� I--� �(� cY-� sY/S� wS� iW-*� E�       �   �      �OP   �Q.   �RS   �TU   �VW   �X.   � * +   � Y   � Y 	  � Y 
  � .Y   �Z[   �\[   �]Y   �^_   �`a   �ba   �cd   �ed   �fd   �gY   �ha i  J R  � I� S� U� R� R� I� m� {� l� l� l� �� �� �� �� �� �� �� �� �� ����%�%����E�E�Q�V�V�A�A�>�>���p���� �������� ��%�$�$���I�I�I�I�U���������������������������G�+����?����������� j      �     }ĸ ʳ ̻4Y� cY6SY,SY8SY:SY<SY2SY>SY� cY�4Y� cY@SY1SYBSYDSYFSYHS�KSS�K�0�           }     k �     "     2�                lm     (     
� sY/S�           
     no     "     �0�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 4cfservermonitoring2ecfc1605556527$funcGETDBPOOLSTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 6Lcfservermonitoring2ecfc1605556527$funcGETDBPOOLSTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getDbPoolStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns statistics for all the DB pools as an array of structs with the following keys:<br>
	DSN -- The datasource name<br>
	OPENCONNECTIONCOUNT -- The number of open connections<br>
	TOTALCONNECTIONCOUNT -- The total number of connections currently in the pool (= open + available)<br>
	MAXCONNECTIONCOUNT -- The max number of connections that the pool may hold, -1 if configured to be unlimited<br>
	AVGTOTALCONNECTIONCOUNT -- The average number of total connections in the pool since the last reset<br>
	AVGOPENCONNECTIONCOUNT -- The average number of open connections since the last reset<br>
	Note that this API will not work for J2EE datasource pools. Please use monitoring tools provided<br>
	by your J2EE application server to get this information.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-1� 7-9;� A� G-I� 3-2� 7--
� MO� QYSS� WW-I� 3-3� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   ' 21 <1 >1 ;1 ;1 21 V2 d2 U2 U2 U2 {3 z3 z3 z3  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcGETCACHEDQUERIES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcGETCACHEDQUERIES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getCachedQueries ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns details of all cached queries as a struct with the following keys:<br>
	LASTTIMEEXECUTED -- The time at which the query was executed<br>
	SIZE -- The size of the query in bytes<br>
	EXECUTIONTIME -- The time taken for the query to execute<br>
	QUERYNAME -- The name of the query<br>
	DSN -- The datasource name<br>
	SQL -- The SQL for the query<br>
	TEMPLATEPATH -- The path to the template on which the query was issued<br>
	TIMETAKEN --The time taken for the query to execute upto this call in milliseconds<br>	
	LINENUMBER -- The line number on the template where the query was issued<br>
	FUNCTIONNAME -- The name of the function in which the query was issued, if any<br>
	EXECUTIONCOUNT -- The number of times the query has been executed<br>
	Monitoring, memory monitoring and profiling must be turned on for this function to work.<br>
	If memory monitoring is enabled at some point after the cache has been populated, only the SIZE attribute will have a valid value.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-I� 3-� 7--
� MO� QYSS� WW-I� 3-� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2 < > ; ; 2 V d U U U { z z z  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 8cfservermonitoring2ecfc1605556527$funcRESETTHROTTLESTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this :Lcfservermonitoring2ecfc1605556527$funcRESETTHROTTLESTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D          		
         H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V  
		 X MONITORINGSERVICE Z &(Ljava/lang/String;)Ljava/lang/Object; J \
  ] resetThrottleStats _ 
	 a java/lang/String c metaData Ljava/lang/Object; e f	  g remote i &coldfusion/runtime/AttributeCollection k name m hint o DResets all statistics collected on the server for request throttling q access s 
Parameters u ([Ljava/lang/Object;)V  w
 l x getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       e f           #     *� 
�                 z {     !     `�                 | }    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-)� 7-9;� A� G-I� 3-*� 7--
� MO� QYSS� WW-Y� 3-+� 7--[� ^`� Q� WW-b� 3�       p    �       � ~     � � f    � � �    � � �    � � �    � � f    � * +    �  �    �  � 	   �  � 
 �   B   ( 2) <) >) ;) ;) 2) V* d* U* U* U* {+ z+ z+ z+  �      Z     <� lY� QYnSY`SYpSYrSYtSYjSYvSY� QS� y� h�           <      � {     !     j�                 � �     #     � d�                 � �     "     � h�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Bcfservermonitoring2ecfc1605556527$funcRESETTOPFREQUENTLYRUNQUERIES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this DLcfservermonitoring2ecfc1605556527$funcRESETTOPFREQUENTLYRUNQUERIES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ resetTopFrequentlyRunQueries ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m VResets the top memory used query list and clears all query execution count information o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-q� 7-9;� A� G-I� 3-r� 7--
� MO� QYSS� WW-I� 3-s� 7--Y� \^� Q� WW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   n 2q <q >q ;q ;q 2q Vr dr Ur Ur Ur {s zs zs zs  �      Z     <� jY� QYlSY^SYnSYpSYrSYhSYtSY� QS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc >cfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDSESSIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this @Lcfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDSESSIONS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getTopMemoryUsedSessions ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint oReturns the top sessions with max memory used as an array of structs with the following keys:<br>
	SESSIONID -- session0e8ade2fd9a51afa1b995e5d8693f5b3, HTTP session id if J2EE session, CFSESSIONID if memory session, event session id if event session<br>
	CFSESSIONID -- appname_122_5667, The ID CF uses to reference sessions<br>
	CLIENTIPADDRESS -- Client's IP Address<br>
	SESSIONSIZE -- The size of the session in bytes<br>
	APPNAME -- membershipapp<br>
	Monitoring and memory monitoring must be turned on for this function to work.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-8� 7-9;� A� G-I� 3-9� 7--
� MO� QYSS� WW-I� 3-:� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   0 28 <8 >8 ;8 ;8 28 V9 d9 U9 U9 U9 {: z: z: z:  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc :cfservermonitoring2ecfc1605556527$funcRESETTOPSLOWREQUESTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this <Lcfservermonitoring2ecfc1605556527$funcRESETTOPSLOWREQUESTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ resetTopSlowRequests ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m CResets all statistics collected on the server for the slow requests o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-/� 3-� 7--
� KM� OYQS� UW-W� 3-� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    2 < > ; ; 2 V d U U U { z z z  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 8cfservermonitoring2ecfc1605556527$funcDELETEUSERSNAPSHOT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this :Lcfservermonitoring2ecfc1605556527$funcDELETEUSERSNAPSHOT; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , SNAPSHOTFILEPATH . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 

         Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h  

		 j _autoscalarize l ]
  m _String &(Ljava/lang/Object;)Ljava/lang/String; o p coldfusion/runtime/Cast r
 s q 
FileExists (Ljava/lang/String;)Z u v
 R w 
		   y "class$coldfusion$tagext$io$FileTag Ljava/lang/Class; coldfusion.tagext.io.FileTag } forName %(Ljava/lang/String;)Ljava/lang/Class;  � java/lang/Class �
 � � { |	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/io/FileTag � cffile � action � delete � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 	setAction (Ljava/lang/String;)V � �
 � � file � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � setFile � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � true � 
		 � 
		    � false � 
	 � deleteUserSnapshot � metaData Ljava/lang/Object; � �	  � boolean � remote � &coldfusion/runtime/AttributeCollection � name � hint � #Deletes the specified user snapshot � 
returntype � access � 
Parameters � HINT � "absolute path to the snapshot file � TYPE � NAME � snapshotFilePath � REQUIRED � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; file22 Lcoldfusion/tagext/io/FileTag; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       { |    � �           #     *� 
�                 � �     !     ��                 � �     !     ��                 � �    2 	   (+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-ֶ I-KM� S� Y-[� E-׶ I--
� _a� cYeS� iW-k� E-ٶ I--� n� t� x� m-z� E-� �� �� �:-ڶ I���� �� ���-� �Y/S� �� t� �� �� �� �-z� E��-�� E� -�� E��-�� E-�� E�       �   (      ( � �   ( � �   ( � �   ( � �   ( � �   ( � �   ( * +   (  �   (  � 	  (  � 
  ( . �   ( � �  �   n   � I� S� U� R� R� I� m� {� l� l� l� �� �� �� �� �� �� �� �� �� ������ ��  �      �     �~� �� �� �Y
� cY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� cY� �Y� cY�SY�SY�SY1SY�SY�SY�SY�S� �SS� ڳ ��           �      � �     !     ��                 � �     (     
� �Y/S�           
      � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 3cfservermonitoring2ecfc1605556527$funcABORTCFTHREAD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 5Lcfservermonitoring2ecfc1605556527$funcABORTCFTHREAD; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 
THREADNAME . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 
		 @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Z [
  \ checkRootAdminUser ^ java/lang/Object ` _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; b c
  d MONITORINGSERVICE f &(Ljava/lang/String;)Ljava/lang/Object; Z h
  i abortCFThread k java/lang/String m _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; o p
  q JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; s t
 R u 
	 w metaData Ljava/lang/Object; y z	  { boolean } remote  &coldfusion/runtime/AttributeCollection � name � hint �Aborts the CFThread being handled by the specified java thread. Only the root admin user may invoke this API.
	A return value of true indicates that the request aborted successfully. False indicates that
	a problem occurred while aborting the request; check monitor.log for details. � access � 
returntype � 
Parameters � TYPE � REQUIRED � true � NAME � 
threadName � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       y z           #     *� 
�                 � �     !     ~�                 � �     !     l�                 � �    �     �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-
|� I-KM� S� Y-A� E-
}� I--
� ]_� a� eW-A� E-
~� I--g� jl� aY-
~� I-1-� nY/S� r� vS� e�-x� E�       z    �       � � �    � � z    � � �    � � �    � � �    � � z    � * +    �  �    �  � 	   �  � 
   � . �  �   N   
w I
| S
| U
| R
| R
| I
| m
} l
} l
} l
} �
~ �
~ �
~ �
~ �
~ �
~ �
~ �
~  �      �     u� �Y
� aY�SYlSY�SY�SY�SY�SY�SY~SY�SY	� aY� �Y� aY�SY1SY�SY�SY�SY�S� �SS� �� |�           u      � �     !     ��                 � �     (     
� nY/S�           
      � �     "     � |�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 8cfservermonitoring2ecfc1605556527$funcGETCFTHREADDETAILS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this :Lcfservermonitoring2ecfc1605556527$funcGETCFTHREADDETAILS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , get (I)Ljava/lang/Object; . / %coldfusion/runtime/ArgumentCollection 1
 2 0 TEMPLATEPATH 4   6 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 8 9
 2 : string < getVariable  (I)Lcoldfusion/runtime/Variable; > ?
 2 @ _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; B C
  D putVariable  (Lcoldfusion/runtime/Variable;)V F G
  H LINENO J 0 L numeric N 

         P _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V R S
  T _setCurrentLineNo (I)V V W
  X 	component Z CFIDE.adminapi.accessmanager \ CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; ^ _ coldfusion/runtime/CFPage a
 b ` set (Ljava/lang/Object;)V d e coldfusion/runtime/Variable g
 h f 

         j _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; l m
  n checkAdminRoles p java/lang/Object r coldfusion.monitoring t _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; v w
  x  
		 z MONITORINGSERVICE | &(Ljava/lang/String;)Ljava/lang/Object; l ~
   getThreadDetails � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 b � int � 
	 � getCFThreadDetails � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint �aReturns details for the specified template and lineNo combination, or
	 for all threads (if no templatePath is specified), or for all threads spawned from a templates (if lineNo is not specified) as a list of structs with the following keys: <br>

	SPAWNEDFROM -- Full path to the template that spawned the thread<br>
	LINENO -- Line no in the template at which this thread was spawned<br>
	LASTRESPONSETIME -- The time taken for the thread to complete at the last invocation in milliseconds<br>
	LASTTIMEEXECUTED -- The date/time at which the thread was last invoked.<br>
	LASTREQUESTSIZE -- The amount of memory allocated over the course of the request at the last invocation in bytes<br>
	AVGTIME  --  The average response time for the thread in milliseconds<br>
	MINTIME  --  The min response time for the thread in milliseconds<br>
	MAXTIME  --  The max response time for the thread in milliseconds<br>
	AVGREQUESTSIZE -- The average amount of memory allocated over the course of the CF thread in bytes<br>
	MAXREQUESTSIZE -- The max amount of memory allocated over the course of the CF Thread in bytes<br>
	MINREQUESTSIZE -- The min amount of memory allocated over the course of the CF Thread in bytes<br>
	Monitoring must be turned on for this function to work. Stats providing details of memory consumed<br>
	will have values only if memory monitoring is turned on.<br> � access � 
returntype � 
Parameters � DEFAULT � TYPE � NAME � templatePath � REQUIRED � false � ([Ljava/lang/Object;)V  �
 � � lineNo � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     ��                 � �    /    )+� :+,� :	+� :
-� #� ):-� -:� 3� 57� ;W*5=� A� E:+� I� 3� KM� ;W*KO� A� E:+� I-Q� U
-	�� Y-[]� c� i-k� U-	�� Y--
� oq� sYuS� yW-{� U-	�� Y--}� ��� sY-	�� Y-=-� �Y5S� �� �SY-	�� Y-�-� �YKS� �� �S� y�-�� U�       �   )      ) � �   ) � �   ) � �   ) � �   ) � �   ) � �   ) * +   )  �   )  � 	  )  � 
  ) 4 �   ) J �  �   j   	� 8	� c	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	� �	�	�	�	�	� �	� �	� �	�  �      �     �� �Y
� sY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� sY� �Y� sY�SY7SY�SY=SY�SY�SY�SY�S� �SY� �Y� sY�SYMSY�SYOSY�SY�SY�SY�S� �SS� �� ��           �      � �     !     ��                 � �     -     � �Y5SYKS�                 � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc >cfservermonitoring2ecfc1605556527$funcGETTOPAVERAGESLOWQUERIES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this @Lcfservermonitoring2ecfc1605556527$funcGETTOPAVERAGESLOWQUERIES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getTopAverageSlowQueries ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint oReturns the top slow queries by average time as an array of structs with the following keys:<br>
	LASTTIMEEXECUTED-- The time at which the query was last executed<br>
	AVGTIME-- The average time taken for the query to execute in milliseconds<br>
	MINTIME-- The minimum time taken for the query to execute in milliseconds<br>
	MAXTIME-- The maximum time taken for the query to execute in milliseconds<br>
	LASTRESPONSETIME-- The time taken to execute the last invocation of the query<br>
	AVGSIZE-- The average size of the query in bytes<br>
	MINSIZE-- The minimum size of the query in bytes<br>
	MAXSIZE-- The maximum size of the query in bytes<br>
	LASTSIZE-- The last size of the query in bytes<br>
	ISCACHED-- Boolean, indicates whether or not the query is cached<br>
	QUERYNAME-- The query name<br>
	DSN -- The datasource name<br>
	TEMPLATEPATH-- The path to the template on which the query is declared<br>
	LINENUMBER-- The line number on which the query is declared<br>
	FUNCTIONNAME-- The function within which the query is declared, if any<br>
	EXECUTIONCOUNT -- The number of times the query has been executed<br>
	Monitoring and profiling must be turned on for this function to work.<br>
	Stats providing details of memory consumed will have values only if memory monitoring is turned on.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-I� 3-�� 7--
� MO� QYSS� WW-I� 3-�� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 2cfservermonitoring2ecfc1605556527$funcDUMPSNAPSHOT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 4Lcfservermonitoring2ecfc1605556527$funcDUMPSNAPSHOT; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V SNAPSHOTDATA X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ dumpSnapshot ] CAUSE _ _autoscalarize a Z
  b 
	 d java/lang/String f metaData Ljava/lang/Object; h i	  j string l remote n &coldfusion/runtime/AttributeCollection p name r hint tDumps the snapshot in monitoring file @ <cf_root>/logs/snapshot_usrgen_[timestamp].txt, and returns the snapshot file name. The snapshot file will show differing amounts of data depending on whether monitoring, memory monitoring and profiling flags are on or off. v 
returntype x access z 
Parameters | ([Ljava/lang/Object;)V  ~
 q  getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       h i           #     *� 
�                 � �     !     m�                 � �     !     ^�                 � �    l     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-/� 3-�� 7--
� KM� OYQS� UW-W� 3-�� 7--Y� \^� OY-`� cS� U�-e� 3�       p    �       � � �    � � i    � � �    � � �    � � �    � � i    � * +    �  �    �  � 	   �  � 
 �   F   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� �� z� z� z�  �      f     H� qY
� OYsSY^SYuSYwSYySYmSY{SYoSY}SY	� OS� �� k�           H      � �     !     o�                 � �     #     � g�                 � �     "     � k�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcGETMONITORSTATUS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcGETMONITORSTATUS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getMonitorStatus ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o|Returns a struct containing data about the monitoring service status, with the following keys:<br>
	ISENABLED -- Boolean, indicates whether or not the monitoring service is running<br>
	ISMEMORYMONITORINGENABLED -- Boolean, indicates whether or not monitoring of memory utilization is enabled.<br>
	ISPROFILINGENABLED -- Boolean, indicates whether or not profiling is enabled.<br>
	STATECHANGEDAT -- Time at which the monitoring service was last started/stopped<br>
	CURRENTSERVERTIME -- Current time on the server<br>
	SERVERSTARTTIME -- The time at which the server was started<br>
	SERVERIPADDRESS -- The IP address of the server<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-/� 3-�� 7--
� KM� OYQS� UW-W� 3-�� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� OYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ?cfservermonitoring2ecfc1605556527$funcGETAVERAGETOPSLOWREQUESTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ALcfservermonitoring2ecfc1605556527$funcGETAVERAGETOPSLOWREQUESTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getAverageTopSlowRequests ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint oCReturns the top slow requests averaged over execution count as an array of structs. Each struct has the following keys:<br>
	TEMPLATEPATH -- Full path to the template that was executed<br>
	FUNCTIONNAME-- The name of the function that was invoked, if this was a web service, flash remoting, remote CFC or gateway request.<br>
	LASTRESPONSETIME -- The time taken for the request to complete at the last invocation in milliseconds<br>
	LASTTIMEEXECUTED -- The date/time at which the template/function was last invoked.<br>
	AVGTIME  --  The average response time for the template/function in milliseconds<br>
	MINTIME  --  The min response time for the template/function in milliseconds<br>
	MAXTIME  --  The max response time for the template/function in milliseconds<br>
	AVGREQUESTSIZE -- The average amount of memory allocated over the course of the request in bytes<br>
	MAXREQUESTSIZE -- The max amount of memory allocated over the course of the request in bytes<br>
	MINREQUESTSIZE -- The min amount of memory allocated over the course of the request in bytes<br>
	LASTREQUESTSIZE -- The amount of memory allocated over the course of the request at the last invocation in bytes<br>
	Monitoring must be turned on for this function to work. Stats providing details of memory consumed will have values only if memory monitoring is turned on.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
- �� 7-9;� A� G-I� 3- �� 7--
� MO� QYSS� WW-I� 3- �� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    � 2 � < � > � ; � ; � 2 � V � d � U � U � U � { � z � z � z �  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Acfservermonitoring2ecfc1605556527$funcGETSESSIONMEMORYUSEDDETAILS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this CLcfservermonitoring2ecfc1605556527$funcGETSESSIONMEMORYUSEDDETAILS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , CFSESSIONID . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 
		 Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h MONITORINGSERVICE j &(Ljava/lang/String;)Ljava/lang/Object; \ l
  m getSessionMemoryUsedDetails o java/lang/String q _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; s t
  u JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; w x
 R y 
	 { metaData Ljava/lang/Object; } ~	   array � remote � &coldfusion/runtime/AttributeCollection � name � hint ��Returns the size details of the specified session, if available with the following keys:<br>
	VARIABLENAME -- The name of the request variable<br>
	VARIABLETYPE -- The type of the variable<br>
	SIZE -- The memory occupied by the variable in bytes<br>
	The session id passed in must be the CFSESSIONID.<br>
	Monitoring and memory monitoring must be turned on for this function to work properly.<br> � 
returntype � access � 
Parameters � HINT � The CF session id � TYPE � NAME � cfsessionid � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       } ~           #     *� 
�                 � �     !     ��                 � �     !     p�                 � �    �     �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-X� I-KM� S� Y-[� E-Y� I--
� _a� cYeS� iW-[� E-Z� I--k� np� cY-Z� I-1-� rY/S� v� zS� i�-|� E�       z    �       � � �    � � ~    � � �    � � �    � � �    � � ~    � * +    �  �    �  � 	   �  � 
   � . �  �   R   O IX SX UX RX RX IX mY {Y lY lY lY �Z �Z �Z �Z �Z �Z �Z �Z  �      �     �� �Y
� cY�SYpSY�SY�SY�SY�SY�SY�SY�SY	� cY� �Y� cY�SY�SY�SY1SY�SY�SY�SY�S� �SS� �� ��           �      � �     !     ��                 � �     (     
� rY/S�           
      � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 5cfservermonitoring2ecfc1605556527$funcENABLEPROFILING  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 7Lcfservermonitoring2ecfc1605556527$funcENABLEPROFILING; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ enableProfiling ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m Enables profiling o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-k� 7-9;� A� G-/� 3-l� 7--
� KM� OYQS� UW-W� 3-m� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   j 2k <k >k ;k ;k 2k Vl dl Ul Ul Ul {m zm zm zm  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 8cfservermonitoring2ecfc1605556527$funcGETMONITORSETTINGS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this :Lcfservermonitoring2ecfc1605556527$funcGETMONITORSETTINGS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getMonitorSettings ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint oReturns the server monitoring settings as a struct with the following keys:<br>
	MONITORINGENABLED -- Boolean, indicates whether or not monitoring is enabled<br>
	MEMORYMONITORINGENABLED -- Boolean, indicates whether or not memory tracking is enabled<br>
	PROFILINGENABLED -- Boolean, indicates whether or not profiling is enabled<br>
	INCLUDECFADMIN -- Indicates whether or not to include CFCs and CFMs under /CFIDE for monitoring<br>
	SLOWREQUESTTHRESHOLD -- Slow request report threshold in seconds<br>
	SLOWREQUESTCOUNT -- Size of slow request report<br>
	TOPMEMORYUSEDREQUESTSCOUNT -- Top memory used requests report size<br>
	TOPMEMORYUSEDREQUESTSTHRESHOLD -- Top memory used requests report threshold in KB<br>
	INCLUDEMONITORTEMPLATEPATHS -- Template paths to monitor, separated by commas<br>
	EXCLUDEMONITORTEMPLATEPATHS -- Template paths to exclude from monitoring, separated by commas<br>
	TOPMEMORYUSEDSESSIONSTHRESHOLD -- Top memory used sessions report threshold in KB<br>
	TOPMEMORYUSEDSESSIONSCOUNT -- Top memory used sessions report size<br>
	MAXSERVERTIMEREQUESTCOUNT -- The size of the cumulative server time report<br>
	HITCOUNTCOUNT -- The size of the top hit count report<br>
	REQUESTLOADAVGPERIOD -- The period at which to sample the request load<br>
	TOPMEMORYUSEDQUERIESTHRESHOLD -- Top memory used queries report threshold in KB<br>
	TOPMEMORYUSEDQUERIESCOUNT -- Size of top memory used queries report<br>
	TOPSLOWQUERIESTHRESHOLD -- Top slow queries report threshold in seconds<br>
	TOPSLOWQUERIESCOUNT -- Size of top slow queries report<br>
	TOPAVERAGESLOWQUERIESTHRESHOLD -- Top average slow queries report threshold in seconds<br>
	TOPAVERAGESLOWQUERIESCOUNT --  Size of top average slow queries report<br>
	NOTIFYALERTEMAILID -- The email id to send alert notifications to<br>
	MAILSERVERUSERID -- The user id with which to connect to the mail server for sending alert notifications.<br>
	MAILSERVERPASSWORD -- The password for the user id specified above.<br>
	TOPMEMORYUSEDTHREADSCOUNT -- Size of CF threads by memory usage report<br>
	TOPMEMORYUSEDTHREADSTHREASHOLD -- CF threads by memory usage report threshold in KB<br>
	INCLUDEPROFILINGTEMPLATEPATHS -- Template paths to profile, separated by commas<br>
	EXCLUDEPROFILINGTEMPLATEPATHS -- Template paths to exclude from profiling, separated by commas<br>
	AVGSLOWREQUESTCOUNT -- Size of slowest requests by average report<br>
	AVGSLOWREQUESTTHRESHOLD -- Slowest request by average threshold in seconds<br>
	HITTHREADCOUNT -- Size of highest hit counts report<br>
	MAXSERVERTIMETHREADCOUNT -- Size of cummulative server usage report<br>
	SLOWTHREADTHRESHOLD -- Slowest ColdFusion threads report threshold in seconds<br>
	SLOWTHREADCOUNT -- Size of slowest ColdFusion threads report<br>
	TOPFREQUENTLYRUNQUERIESCOUNT -- Size of frequently run queries report<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-I� 3-�� 7--
� MO� QYSS� WW-I� 3-�� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   e 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Ecfservermonitoring2ecfc1605556527$funcGETTOPCUMULATIVESERVERTIMESPENT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this GLcfservermonitoring2ecfc1605556527$funcGETTOPCUMULATIVESERVERTIMESPENT; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getTopCumulativeServerTimeSpent ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o1Returns requests which have cumulatively taken the most server time as an array of structs, each with the following keys:<br>
	TEMPLATEPATH -- Full path to the template that was executed<br>
	FUNCTIONNAME-- The name of the function that was invoked, if this was a web service, flash remoting, remote CFC	or gateway request.<br>
	PERCENTAGESERVERTIME -- The percentage of server time that requests to the specified template/function have consumed<br>
	LASTRESPONSETIME -- The time taken for the request to complete at the last invocation in milliseconds<br>
	LASTTIMEEXECUTED -- The date/time at which the template/function was last invoked.<br>
	LASTREQUESTSIZE -- The amount of memory allocated over the course of the request at the last invocation in bytes<br>
	LASTERROR -- Last error message for the template/function if any<br>
	LASTERRORAT -- The date/time at which the last error occurred<br>
	ERRORCOUNT -- The number of times errors have occurred for the template/function<br>
	TIMEOUTCOUNT -- The number of times requests to the template/function have timed out<br>
	HITCOUNT -- The hit count for the template/function<br>
	AVGTIME  --  The average response time for the template/function in milliseconds<br>
	MINTIME  --  The min response time for the template/function in milliseconds<br>
	MAXTIME  --  The max response time for the template/function in milliseconds<br>
	AVGREQUESTSIZE -- The average amount of memory allocated over the course of the request in bytes<br>
	MAXREQUESTSIZE -- The max amount of memory allocated over the course of the request in bytes<br>
	MINREQUESTSIZE -- The min amount of memory allocated over the course of the request in bytes<br>
	Monitoring must be turned on for this function to work. Stats providing details of memory consumed will have values only if memory monitoring is turned on.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-I� 3-� 7--
� MO� QYSS� WW-I� 3-� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    � 2 < > ; ; 2 V d U U U { z z z  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc <cfservermonitoring2ecfc1605556527$funcGETAVERAGERESPONSETIME  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this >Lcfservermonitoring2ecfc1605556527$funcGETAVERAGERESPONSETIME; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getAverageResponseTime ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e numeric g remote i &coldfusion/runtime/AttributeCollection k name m hint o ,Returns average response time for the server q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-X� 7-9;� A� G-I� 3-Y� 7--
� MO� QYSS� WW-I� 3-Z� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   V 2X <X >X ;X ;X 2X VY dY UY UY UY {Z zZ zZ zZ  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc @cfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDREQUESTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this BLcfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDREQUESTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 
		 . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T MONITORINGSERVICE V &(Ljava/lang/String;)Ljava/lang/Object; H X
  Y resetTopMemoryUsedRequests [ 
	 ] java/lang/String _ metaData Ljava/lang/Object; a b	  c remote e &coldfusion/runtime/AttributeCollection g name i hint k "Resets the top large requests list m access o 
Parameters q ([Ljava/lang/Object;)V  s
 h t getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       a b           #     *� 
�                 v w     !     \�                 x y    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-1� 7-9;� A� G-/� 3-2� 7--
� KM� OYQS� UW-/� 3-3� 7--W� Z\� O� UW-^� 3�       p    �       � z {    � | b    � } ~    �  �    � � �    � � b    � * +    �  �    �  � 	   �  � 
 �   B   / 21 <1 >1 ;1 ;1 21 V2 d2 U2 U2 U2 {3 z3 z3 z3  �      Z     <� hY� OYjSY\SYlSYnSYpSYfSYrSY� OS� u� d�           <      � w     !     f�                 � �     #     � `�                 � �     "     � d�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcGETACTIVEQUERIES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcGETACTIVEQUERIES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getActiveQueries ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint oAReturns the list of active queries as an array of structs with the following keys:<br>
	TIMEEXECUTED -- The time at which query execution began<br>
	AVGTIME -- The average time taken for the query to execute in milliseconds<br>
	MINTIME -- The minimum time taken for the query to execute in milliseconds<br>
	MAXTIME -- The maximum time taken for the query to execute in milliseconds<br>
	TIMETAKEN -- The time taken for the query to execute upto this call in milliseconds<br>
	AVGSIZE -- The average size of the query in bytes<br>
	MINSIZE -- The minimum size of the query in bytes<br>
	MAXSIZE -- The maximum size of the query in bytes<br>
	ISCACHED -- Boolean, indicates whether or not the query is cached<br>
	QUERYNAME -- The query name<br>
	DSN -- The datasource name<br>
	SQL -- The SQL for the query<br>
	TEMPLATEPATH -- The path to the template on which the query is declared<br>
	LINENUMBER -- The line number on which the query is declared<br>
	FUNCTIONNAME -- The function within which the query is declared, if any<br>
	THREADNAME -- The name of the thread executing the query.<br>
	EXECUTIONCOUNT -- The number of times the query has been executed<br>
	Monitoring and profiling must be turned on for this function to work.<br>
	Stats providing details of memory consumed will have values only if memory monitoring is turned on.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-I� 3-�� 7--
� MO� QYSS� WW-I� 3-�� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Ccfservermonitoring2ecfc1605556527$funcGETUSERSNAPSHOTFILENAMEPREFIX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ELcfservermonitoring2ecfc1605556527$funcGETUSERSNAPSHOTFILENAMEPREFIX; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V USRGENSNAPSHOTPREFIX X _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; Z [
  \ 
	 ^ java/lang/String ` getUserSnapshotFileNamePrefix b metaData Ljava/lang/Object; d e	  f string h public j &coldfusion/runtime/AttributeCollection l name n hint p 6Returns the prefix of the user-generated snapshot file r 
returntype t access v 
Parameters x ([Ljava/lang/Object;)V  z
 m { getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       d e           #     *� 
�                 } ~     !     i�                  ~     !     c�                 � �    J     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-	.� 7-9;� A� G-/� 3-	/� 7--
� KM� OYQS� UW-W� 3-Y� ]�-_� 3�       p    �       � � �    � � e    � � �    � � �    � � �    � � e    � * +    �  �    �  � 	   �  � 
 �   >   	, 2	. <	. >	. ;	. ;	. 2	. V	/ d	/ U	/ U	/ U	/ s	0 s	0 s	0  �      f     H� mY
� OYoSYcSYqSYsSYuSYiSYwSYkSYySY	� OS� |� g�           H      � ~     !     k�                 � �     #     � a�                 � �     "     � g�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc =cfservermonitoring2ecfc1605556527$funcGETREQUESTTHROTTLESTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ?Lcfservermonitoring2ecfc1605556527$funcGETREQUESTTHROTTLESTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getRequestThrottleStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns throttle statistics for all requests which have been throttled as a array of structs	with the following keys:<br>
	URI  -- The URI of the request that was throttled.<br>
	AVGTHROTTLESIZE -- The average amount of throttle memory used, in bytes.<br>
	MAXTHROTTLESIZE -- The max amount of throttle memory used, in bytes.<br>
	MINTHROTTLESIZE -- The min amount of throttle memory used, in bytes.<br>
	Monitoring must be turned on for this function to work.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-I� 3-� 7--
� MO� QYSS� WW-I� 3-� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    2 < > ; ; 2 V d U U U { z z z  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 2cfservermonitoring2ecfc1605556527$funcGETHEARTBEAT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 4Lcfservermonitoring2ecfc1605556527$funcGETHEARTBEAT; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ getHeartBeat ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns a snapshot of vital statistics for monitoring health of the server.
	The statistics are returned in a struct which has the following fields: <br>
	 	ACTIVEALERT (Details of all Alert from the time server got restarted)<br>
			ALERTACTIVEAT	-- Time at which the alert got activated<br>
			ALERTINVALIDATEDAT	-- Time at which the alert was invalidated (by changing alert settings)<br>
			ALERTISACTIVE	-- returns yes if alert is active<br>
			ALERTMESSAGE	--	Alert message that gets logged (gives a brief info about current alert settings)<br>
			ALERTRECOVEREDAT	-- Time at which the alert gets recovered<br>
			ALERTSNAPSHOTFILE	--	Snapshot file path (if a snapshot was generated)<br>
			ALERTTYPE	--	Type of alert (jvmmemoryalert, slowserveralert, unresponsiveserveralert, timeoutsalert)<br> 	
		ALERT_STATUSFLAGS	-- Returns status of alert (if its active (2: threshold is reached) or warned (1: in between 80 to 100% of threshold)
								<br> or not active (0: less than 80% of threshold))<br>	
			JVMMEMORYALERT	--	jvm memory alert status<br> 
			SLOWSERVERALERT	-- 	slow server alert status<br>
			TIMEOUTSALERT	--	times out alert status<br>
			UNRESPONSIVESERVERALERT	-- unresponsive server alert status<br>
		ALLREQERRORCOUNT	--	Number of requests with errors<br>
		AVGTIME	--	Average response time in milliseconds<br>
		FREEMEMORY	--	The free memory in the JVM in bytes	<br>
		REQPERSEC	-- 	Number of requests handled by the server per second<br>
		REQQUEUED	--	Number of request queued<br>
		REQRUNNING 	--	Number of request running<br>
		REQTIMEDOUT	--	Number of timed out requests<br>
		SERVERUPTIME	--	Server's start time<br>
		USEDMEMORY	--	The used memory in the JVM in bytes<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-	 � 7-9;� A� G-/� 3-	!� 7--
� KM� OYQS� UW-W� 3-	"� 7--Y� \^� O� U�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   	 2	  <	  >	  ;	  ;	  2	  V	! d	! U	! U	! U	! {	" z	" z	" z	"  �      f     H� lY
� OYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� OS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - y 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 6cfservermonitoring2ecfc1605556527$funcCANABORTREQUESTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 8Lcfservermonitoring2ecfc1605556527$funcCANABORTREQUESTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;    javax/servlet/jsp/PageContext "
 # ! parent Ljavax/servlet/jsp/tagext/Tag; % &	  ' 
		 ) _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V + ,
  - _setCurrentLineNo (I)V / 0
  1 FACTORY 3 _get &(Ljava/lang/String;)Ljava/lang/Object; 5 6
  7 getSecurityService 9 java/lang/Object ; _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; = >
  ? isRootAdminUser A 
	 C java/lang/String E canAbortRequests G metaData Ljava/lang/Object; I J	  K boolean M remote O &coldfusion/runtime/AttributeCollection Q name S hint U =Indicates whether or not the current user can abort requests. W access Y 
returntype [ 
Parameters ] ([Ljava/lang/Object;)V  _
 R ` getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       I J           #     *� 
�                 b c     !     N�                 d c     !     H�                 e f     �  
   ]+� :+,� :	-� � $:-� (:-*� .-�� 2--�� 2--4� 8:� <� @B� <� @�-D� .�       f 
   ]       ] g h    ] i J    ] j k    ] l m    ] n o    ] p J    ] % &    ]  q    ]  q 	 r      � :� 9� 1� 1� 1�  s      f     H� RY
� <YTSYHSYVSYXSYZSYPSY\SYNSY^SY	� <S� a� L�           H      t c     !     P�                 u v     #     � F�                 w x     "     � L�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Ecfservermonitoring2ecfc1605556527$funcGETSYSTEMSNAPSHOTFILENAMEPREFIX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this GLcfservermonitoring2ecfc1605556527$funcGETSYSTEMSNAPSHOTFILENAMEPREFIX; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V SYSGENSNAPSHOTPREFIX X _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; Z [
  \ 
	 ^ java/lang/String ` getSystemSnapshotFileNamePrefix b metaData Ljava/lang/Object; d e	  f string h public j &coldfusion/runtime/AttributeCollection l name n hint p 8Returns the prefix of the system-generated snapshot file r 
returntype t access v 
Parameters x ([Ljava/lang/Object;)V  z
 m { getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       d e           #     *� 
�                 } ~     !     i�                  ~     !     c�                 � �    J     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-	5� 7-9;� A� G-/� 3-	6� 7--
� KM� OYQS� UW-W� 3-Y� ]�-_� 3�       p    �       � � �    � � e    � � �    � � �    � � �    � � e    � * +    �  �    �  � 	   �  � 
 �   >   	3 2	5 <	5 >	5 ;	5 ;	5 2	5 V	6 d	6 U	6 U	6 U	6 s	7 s	7 s	7  �      f     H� mY
� OYoSYcSYqSYsSYuSYiSYwSYkSYySY	� OS� |� g�           H      � ~     !     k�                 � �     #     � a�                 � �     "     � g�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Acfservermonitoring2ecfc1605556527$funcGETREQUESTMEMORYUSEDDETAILS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this CLcfservermonitoring2ecfc1605556527$funcGETREQUESTMEMORYUSEDDETAILS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , TEMPLATEPATH . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > get (I)Ljava/lang/Object; @ A
 6 B FUNCTIONNAME D   F put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; H I
 6 J 

         L _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V N O
  P _setCurrentLineNo (I)V R S
  T 	component V CFIDE.adminapi.accessmanager X CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Z [ coldfusion/runtime/CFPage ]
 ^ \ set (Ljava/lang/Object;)V ` a coldfusion/runtime/Variable c
 d b 
		 f _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; h i
  j checkAdminRoles l java/lang/Object n coldfusion.monitoring p _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; r s
  t MONITORINGSERVICE v &(Ljava/lang/String;)Ljava/lang/Object; h x
  y getRequestMemoryUsedDetails { java/lang/String } _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;  �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 ^ � 
	 � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint �sReturns the 10 largest variables allocated during a request for the specified template path as an array of structs with the following keys:<br>
	VARIABLENAME -- The name of the request variable<br>
	VARIABLETYPE -- The type of the variable<br>
	VARIABLESCOPE -- The scope in which the variable was declared, may be LOCAL (function local scope), PAGE (page scope) or REQUEST (request scope).<br>
	TEMPLATEPATH -- Path to the template on which the template was declared.<br>
	FUNCTIONNAME -- The name of the function in which the variable was declared, if any.<br>
	AVGSIZE -- The average memory occupied by the variable in bytes<br>
	LASTSIZE -- The size of the variable on the last request<br>
	Monitoring, memory monitoring and profiling must be turned on for this function to work.<br>
	This information will be available only for requests in the top memory used requests list.<br> � 
returntype � access � 
Parameters � HINT � 7The template path for which to return request size data � TYPE � NAME � templatepath � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � false � 0The function invoked, if the URI points to a CFC � DEFAULT � functionname � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     |�                 � �        +� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?� C� EG� KW*E1� 7� ;:+� ?-M� Q
-R� U-WY� _� e-g� Q-S� U--
� km� oYqS� uW-g� Q-T� U--w� z|� oY-T� U-1-� ~Y/S� �� �SY-T� U-1-� ~YES� �� �S� u�-�� Q�       �          � �    � �    � �    � �    � �    � �    * +     �     � 	    � 
   . �    D �  �   f   D OP tR ~R �R }R }R tR �S �S �S �S �S �T �T �T �T �T �T �T �T �T �T �T �T  �      �     ƻ �Y
� oY�SY|SY�SY�SY�SY�SY�SY�SY�SY	� oY� �Y� oY�SY�SY�SY1SY�SY�SY�SY�S� �SY� �Y
� oY�SY1SY�SY�SY�SY�SY�SYGSY�SY	�S� �SS� �� ��           �      � �     !     ��                 � �     -     � ~Y/SYES�                 � �     "     � ��                     ����  -l 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc !cfservermonitoring2ecfc1605556527  coldfusion/runtime/CFComponent  <init> ()V  
  	 this #Lcfservermonitoring2ecfc1605556527; LocalVariableTable Code bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   MONITORINGSERVICE Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   CAUSEDBY   	    REQUEST " " 	  $ SNAPSHOTDATA & & 	  ( FACTORY * * 	  , com.macromedia.SourceModTime  ���x pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	  3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/PageContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	  = 

	 ? _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V A B
  C LOCALE E REQUEST.LOCALE G _setCurrentLineNo (I)V I J
  K java M java.util.Locale O CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Q R coldfusion/runtime/CFPage T
 U S 
getDefault W java/lang/Object Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] getLanguage _ checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V a b
  c 	VARIABLES e java/lang/String g  coldfusion.server.ServiceFactory i _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V k l
  m _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; o p
  q getMonitoringService s 
LOCALEFILE u java/lang/StringBuffer w ./CFIDE/adminapi/customtags/resources/adminapi_ y (Ljava/lang/String;)V  {
 x | _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; ~ 
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 x � .xml � toString ()Ljava/lang/String; � �
 Z � getSnapshotData � USRGENSNAPSHOTPREFIX � getFileNamePrefixUsrGen � SYSGENSNAPSHOTPREFIX � getFileNamePrefixSysGen � SNAPSHOTDIR � getSnapshotDir � CAUSE � 
getUsergen � FILESEP � java.io.File � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � 	SEPARATOR � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; ~ �
  � LINESEP � java.lang.System � getProperty � line.separator � Caused by :  � CAUSEDBYLEN � _autoscalarize � p
  � Len (Ljava/lang/Object;)I � �
 U � _Object (I)Ljava/lang/Object; � �
 � � REQUESTQUEAVAILABLE � false � REQUESTQUECHECKED � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � ./customtags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � invalidSettingKey � var � file � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � �
 � � 
doStartTag ()I
 � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
  Invalid setting key:	 write { java/io/Writer
 doAfterBody
 � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
  doEndTag #javax/servlet/jsp/tagext/TagSupport
 doCatch (Ljava/lang/Throwable;)V
 � 	doFinally  
 �! 
	# invalidSettingPrefix% The setting' invalidSettingNumeric)  must be 0 or a positive integer.+ invalidSettingBoolean- must be a boolean value./ invalidSettingList1 must be a list.3 emptySettingString5 Cannot be an empty string key:7 sameAliasNameString9 WThis alias setting already exists. Please specify different template path or alias name; extraSettingMsg= (Has more than the required keys/settings? invalidAlertTypeA 5is not a not a valid Alert Type. The valid types are:C emptyArraySettingE )Array passed as arguement cannot be emptyG 
	
	
	
	I 

	
	K 	
	
	
	M _factor1 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;OP
 Q _factor2SP
 T 

	

	
	V _factor3XP
 Y 



	
	[ 

] getTopMemoryUsedQueries Lcoldfusion/runtime/UDFMethod; =cfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDQUERIESa
b 	_`	 d GETTOPMEMORYUSEDQUERIESf registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)Vhi
 j abortRequest 2cfservermonitoring2ecfc1605556527$funcABORTREQUESTm
n 	l`	 p ABORTREQUESTr resetErrorStats 5cfservermonitoring2ecfc1605556527$funcRESETERRORSTATSu
v 	t`	 x RESETERRORSTATSz enableProfiling 5cfservermonitoring2ecfc1605556527$funcENABLEPROFILING}
~ 	|`	 � ENABLEPROFILING� getSessionMemoryUsedDetails Acfservermonitoring2ecfc1605556527$funcGETSESSIONMEMORYUSEDDETAILS�
� 	�`	 � GETSESSIONMEMORYUSEDDETAILS� getCurrentReportsSize ;cfservermonitoring2ecfc1605556527$funcGETCURRENTREPORTSSIZE�
� 	�`	 � GETCURRENTREPORTSSIZE� getCauseString 4cfservermonitoring2ecfc1605556527$funcGETCAUSESTRING�
� 	�`	 � GETCAUSESTRING� getSlowCFThreadInvocationData Ccfservermonitoring2ecfc1605556527$funcGETSLOWCFTHREADINVOCATIONDATA�
� 	�`	 � GETSLOWCFTHREADINVOCATIONDATA� isMemoryMonitoringEnabled ?cfservermonitoring2ecfc1605556527$funcISMEMORYMONITORINGENABLED�
� 	�`	 � ISMEMORYMONITORINGENABLED� getTopMemoryUsedRequests >cfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDREQUESTS�
� 	�`	 � GETTOPMEMORYUSEDREQUESTS� getAverageTopSlowRequests ?cfservermonitoring2ecfc1605556527$funcGETAVERAGETOPSLOWREQUESTS�
� 	�`	 � GETAVERAGETOPSLOWREQUESTS� resetAverageTopSlowRequests Acfservermonitoring2ecfc1605556527$funcRESETAVERAGETOPSLOWREQUESTS�
� 	�`	 � RESETAVERAGETOPSLOWREQUESTS� getApplicationScopeMemoryUsed Ccfservermonitoring2ecfc1605556527$funcGETAPPLICATIONSCOPEMEMORYUSED�
� 	�`	 � GETAPPLICATIONSCOPEMEMORYUSED� getLastError 2cfservermonitoring2ecfc1605556527$funcGETLASTERROR�
� 	�`	 � GETLASTERROR� getTopSlowRequests 8cfservermonitoring2ecfc1605556527$funcGETTOPSLOWREQUESTS�
� 	�`	 � GETTOPSLOWREQUESTS� getActiveCFThreads 8cfservermonitoring2ecfc1605556527$funcGETACTIVECFTHREADS�
� 	�`	 � GETACTIVECFTHREADS� getTopSlowCFThreads 9cfservermonitoring2ecfc1605556527$funcGETTOPSLOWCFTHREADS�
� 	�`	 � GETTOPSLOWCFTHREADS� getTemplateCacheStats ;cfservermonitoring2ecfc1605556527$funcGETTEMPLATECACHESTATS�
� 	�`	 � GETTEMPLATECACHESTATS� resetTopFrequentlyRunQueries Bcfservermonitoring2ecfc1605556527$funcRESETTOPFREQUENTLYRUNQUERIES�
� 	�`	 � RESETTOPFREQUENTLYRUNQUERIES� getRequestThrottleStats =cfservermonitoring2ecfc1605556527$funcGETREQUESTTHROTTLESTATS�
� 	�`	   GETREQUESTTHROTTLESTATS getErrorHistory 5cfservermonitoring2ecfc1605556527$funcGETERRORHISTORY
 	`	  GETERRORHISTORY
 4cfservermonitoring2ecfc1605556527$funcGETSNAPSHOTDIR
 	 �`	  GETSNAPSHOTDIR getCFThreadQueueStats ;cfservermonitoring2ecfc1605556527$funcGETCFTHREADQUEUESTATS
 	`	  GETCFTHREADQUEUESTATS resetTopSlowCFThreads ;cfservermonitoring2ecfc1605556527$funcRESETTOPSLOWCFTHREADS
 	`	  RESETTOPSLOWCFTHREADS! getAlertHistory 5cfservermonitoring2ecfc1605556527$funcGETALERTHISTORY$
% 	#`	 ' GETALERTHISTORY) getMonitorStatus 6cfservermonitoring2ecfc1605556527$funcGETMONITORSTATUS,
- 	+`	 / GETMONITORSTATUS1 getQueryCacheStats 8cfservermonitoring2ecfc1605556527$funcGETQUERYCACHESTATS4
5 	3`	 7 GETQUERYCACHESTATS9 &resetCumulativeServerTimeSpentRequests Lcfservermonitoring2ecfc1605556527$funcRESETCUMULATIVESERVERTIMESPENTREQUESTS<
= 	;`	 ? &RESETCUMULATIVESERVERTIMESPENTREQUESTSA getAllActiveCFThreads ;cfservermonitoring2ecfc1605556527$funcGETALLACTIVECFTHREADSD
E 	C`	 G GETALLACTIVECFTHREADSI getRequestDetails 7cfservermonitoring2ecfc1605556527$funcGETREQUESTDETAILSL
M 	K`	 O GETREQUESTDETAILSQ getServerScopeMemoryUsed >cfservermonitoring2ecfc1605556527$funcGETSERVERSCOPEMEMORYUSEDT
U 	S`	 W GETSERVERSCOPEMEMORYUSEDY getAllActiveSessions :cfservermonitoring2ecfc1605556527$funcGETALLACTIVESESSIONS\
] 	[`	 _ GETALLACTIVESESSIONSa startMonitoring 5cfservermonitoring2ecfc1605556527$funcSTARTMONITORINGd
e 	c`	 g STARTMONITORINGi resetTopSlowQueries 9cfservermonitoring2ecfc1605556527$funcRESETTOPSLOWQUERIESl
m 	k`	 o RESETTOPSLOWQUERIESq getActiveCFThreadDetails >cfservermonitoring2ecfc1605556527$funcGETACTIVECFTHREADDETAILSt
u 	s`	 w GETACTIVECFTHREADDETAILSy updateAlias 1cfservermonitoring2ecfc1605556527$funcUPDATEALIAS|
} 	{`	  UPDATEALIAS� resetTopAverageSlowQueries @cfservermonitoring2ecfc1605556527$funcRESETTOPAVERAGESLOWQUERIES�
� 	�`	 � RESETTOPAVERAGESLOWQUERIES� getActiveSessions 7cfservermonitoring2ecfc1605556527$funcGETACTIVESESSIONS�
� 	�`	 � GETACTIVESESSIONS� getDbPoolStats 4cfservermonitoring2ecfc1605556527$funcGETDBPOOLSTATS�
� 	�`	 � GETDBPOOLSTATS� getCurrentThrottleStats =cfservermonitoring2ecfc1605556527$funcGETCURRENTTHROTTLESTATS�
� 	�`	 � GETCURRENTTHROTTLESTATS� getSystemSnapshotFileNamePrefix Ecfservermonitoring2ecfc1605556527$funcGETSYSTEMSNAPSHOTFILENAMEPREFIX�
� 	�`	 � GETSYSTEMSNAPSHOTFILENAMEPREFIX� deleteAlias 1cfservermonitoring2ecfc1605556527$funcDELETEALIAS�
� 	�`	 � DELETEALIAS� getCFThreadDetails 8cfservermonitoring2ecfc1605556527$funcGETCFTHREADDETAILS�
� 	�`	 � GETCFTHREADDETAILS� getTopHitCounts 5cfservermonitoring2ecfc1605556527$funcGETTOPHITCOUNTS�
� 	�`	 � GETTOPHITCOUNTS� getTopMemoryUsedSessions >cfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDSESSIONS�
� 	�`	 � GETTOPMEMORYUSEDSESSIONS� getCachedQueries 6cfservermonitoring2ecfc1605556527$funcGETCACHEDQUERIES�
� 	�`	 � GETCACHEDQUERIES� resetTopMemoryUsedRequests @cfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDREQUESTS�
� 	�`	 � RESETTOPMEMORYUSEDREQUESTS� getTopMemoryUsedCFThreads ?cfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDCFTHREADS�
� 	�`	 � GETTOPMEMORYUSEDCFTHREADS� deleteUserSnapshot 8cfservermonitoring2ecfc1605556527$funcDELETEUSERSNAPSHOT�
� 	�`	 � DELETEUSERSNAPSHOT� resetTopMemoryUsedQueries ?cfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDQUERIES�
� 	�`	 � RESETTOPMEMORYUSEDQUERIES� resetTopSlowRequests :cfservermonitoring2ecfc1605556527$funcRESETTOPSLOWREQUESTS�
� 	�`	 � RESETTOPSLOWREQUESTS� getHeartBeat 2cfservermonitoring2ecfc1605556527$funcGETHEARTBEAT�
� 	�`	 � GETHEARTBEAT getSlowRequestInvocationData Bcfservermonitoring2ecfc1605556527$funcGETSLOWREQUESTINVOCATIONDATA
 	`	  GETSLOWREQUESTINVOCATIONDATA	 getTopFrequentlyRunQueries @cfservermonitoring2ecfc1605556527$funcGETTOPFREQUENTLYRUNQUERIES
 	`	  GETTOPFREQUENTLYRUNQUERIES canAbortRequests 6cfservermonitoring2ecfc1605556527$funcCANABORTREQUESTS
 	`	  CANABORTREQUESTS getAlertStatus 4cfservermonitoring2ecfc1605556527$funcGETALERTSTATUS
 	`	  GETALERTSTATUS! dumpSnapshot 2cfservermonitoring2ecfc1605556527$funcDUMPSNAPSHOT$
% 	#`	 ' DUMPSNAPSHOT) getActiveSessionCount ;cfservermonitoring2ecfc1605556527$funcGETACTIVESESSIONCOUNT,
- 	+`	 / GETACTIVESESSIONCOUNT1 getCFThreadMemoryUsedDetails Bcfservermonitoring2ecfc1605556527$funcGETCFTHREADMEMORYUSEDDETAILS4
5 	3`	 7 GETCFTHREADMEMORYUSEDDETAILS9 resetTimedOutStats 8cfservermonitoring2ecfc1605556527$funcRESETTIMEDOUTSTATS<
= 	;`	 ? RESETTIMEDOUTSTATSA getTopCumulativeServerTimeSpent Ecfservermonitoring2ecfc1605556527$funcGETTOPCUMULATIVESERVERTIMESPENTD
E 	C`	 G GETTOPCUMULATIVESERVERTIMESPENTI setMonitorSettings 8cfservermonitoring2ecfc1605556527$funcSETMONITORSETTINGSL
M 	K`	 O SETMONITORSETTINGSQ disableMemoryMonitoring =cfservermonitoring2ecfc1605556527$funcDISABLEMEMORYMONITORINGT
U 	S`	 W DISABLEMEMORYMONITORINGY resetTopMemoryUsedCFThreads Acfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDCFTHREADS\
] 	[`	 _ RESETTOPMEMORYUSEDCFTHREADSa getLoggedInUserCount :cfservermonitoring2ecfc1605556527$funcGETLOGGEDINUSERCOUNTd
e 	c`	 g GETLOGGEDINUSERCOUNTi resetThrottleStats 8cfservermonitoring2ecfc1605556527$funcRESETTHROTTLESTATSl
m 	k`	 o RESETTHROTTLESTATSq getQueryDetails 5cfservermonitoring2ecfc1605556527$funcGETQUERYDETAILSt
u 	s`	 w GETQUERYDETAILSy enableMemoryMonitoring <cfservermonitoring2ecfc1605556527$funcENABLEMEMORYMONITORING|
} 	{`	  ENABLEMEMORYMONITORING� 
resetStats 0cfservermonitoring2ecfc1605556527$funcRESETSTATS�
� 	�`	 � 
RESETSTATS� getUserSnapshotList 9cfservermonitoring2ecfc1605556527$funcGETUSERSNAPSHOTLIST�
� 	�`	 � GETUSERSNAPSHOTLIST� getMonitorSettings 8cfservermonitoring2ecfc1605556527$funcGETMONITORSETTINGS�
� 	�`	 � GETMONITORSETTINGS� getRequestWithErrors :cfservermonitoring2ecfc1605556527$funcGETREQUESTWITHERRORS�
� 	�`	 � GETREQUESTWITHERRORS� stopMonitoring 4cfservermonitoring2ecfc1605556527$funcSTOPMONITORING�
� 	�`	 � STOPMONITORING� getActiveQueries 6cfservermonitoring2ecfc1605556527$funcGETACTIVEQUERIES�
� 	�`	 � GETACTIVEQUERIES� getJVMMemoryStats 7cfservermonitoring2ecfc1605556527$funcGETJVMMEMORYSTATS�
� 	�`	 � GETJVMMEMORYSTATS� getHitCountStats 6cfservermonitoring2ecfc1605556527$funcGETHITCOUNTSTATS�
� 	�`	 � GETHITCOUNTSTATS� deleteAlert 1cfservermonitoring2ecfc1605556527$funcDELETEALERT�
� 	�`	 � DELETEALERT� getTimedOutRequests 9cfservermonitoring2ecfc1605556527$funcGETTIMEDOUTREQUESTS�
� 	�`	 � GETTIMEDOUTREQUESTS� getRealtimeStats 6cfservermonitoring2ecfc1605556527$funcGETREALTIMESTATS�
� 	�`	 � GETREALTIMESTATS� getAlertSettings 6cfservermonitoring2ecfc1605556527$funcGETALERTSETTINGS�
� 	�`	 � GETALERTSETTINGS� resetTopMemoryUsedSessions @cfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDSESSIONS�
� 	�`	 � RESETTOPMEMORYUSEDSESSIONS� setAlertSettings 6cfservermonitoring2ecfc1605556527$funcSETALERTSETTINGS�
� 	�`	 � SETALERTSETTINGS� getMemoryUtilizationSummary Acfservermonitoring2ecfc1605556527$funcGETMEMORYUTILIZATIONSUMMARY�
� 	�`	 � GETMEMORYUTILIZATIONSUMMARY� resetDbPoolStats 6cfservermonitoring2ecfc1605556527$funcRESETDBPOOLSTATS�
� 	�`	 � RESETDBPOOLSTATS !getAllApplicationScopesMemoryUsed Gcfservermonitoring2ecfc1605556527$funcGETALLAPPLICATIONSCOPESMEMORYUSED
 	`	  !GETALLAPPLICATIONSCOPESMEMORYUSED	 isProfilingEnabled 8cfservermonitoring2ecfc1605556527$funcISPROFILINGENABLED
 	`	  ISPROFILINGENABLED getRequestQueueStats :cfservermonitoring2ecfc1605556527$funcGETREQUESTQUEUESTATS
 	`	  GETREQUESTQUEUESTATS getTopSlowQueries 7cfservermonitoring2ecfc1605556527$funcGETTOPSLOWQUERIES
 	`	  GETTOPSLOWQUERIES! #getAverageSlowRequestInvocationData Icfservermonitoring2ecfc1605556527$funcGETAVERAGESLOWREQUESTINVOCATIONDATA$
% 	#`	 ' #GETAVERAGESLOWREQUESTINVOCATIONDATA) getAliasSettings 6cfservermonitoring2ecfc1605556527$funcGETALIASSETTINGS,
- 	+`	 / GETALIASSETTINGS1 setAlias .cfservermonitoring2ecfc1605556527$funcSETALIAS4
5 	3`	 7 SETALIAS9 getAverageResponseTime <cfservermonitoring2ecfc1605556527$funcGETAVERAGERESPONSETIME<
= 	;`	 ? GETAVERAGERESPONSETIMEA getUserSnapshotFileNamePrefix Ccfservermonitoring2ecfc1605556527$funcGETUSERSNAPSHOTFILENAMEPREFIXD
E 	C`	 G GETUSERSNAPSHOTFILENAMEPREFIXI abortCFThread 3cfservermonitoring2ecfc1605556527$funcABORTCFTHREADL
M 	K`	 O ABORTCFTHREADQ disableProfiling 6cfservermonitoring2ecfc1605556527$funcDISABLEPROFILINGT
U 	S`	 W DISABLEPROFILINGY getRequestLoad 4cfservermonitoring2ecfc1605556527$funcGETREQUESTLOAD\
] 	[`	 _ GETREQUESTLOADa getRequestMemoryUsedDetails Acfservermonitoring2ecfc1605556527$funcGETREQUESTMEMORYUSEDDETAILSd
e 	c`	 g GETREQUESTMEMORYUSEDDETAILSi getAllActiveRequests :cfservermonitoring2ecfc1605556527$funcGETALLACTIVEREQUESTSl
m 	k`	 o GETALLACTIVEREQUESTSq getTimeOutHistory 7cfservermonitoring2ecfc1605556527$funcGETTIMEOUTHISTORYt
u 	s`	 w GETTIMEOUTHISTORYy callGC ,cfservermonitoring2ecfc1605556527$funcCALLGC|
} 	{`	  CALLGC� getTopAverageSlowQueries >cfservermonitoring2ecfc1605556527$funcGETTOPAVERAGESLOWQUERIES�
� 	�`	 � GETTOPAVERAGESLOWQUERIES� metaData Ljava/lang/Object;��	 � name� servermonitoring� displayname� Server Monitoring� extends� base� hint� 9Provides APIs for accessing server monitoring information� Name� 	Functions�	b�	n�	v�	~�	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	�	�	�	�	%�	-�	5�	=�	E�	M�	U�	]�	e�	m�	u�	}�	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	�	�	�	�	%�	-�	5�	=�	E�	M�	U�	]�	e�	m�	u�	}�	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	��	�	�	�	�	%�	-�	5�	=�	E�	M�	U�	]�	e�	m�	u�	}�	�� varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; value LineNumberTable __factorParent <clinit> 
getExtends getMetadata registerUDFs module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module2 mode2 t14 t15 t16 t17 t18 t19 module3 mode3 t22 t23 t24 t25 t26 t27 module4 mode4 t30 t31 t32 t33 t34 t35 module5 mode5 t38 t39 t40 t41 t42 t43 module6 mode6 t46 t47 t48 t49 t50 t51 module7 mode7 t54 t55 t56 t57 t58 t59 module8 mode8 t62 t63 t64 t65 t66 t67 module9 mode9 t70 t71 t72 t73 t74 t75 module10 mode10 t78 t79 t80 t81 t82 t83 java/lang/Throwablej 1     l            "     &     *     � �   _`   l`   t`   |`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   `    �`   `   `   #`   +`   3`   ;`   C`   K`   S`   [`   c`   k`   s`   {`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   `   `   `   `   #`   +`   3`   ;`   C`   K`   S`   [`   c`   k`   s`   {`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   �`   `   `   `   `   #`   +`   3`   ;`   C`   K`   S`   [`   c`   k`   s`   {`   �`   ��   
        #     *� 
�                       u     C*+,� **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -�            C       C	    C
       �     �*� 4� :L*� >N*-+�R� �*-+�U� �*-+�Z� �*+L� D*+L� D*+L� D*+L� D*+L� D*+L� D*+\� D*+L� D*+L� D*+^� D�       *    �       �    ��    � ; <         XP    r    6*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,N� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,W� D*,L� D*,L� D*,L� D*,N� D*,L� D*,@� D*,@� D*,@� D*,@� D*,L� D*,L� D*,L� D*,L� D*�       *   6      6 <   6   6�       � 	   Ѹ ׳ ٻbY�c�e�nY�o�q�vY�w�y�~Y�����Y������Y������Y������Y������Y������Y������Y������Y������Y�ǳɻ�Y�ϳѻ�Y�׳ٻ�Y�߳��Y����Y����Y������Y����Y��	�Y���Y���Y�� �%Y�&�(�-Y�.�0�5Y�6�8�=Y�>�@�EY�F�H�MY�N�P�UY�V�X�]Y�^�`�eY�f�h�mY�n�p�uY�v�x�}Y�~����Y������Y������Y������Y������Y������Y������Y������Y������Y�ƳȻ�Y�γл�Y�ֳػ�Y�޳��Y����Y����Y������Y��� �Y���Y���Y���Y�� �%Y�&�(�-Y�.�0�5Y�6�8�=Y�>�@�EY�F�H�MY�N�P�UY�V�X�]Y�^�`�eY�f�h�mY�n�p�uY�v�x�}Y�~����Y������Y������Y������Y������Y������Y������Y������Y������Y�ƳȻ�Y�γл�Y�ֳػ�Y�޳��Y����Y����Y������Y��� �Y���Y���Y���Y�� �%Y�&�(�-Y�.�0�5Y�6�8�=Y�>�@�EY�F�H�MY�N�P�UY�V�X�]Y�^�`�eY�f�h�mY�n�p�uY�v�x�}Y�~����Y����� �Y� ZY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SYe� ZY��SY��SY��SY��SY��SY��SY��SY��SY��SY	��SY
��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY��SY ��SY!��SY"��SY#��SY$��SY%��SY&��SY'��SY(��SY)��SY*��SY+��SY,��SY-��SY.��SY/��SY0��SY1��SY2��SY3��SY4��SY5��SY6��SY7��SY8��SY9��SY:��SY;��SY<��SY=��SY>��SY?��SY@��SYA��SYB��SYC��SYD��SYE��SYF��SYG��SYH��SYI��SYJ��SYK��SYL��SYM��SYN��SYO��SYP��SYQ��SYR��SYS��SYT��SYU��SYV��SYW��SYX��SYY��SYZ��SY[��SY\��SY]� SY^�SY_�SY`�SYa�SYb�SYc�SYd�SS� ����                � eTZ|`fjlOr0y	%�	r�C�� ������� m�
?�	Q���n��t�	:�
��	�����
! =!�(j/:6�=
_D�K�R�Y'`�g	3nu	�|��0���/�	����5��	� ��R�������j�
��� ���V	�`(�$M+�2�9e@`G1N�U�\�c�j�q�xz@�4���9���`�:��� �����V�	,�
w�s� �D�^��	�� SP    &     �*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,N� D*,N� D*,N� D*,N� D*,L� D*,L� D*,L� D*,L� D*,L� D*�       *    �       � <    �    ��   �     "     ��                     "     ���                         �*g�e�k*s�q�k*{�y�k*����k*����k*����k*����k*����k*����k*����k*����k*ò��k*˲ɶk*ӲѶk*۲ٶk*��k*��k*��k*����k*��k*�	�k*��k*��k*"� �k**�(�k*2�0�k*:�8�k*B�@�k*J�H�k*R�P�k*Z�X�k*b�`�k*j�h�k*r�p�k*z�x�k*����k*����k*����k*����k*����k*����k*����k*����k*²��k*ʲȶk*Ҳжk*ڲضk*��k*��k*��k*����k*� �k*
��k*��k*��k*"� �k**�(�k*2�0�k*:�8�k*B�@�k*J�H�k*R�P�k*Z�X�k*b�`�k*j�h�k*r�p�k*z�x�k*����k*����k*����k*����k*����k*����k*����k*����k*²��k*ʲȶk*Ҳжk*ڲضk*��k*��k*��k*����k*� �k*
��k*��k*��k*"� �k**�(�k*2�0�k*:�8�k*B�@�k*J�H�k*R�P�k*Z�X�k*b�`�k*j�h�k*r�p�k*z�x�k*����k*����k�          �     OP    (  T  �*,@� D*,@� D**� %FH*� L**� L**� L*NP� VX� Z� ^`� Z� ^� d*,@� D*f� hY+S*	� L*Nj� V� n*f� hYS*
� L***� -� rt� Z� ^� n*f� hYvS� xYz� }*#� hYFS� �� �� ��� �� �� n*f� hY'S*� L***� � r�� Z� ^� n*f� hY�S*� L***� )� r�� Z� ^� n*f� hY�S*� L***� )� r�� Z� ^� n*f� hY�S*� L***� )� r�� Z� ^� n*f� hY�S*� L***� )� r�� Z� ^� n*f� hY�S**� L*N�� V� �� hY�S� �� n*f� hY�S*� L**� L*N�� V�� ZY�S� ^� n*f� hYS�� n*f� hY�S*� L**� !� �� ø Ƕ n*f� hY�S˶ n*f� hY�S˶ n*,@� D*� �+� �� �:*� L���� �� �Y� ZY�SY�SY�SY�SY�SY*f� hYvS� �S� �� �� �Y6� 6*,�M,
������ � :� �:*,�M��� :� #�� � #:		�� � :
� 
�:�"�*,$� D*� �+� �� �:*� L���� �� �Y� ZY�SY&SY�SY&SY�SY*f� hYvS� �S� �� �� �Y6� 6*,�M,(������ � :� �:*,�M��� :� #�� � #:�� � :� �:�"�*,$� D*� �+� �� �:*� L���� �� �Y� ZY�SY*SY�SY*SY�SY*f� hYvS� �S� �� �� �Y6� 6*,�M,,������ � :� �:*,�M��� :� #�� � #:�� � :� �:�"�*,$� D*� �+� �� �:*� L���� �� �Y� ZY�SY.SY�SY.SY�SY*f� hYvS� �S� �� �� �Y6� 6*,�M,0������ � :� �:*,�M��� : � # �� � #:!!�� � :"� "�:#�"�#*,$� D*� �+� �� �:$*� L$���� �$� �Y� ZY�SY2SY�SY2SY�SY*f� hYvS� �S� �� �$� $�Y6%� 6*$%,�M,4�$����� � :&� &�:'*%,�M�'$�� :(� #(�� � #:)$)�� � :*� *�:+$�"�+*,$� D*� �+� �� �:,*� L,���� �,� �Y� ZY�SY6SY�SY6SY�SY*f� hYvS� �S� �� �,� ,�Y6-� 6*,-,�M,8�,����� � :.� .�:/*-,�M�/,�� :0� #0�� � #:1,1�� � :2� 2�:3,�"�3*,$� D*� �+� �� �:4* � L4���� �4� �Y� ZY�SY:SY�SY:SY�SY*f� hYvS� �S� �� �4� 4�Y65� 6*45,�M,<�4����� � :6� 6�:7*5,�M�74�� :8� #8�� � #:949�� � ::� :�:;4�"�;*,$� D*� �+� �� �:<*!� L<���� �<� �Y� ZY�SY>SY�SY>SY�SY*f� hYvS� �S� �� �<� <�Y6=� 6*<=,�M,@�<����� � :>� >�:?*=,�M�?<�� :@� #@�� � #:A<A�� � :B� B�:C<�"�C*,$� D*� �	+� �� �:D*"� LD���� �D� �Y� ZY�SYBSY�SYBSY�SY*f� hYvS� �S� �� �D� D�Y6E� 6*DE,�M,D�D����� � :F� F�:G*E,�M�GD�� :H� #H�� � #:IDI�� � :J� J�:KD�"�K*,$� D*� �
+� �� �:L*#� LL���� �L� �Y� ZY�SYFSY�SYFSY�SY*f� hYvS� �S� �� �L� L�Y6M� 6*LM,�M,H�L����� � :N� N�:O*M,�M�OL�� :P� #P�� � #:QLQ�� � :R� R�:SL�"�S*,J� D*,L� D*,N� D*,L� D*,N� D*,L� D*,L� D*,L� D*,L� D*,L� D*,N� D*,L� D*,L� D*,N� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*,L� D*� ���  ���k�  ���  ���k���  x��  m��km��  Zsy  O��kO��  <U[  1��k1��  8>  djksy  !  �GMk�V\  ��	  �	*	0k�	9	?  	�	�	�  	�

k	�

"  
�
�
�  
�
�
�k
�
�      J T  �      � <   �   ��   �   �   �   ��   ��   � 	  �  
  �!�   �"   �#   �$   �%�   �&�   �'   �(   �)�   �*   �+   �,   �-�   �.�   �/   �0   �1�   �2   �3   �4   �5�   �6�    �7 !  �8 "  �9� #  �: $  �; %  �< &  �=� '  �>� (  �? )  �@ *  �A� +  �B ,  �C -  �D .  �E� /  �F� 0  �G 1  �H 2  �I� 3  �J 4  �K 5  �L 6  �M� 7  �N� 8  �O 9  �P :  �Q� ;  �R <  �S =  �T >  �U� ?  �V� @  �W A  �X B  �Y� C  �Z D  �[ E  �\ F  �]� G  �^� H  �_ I  �` J  �a� K  �b L  �c M  �d N  �e� O  �f� P  �g Q  �h R  �i� S  �            ,  .  +  $          b 	 d 	 a 	 a 	 O 	  
 ~ 
 ~ 
 l 
 �  �  �  �  �  �  �  �  �  �  �     � ) ( (  P O O = w v v d � � � � � � � � � � � � � � � �     � * *  ; ; /  O y � � � G Y d o o ' ; F Q Q 	  ( 3 3 � � 
   � � � � � � �  �  �  �  �  � !� !� !� !u !	� "	� "	� "	� "	X "
n #
y #
� #
� #
; #       .    /����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 4cfservermonitoring2ecfc1605556527$funcGETALERTSTATUS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 6Lcfservermonitoring2ecfc1605556527$funcGETALERTSTATUS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , get (I)Ljava/lang/Object; . / %coldfusion/runtime/ArgumentCollection 1
 2 0 GETACTIVEALERTS 4 false 6 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 8 9
 2 : boolean < getVariable  (I)Lcoldfusion/runtime/Variable; > ?
 2 @ _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; B C
  D putVariable  (Lcoldfusion/runtime/Variable;)V F G
  H 

         J _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V L M
  N _setCurrentLineNo (I)V P Q
  R 	component T CFIDE.adminapi.accessmanager V CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; X Y coldfusion/runtime/CFPage [
 \ Z set (Ljava/lang/Object;)V ^ _ coldfusion/runtime/Variable a
 b ` _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; d e
  f checkAdminRoles h java/lang/Object j coldfusion.monitoring l _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; n o
  p  
		 r MONITORINGSERVICE t &(Ljava/lang/String;)Ljava/lang/Object; d v
  w getAlertStatus y java/lang/String { _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; } ~
   JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 \ � 
	 � metaData Ljava/lang/Object; � �	  � array � remote � &coldfusion/runtime/AttributeCollection � name � hint �2Returns status information for all alerts as a list of structs with the following keys:<br>
	ALERTTYPE -- The name of the alert<br>
	ALERTISACTIVE -- Boolean flag indicating whether or not the server is currently in an alerted state for the alert<br>
	ALERTINVALIDATEDAT -- The time at which the active alert was invalidated (by changed settings)<br>	
	ALERTACTIVEAT -- The time at which the alert became active, if any. If the alert is not active,<br>
	                 this will indicate the time at which the alert was last active.<br>
	ALERTRECOVEREDAT -- The time at which the server recovered from the alert state, if any.<br>
	ALERTMESSAGE -- The Detail message associated with the alert.<br>
	ALERTSNAPSHOTFILE -- The full path to the snapshot file that was dumped the last time the alert occurred, if any.<br> � 
returntype � access � 
Parameters � TYPE � REQUIRED � HINT � :if true returns only the status of currently active alerts � DEFAULT � NAME � getActiveAlerts � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �           #     *� 
�                 � �     !     ��                 � �     !     z�                 � �    �     �+� :+,� :	+� :
-� #� ):-� -:� 3� 57� ;W*5=� A� E:+� I-K� O
-ж S-UW� ]� c-K� O-Ѷ S--
� gi� kYmS� qW-s� O-Ҷ S--u� xz� kY-Ҷ S-=-� |Y5S� �� �S� q�-�� O�       z    �       � � �    � � �    � � �    � � �    � � �    � � �    � * +    �  �    �  � 	   �  � 
   � 4 �  �   V   � 8� ]� g� i� f� f� ]� �� �� �� �� �� �� �� �� �� �� �� �� ��  �      �     �� �Y
� kY�SYzSY�SY�SY�SY�SY�SY�SY�SY	� kY� �Y
� kY�SY=SY�SY7SY�SY�SY�SY7SY�SY	�S� �SS� �� ��           �      � �     !     ��                 � �     (     
� |Y5S�           
      � �     "     � ��                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 9cfservermonitoring2ecfc1605556527$funcGETTIMEDOUTREQUESTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ;Lcfservermonitoring2ecfc1605556527$funcGETTIMEDOUTREQUESTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getTimedOutRequests ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o1	Returns an array of struct of all timed out requests with the following keys:<br>
	TEMPLATEPATH -- Full path to the template that was executed<br>
	FUNCTIONNAME-- The name of the function that was invoked, if this was a web service, flash remoting, remote CFC	or gateway request.<br>
	TIMEOUTCOUNT -- The number of times timed out<br>
	LASTTIMEEXECUTED -- When the template was last executed<br>
	AVGTIME -- Average Amount of time before timeout<br>
	AVGREQUESTSIZE -- Average Request scope size<br>
	Monitoring must be turned on for this function to work.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-�� 7-9;� A� G-I� 3-�� 7--
� MO� QYSS� WW-I� 3-�� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   � 2� <� >� ;� ;� 2� V� d� U� U� U� {� z� z� z�  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 8cfservermonitoring2ecfc1605556527$funcGETQUERYCACHESTATS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this :Lcfservermonitoring2ecfc1605556527$funcGETQUERYCACHESTATS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getQueryCacheStats ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e struct g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns statistics for the query cache as a struct with the following keys:
	HITRATIO -- The query cache hit ratio (hits/(hits+misses))<br>
	SIZE -- The size of the cache in bytes<br>
	COUNT -- The number of queries in the cache<br>
	This function will work even with monitoring turned off. However, monitoring and memory monitoring must be turned on to get a valid value for the SIZE attribute.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-I� 3-� 7--
� MO� QYSS� WW-I� 3-� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    2 < > ; ; 2 V d U U U { z z z  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc =cfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDQUERIES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this ?Lcfservermonitoring2ecfc1605556527$funcGETTOPMEMORYUSEDQUERIES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getTopMemoryUsedQueries ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns the top memory used queries as an array of structs with the following keys:<br>
	LASTTIMEEXECUTED-- The time at which the query was last executed<br>
	AVGTIME-- The average time taken for the query to execute in milliseconds<br>
	MINTIME-- The minimum time taken for the query to execute in milliseconds<br>
	MAXTIME-- The maximum time taken for the query to execute in milliseconds<br>
	LASTRESPONSETIME-- The time taken to execute the last invocation of the query<br>
	AVGSIZE-- The average size of the query in bytes<br>
	MINSIZE-- The minimum size of the query in bytes<br>
	MAXSIZE-- The maximum size of the query in bytes<br>
	LASTSIZE-- The last size of the query in bytes<br>
	ISCACHED-- Boolean, indicates whether or not the query is cached<br>
	QUERYNAME-- The query name<br>
	DSN -- The datasource name<br>
	TEMPLATEPATH-- The path to the template on which the query is declared<br>
	LINENUMBER-- The line number on which the query is declared<br>
	FUNCTIONNAME-- The function within which the query is declared, if any<br>
	EXECUTIONCOUNT -- The number of times the query has been executed<br>
	Monitoring, memory monitoring and profiling must be turned on for this function to work.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
--� 7-9;� A� G-I� 3-.� 7--
� MO� QYSS� WW-I� 3-/� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    2- <- >- ;- ;- 2- V. d. U. U. U. {/ z/ z/ z/  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Acfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDCFTHREADS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this CLcfservermonitoring2ecfc1605556527$funcRESETTOPMEMORYUSEDCFTHREADS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ resetTopMemoryUsedThreads ] 
	 _ java/lang/String a resetTopMemoryUsedCFThreads c metaData Ljava/lang/Object; e f	  g remote i &coldfusion/runtime/AttributeCollection k name m hint o !Resets the top large threads list q access s 
Parameters u ([Ljava/lang/Object;)V  w
 l x getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       e f           #     *� 
�                 z {     !     d�                 | }    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-	� 7-9;� A� G-/� 3-	� 7--
� KM� OYQS� UW-W� 3-	� 7--Y� \^� O� UW-`� 3�       p    �       � ~     � � f    � � �    � � �    � � �    � � f    � * +    �  �    �  � 	   �  � 
 �   B   	� 2	� <	� >	� ;	� ;	� 2	� V	� d	� U	� U	� U	� {	� z	� z	� z	�  �      Z     <� lY� OYnSYdSYpSYrSYtSYjSYvSY� OS� y� h�           <      � {     !     j�                 � �     #     � b�                 � �     "     � h�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc <cfservermonitoring2ecfc1605556527$funcENABLEMEMORYMONITORING  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this >Lcfservermonitoring2ecfc1605556527$funcENABLEMEMORYMONITORING; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ enableMemoryMonitoring ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m "Enables monitoring of memory usage o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-N� 7-9;� A� G-/� 3-O� 7--
� KM� OYQS� UW-W� 3-P� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   M 2N <N >N ;N ;N 2N VO dO UO UO UO {P zP zP zP  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 4cfservermonitoring2ecfc1605556527$funcGETCAUSESTRING  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 6Lcfservermonitoring2ecfc1605556527$funcGETCAUSESTRING; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V CAUSE X _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; Z [
  \ 
	 ^ java/lang/String ` getCauseString b metaData Ljava/lang/Object; d e	  f string h public j &coldfusion/runtime/AttributeCollection l name n hint p ?Returns the text for the cause when user initiates the snapshot r 
returntype t access v 
Parameters x ([Ljava/lang/Object;)V  z
 m { getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       d e           #     *� 
�                 } ~     !     i�                  ~     !     c�                 � �    J     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-	'� 7-9;� A� G-/� 3-	(� 7--
� KM� OYQS� UW-W� 3-Y� ]�-_� 3�       p    �       � � �    � � e    � � �    � � �    � � �    � � e    � * +    �  �    �  � 	   �  � 
 �   >   	% 2	' <	' >	' ;	' ;	' 2	' V	( d	( U	( U	( U	( s	) s	) s	)  �      f     H� mY
� OYoSYcSYqSYsSYuSYiSYwSYkSYySY	� OS� |� g�           H      � ~     !     k�                 � �     #     � a�                 � �     "     � g�                     ����  -% 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 1cfservermonitoring2ecfc1605556527$funcDELETEALERT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 3Lcfservermonitoring2ecfc1605556527$funcDELETEALERT; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 	ALERTTYPE . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 	ALERTTIME @ 
		
         B _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V D E
  F _setCurrentLineNo (I)V H I
  J 	component L CFIDE.adminapi.accessmanager N CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; P Q coldfusion/runtime/CFPage S
 T R set (Ljava/lang/Object;)V V W coldfusion/runtime/Variable Y
 Z X 

         \ _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; ^ _
  ` checkAdminRoles b java/lang/Object d coldfusion.monitoring f _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; h i
  j  
		 l VALIDALERTTYPES n MONITORINGSERVICE p &(Ljava/lang/String;)Ljava/lang/Object; ^ r
  s listValidAlertTypes u _List $(Ljava/lang/Object;)Ljava/util/List; w x coldfusion/runtime/Cast z
 { y , } ArrayToList 6(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;  �
 T � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � 
		 � _autoscalarize � r
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 { � � _
  � ListFindNoCase 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I � �
 T � _Object (I)Ljava/lang/Object; � �
 { � _compare (Ljava/lang/Object;D)D � �
  � 
			 � MSG � java/lang/StringBuffer � (Ljava/lang/String;)V  �
 � �   � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � INVALIDALERTTYPE � toString ()Ljava/lang/String; � �
 e � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � deleteAlert � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 T � 
	 � metaData Ljava/lang/Object; � �	  � boolean � remote � &coldfusion/runtime/AttributeCollection � name � hint � 8Deletes the specified alert and associated snapshot file � access � 
returntype � 
Parameters � HINT � type of alert � TYPE � NAME � 	alertType  REQUIRED true ([Ljava/lang/Object;)V 
 � %Time at which the alert was triggered	 	alertTime getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw23 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �           #     *� 
�                 �     !     �                 �     !     հ                    o    �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?*A1� 7� ;:+� ?-C� G
-�� K-MO� U� [-]� G-� K--
� ac� eYgS� kW-m� G-o-� K-� K--q� tv� e� k� |~� �� �-�� G-� K-o� �� �-� �� �~� �� �� ��� �-�� G-�� �Y-� �� �� ��� �-�� �� �� ��� �-o� �� �� �� �� �-�� G-� �� �� �:-� K��-�� �� �� ̶ �� ә �-�� G-�� G-�� K--q� t�� eY-�� K-1-� �Y/S� ۶ �SY-�� K-1-� �YAS� ۶ �S� k�-� G�       �   �      �   � �   �   �   �   � �   � * +   �    �  	  �  
  � .   � @   �    � 6  � `� j� l� i� i� `� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������+�0�0�
�
���f�J� ��������������������������       �     ��� �� �� �Y
� eY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� eY� �Y� eY�SY�SY�SY1SY�SYSYSYS�SY� �Y� eY�SY
SY�SY1SY�SYSYSYS�SS�� �           �       �     !     �                !"     -     � �Y/SYAS�                #$     "     � �                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 1cfservermonitoring2ecfc1605556527$funcDELETEALIAS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 3Lcfservermonitoring2ecfc1605556527$funcDELETEALIAS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , TEMPLATEPATH . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V 
		 Z _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; \ ]
  ^ checkAdminRoles ` java/lang/Object b coldfusion.monitoring d _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; f g
  h MONITORINGSERVICE j &(Ljava/lang/String;)Ljava/lang/Object; \ l
  m deleteAlias o java/lang/String q _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; s t
  u 
	 w metaData Ljava/lang/Object; y z	  { remote } &coldfusion/runtime/AttributeCollection  name � hint � �Deletes specific aliasing setting. Takes following arguement as a struct with the keys:<br>
	TEMPLATEPATH -- Template path being aliased<br> � access � 
Parameters � TYPE � REQUIRED � true � NAME � templatePath � ([Ljava/lang/Object;)V  �
 � � getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       y z           #     *� 
�                 � �     !     p�                 � �    �     �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-� I-KM� S� Y-[� E-� I--
� _a� cYeS� iW-[� E-� I--k� np� cY-� rY/S� vS� iW-x� E�       z    �       � � �    � � z    � � �    � � �    � � �    � � z    � * +    �  �    �  � 	   �  � 
   � . �  �   F    I S U R R I m { l l l � � � � �  �      �     i� �Y� cY�SYpSY�SY�SY�SY~SY�SY� cY� �Y� cY�SY1SY�SY�SY�SY�S� �SS� �� |�           i      � �     !     ~�                 � �     (     
� rY/S�           
      � �     "     � |�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc :cfservermonitoring2ecfc1605556527$funcGETALLACTIVEREQUESTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this <Lcfservermonitoring2ecfc1605556527$funcGETALLACTIVEREQUESTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D 
		 H _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; J K
  L checkAdminRoles N java/lang/Object P coldfusion.monitoring R _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; T U
  V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; J Z
  [ getAllActiveRequests ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e array g remote i &coldfusion/runtime/AttributeCollection k name m hint o�Returns all active request as an array of structs with the following keys:<br>
	THREADNAME  -- thread01<br>
	CLIENTIPADDRESS -- 10.29.36.234<br>
	TEMPLATEPATH --/store/getProduct.cfm<br>
	FUNCTIONNAME-- getUserInfo() (Only if the TEMPLATEPATH points to a CFC)<br>
	TIMETAKEN -- name<br>
	CFSTACKTRACE -- Array of stack frame strings<br>
	JAVASTACKTRACE -- Array of stack frame strings, available only on JRE 1.5 or higher<br>
	REQTYPE - Type of the request. returns one of type Template Request,Event Gatway Request,Flash Remoting Request,  Web Service Request, or CFC GET Request<br>
	REQUESTMEMORY	--	The  amount of memory allocated over the course of request in bytes<br>
	VARIABLELIST (A struct with scopes as key against list of variables in that scope)<br>
		SCOPE	-- Different scopes<br>
		SCOPEVARIABLES (A list of struct with following keys)<br>
			SIZE	--	Size of the variable<br>
			VARIABLENAME	--	Name of the variable<br>
			VARIABLEVALUE -- value stored in the variable (for simple ones) or the variable type (for rest)<br>
	Monitoring must be turned on for this function to work. If a request has been excluded by the monitoring<br>
	filter, it will not show up on this list.<br> q 
returntype s access u 
Parameters w ([Ljava/lang/Object;)V  y
 l z getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 | }     !     h�                 ~ }     !     ^�                  �    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-q� 7-9;� A� G-I� 3-r� 7--
� MO� QYSS� WW-I� 3-s� 7--Y� \^� Q� W�-`� 3�       p    �       � � �    � � d    � � �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   ^ 2q <q >q ;q ;q 2q Vr dr Ur Ur Ur {s zs zs zs  �      f     H� lY
� QYnSY^SYpSYrSYtSYhSYvSYjSYxSY	� QS� {� f�           H      � }     !     j�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ,cfservermonitoring2ecfc1605556527$funcCALLGC  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this .Lcfservermonitoring2ecfc1605556527$funcCALLGC; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ callGC ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m Calls JVM garbage collection. o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-	� 7-9;� A� G-/� 3-	� 7--
� KM� OYQS� UW-W� 3-	� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   	� 2	� <	� >	� ;	� ;	� 2	� V	� d	� U	� U	� U	� {	� z	� z	� z	�  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc Lcfservermonitoring2ecfc1605556527$funcRESETCUMULATIVESERVERTIMESPENTREQUESTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this NLcfservermonitoring2ecfc1605556527$funcRESETCUMULATIVESERVERTIMESPENTREQUESTS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ &resetCumulativeServerTimeSpentRequests ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m [Resets all statistics collected on the server for the cumulative server time spent requests o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-� 7-9;� A� G-/� 3-� 7--
� KM� OYQS� UW-W� 3-� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B    2 < > ; ; 2 V d U U U { z z z  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc 8cfservermonitoring2ecfc1605556527$funcGETACTIVECFTHREADS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this :Lcfservermonitoring2ecfc1605556527$funcGETACTIVECFTHREADS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , REQUESTTHREADNAME . string 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : putVariable  (Lcoldfusion/runtime/Variable;)V < =
  > 

         @ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V B C
  D _setCurrentLineNo (I)V F G
  H 	component J CFIDE.adminapi.accessmanager L CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; N O coldfusion/runtime/CFPage Q
 R P set (Ljava/lang/Object;)V T U coldfusion/runtime/Variable W
 X V _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Z [
  \ checkAdminRoles ^ java/lang/Object ` coldfusion.monitoring b _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; d e
  f  
		 h MONITORINGSERVICE j &(Ljava/lang/String;)Ljava/lang/Object; Z l
  m getActiveCFThreads o java/lang/String q _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; s t
  u 
	 w metaData Ljava/lang/Object; y z	  { array } remote  &coldfusion/runtime/AttributeCollection � name � hint ��Returns all active CF thread for a request thread as an array of structs with the following keys:<br>
	CFTHREADNAME -- name of the cf thread.<br>
	SPAWNEDFROM  -- template Path from which the thread was spawned.<br>
	REQUESTTEMPLATE -- template path for which the original request came.<br>
	LINENO -- line no at which the cfthread was spawned<br>
	THREADNAME -- Name of the java thread.<br>
	TIMETAKEN -- Time taken<br>
	CFSTACKTRACE -- Array of stack frame strings<br>
	JAVASTACKTRACE -- Array of stack frame strings, available only on JRE 1.5 or higher<br>
	Monitoring must be turned on for this function to work. If a request has been excluded by the monitoring<br>
	filter, it will not show up on this list.<br> � 
returntype � access � 
Parameters � HINT � ,name of the java thread handling the request � TYPE � NAME � requestthreadname � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � getReturnType ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       y z           #     *� 
�                 � �     !     ~�                 � �     !     p�                 � �    �     �+� :+,� :	+� :
-� #� ):-� -:*/1� 7� ;:+� ?-A� E
-
L� I-KM� S� Y-A� E-
M� I--
� ]_� aYcS� gW-i� E-
N� I--k� np� aY-� rY/S� vS� g�-x� E�       z    �       � � �    � � z    � � �    � � �    � � �    � � z    � * +    �  �    �  � 	   �  � 
   � . �  �   F   
? I
L S
L U
L R
L R
L I
L m
M {
M l
M l
M l
M �
N �
N �
N �
N �
N  �      �     �� �Y
� aY�SYpSY�SY�SY�SY~SY�SY�SY�SY	� aY� �Y� aY�SY�SY�SY1SY�SY�SY�SY�S� �SS� �� |�           �      � �     !     ��                 � �     (     
� rY/S�           
      � �     "     � |�                     ����  - � 
SourceFile BE:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\servermonitoring.cfc ;cfservermonitoring2ecfc1605556527$funcRESETTOPSLOWCFTHREADS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this =Lcfservermonitoring2ecfc1605556527$funcRESETTOPSLOWCFTHREADS; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ACCESSMANAGER  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , 

         . _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 0 1
  2 _setCurrentLineNo (I)V 4 5
  6 	component 8 CFIDE.adminapi.accessmanager : CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; < = coldfusion/runtime/CFPage ?
 @ > set (Ljava/lang/Object;)V B C coldfusion/runtime/Variable E
 F D _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; H I
  J checkAdminRoles L java/lang/Object N coldfusion.monitoring P _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; R S
  T  
		 V MONITORINGSERVICE X &(Ljava/lang/String;)Ljava/lang/Object; H Z
  [ resetTopSlowCFThreads ] 
	 _ java/lang/String a metaData Ljava/lang/Object; c d	  e remote g &coldfusion/runtime/AttributeCollection i name k hint m !Resets the top large threads list o access q 
Parameters s ([Ljava/lang/Object;)V  u
 j v getName ()Ljava/lang/String; runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d           #     *� 
�                 x y     !     ^�                 z {    _     �+� :+,� :	+� :
-� #� ):-� -:-/� 3
-	�� 7-9;� A� G-/� 3-	�� 7--
� KM� OYQS� UW-W� 3-	�� 7--Y� \^� O� UW-`� 3�       p    �       � | }    � ~ d    �  �    � � �    � � �    � � d    � * +    �  �    �  � 	   �  � 
 �   B   	� 2	� <	� >	� ;	� ;	� 2	� V	� d	� U	� U	� U	� {	� z	� z	� z	�  �      Z     <� jY� OYlSY^SYnSYpSYrSYhSYtSY� OS� w� f�           <      � y     !     h�                 � �     #     � b�                 � �     "     � f�                     