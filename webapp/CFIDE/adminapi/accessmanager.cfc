����  -d 
SourceFile ?E:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\accessmanager.cfc 1cfaccessmanager2ecfc705156299$funcCHECKADMINROLES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 3Lcfaccessmanager2ecfc705156299$funcCHECKADMINROLES; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  ISROOT  1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  
   coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;   !	  " getOut ()Ljavax/servlet/jsp/JspWriter; $ % javax/servlet/jsp/PageContext '
 ( & parent Ljavax/servlet/jsp/tagext/Tag; * +	  , get (I)Ljava/lang/Object; . / %coldfusion/runtime/ArgumentCollection 1
 2 0 REQUIREDROLES 4   6 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 8 9
 2 : getVariable  (I)Lcoldfusion/runtime/Variable; < =
 2 > putVariable  (Lcoldfusion/runtime/Variable;)V @ A
  B CHECKALLROLES D true F boolean H _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; J K
  L 
		
		
		 N _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V P Q
  R _setCurrentLineNo (I)V T U
  V SECURITY X _get &(Ljava/lang/String;)Ljava/lang/Object; Z [
  \ isRootAdminUser ^ java/lang/Object ` _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; b c
  d set (Ljava/lang/Object;)V f g coldfusion/runtime/Variable i
 j h 
		 l _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; n o
  p _boolean (Ljava/lang/Object;)Z r s coldfusion/runtime/Cast u
 v t arguments.requiredRoles x 	IsDefined (Ljava/lang/String;)Z z { coldfusion/runtime/CFPage }
 ~ | _Object (Z)Ljava/lang/Object; � �
 v � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 v � jrun � ListContains '(Ljava/lang/String;Ljava/lang/String;)I � �
 ~ � � /
 v � _compare (Ljava/lang/Object;D)D � �
  � 
standalone � j2ee � 
enterprise � standard � windows � unix � 
			 � isAdminUser � admin � IsUserInRole � s
 ~ � coldfusion.adminapi � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � INVALIDUSER � n [
  � _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage (Ljava/lang/String;)V � �
 � � type � cfadminapiSecurityError � setType � �
 � � 	errorcode � CFACCESSDENIED � setErrorcode � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 
		
		 � ROLE � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � 	
			
		 � , � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
  � java/util/StringTokenizer � '(Ljava/lang/String;Ljava/lang/String;)V  �
 � � 	nextToken ()Ljava/lang/String; � �
 � � 
				
				 � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
 ~ � 
				 � 5jrun,standalone,j2ee,enterprise,standard,windows,unix  
					 CFLOOP checkRequestTimeout �
  hasMoreTokens ()Z	

 � ISINROLE false 
		
	 java/lang/String checkAdminRoles metaData Ljava/lang/Object;	  public &coldfusion/runtime/AttributeCollection name access! output# hint% ^Checks whether the current user is in the required administrative roles, else throws an error.' 
Parameters) HINT+ List of required roles.- DEFAULT/ NAME1 requiredRoles3 REQUIRED5 No7 ([Ljava/lang/Object;)V 9
: TYPE< checkAllRoles> 	getOutput getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw2 !Lcoldfusion/tagext/lang/ThrowTag; t14 Ljava/lang/String; t15 t16 t17 Ljava/util/StringTokenizer; throw3 t19 t20 t21 t22 throw4 LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �              #     *� 
�                @ �     "     �                A �     "     �                BC    	w    +� :+,� :	+� :
-� #� ):-� -:� 3� 57� ;W� ?:+� C� 3� EG� ;W*EI� ?� M:+� C-O� S
- � W--Y� ]_� a� e� k-m� S-
� qY� w�IW-"� W-y� �� �Y� w�0W-#� W-� q� ��� �� �� ��~�� �Y� w� (W-$� W-� q� ��� �� �� ��~�� �Y� w� (W-%� W-� q� ��� �� �� ��~�� �Y� w� (W-&� W-� q� ��� �� �� ��~�� �Y� w� (W-'� W-� q� ��� �� �� ��~�� �Y� w� (W-(� W-� q� ��� �� �� ��~�� �Y� w� (W-)� W-� q� ��� �� �� ��~�� �� w� -�� S�-m� S-O� S-
� q� w�� �Y� w� TW-/� W--Y� ]�� a� e� w�� �Y� w� W-/� W-�� ��� �Y� w� W-/� W-�� ��� �� w� j-�� S-� �� �� �:-0� W��-¶ ĸ �� ȶ ���и ȶ ���-׶ ĸ �� ȶ �� ޙ �-m� S-� S-�7� �-� S-� q� w�G-�� S-� q� �:�:-�+� �:� �Y� �:�� �:� k-�� S-�-8� W-� ĸ �� �� �-�� S-
� q� w�� �Y� w� 5W-
� qY� w� 'W-:� W-� ĸ �� �� �� ��~� �Y� w� W-;� W--� Ķ ��� �� w� V-� S-� �� �� �:-<� W��-¶ ĸ �� ȶ ���и ȶ �� ޙ �-�� S-�� S�����-m� S�'-�� S-� �-�� S-� q� �:�:-�+� �:� �Y� �:� l� �:� k-�� S-B� W--B� W-� ĸ �� �� �� )-� S-G� �-� S� !-�� S-�� S�����-�� S-� ĸ w�� U-�� S-� �� �� �:-H� W��-¶ ĸ �� ȶ ���и ȶ �� ޙ �-�� S-m� S-� S�       �         DE   F   GH   IJ   KL   M    * +    N    N 	   N 
   4N    DN   OP   QR   SR   TN   UV   WP   XR   YR   ZN   [V   \P ]  � �    8  Z     �   �   �      � ! � ! � " � " � " � " � " � # � # � # � # � # � # � # � $ � $ $ � $ $ � $ � $ � $ � $' %' %0 %' %8 %' %' % � % � %S &S &\ &S &d &S &S & � & � & ' '� ' '� ' ' ' � ' � '� (� (� (� (� (� (� ( � ( � (� )� )� )� )� )� )� ) � ) � ) � # � # � " * � ! . . . .2 /1 /1 /1 /1 /X /X /W /W /W /W /1 /1 /q /q /p /p /p /p /1 /1 / /� 0� 0� 0� 0� 0� 0 .� 3� 3� 3� 3  5 6 6[ 8[ 8[ 8[ 8R 8R 8r 9r 9r 9r 9� :� :� :� :� :� :� :� :� :� :� :r :r :� ;� ;� ;� ;� ;� ;r ;  <  < <� <r 9B 6 6\ @\ @X @X @j Aj A� B� B� B� B� B� C� C� C� C� D� B  Aj A G G G= H= HR H" H GP ?  5 ^      �     ��� �� ��Y
� aY SYSY"SYSY$SYSY&SY(SY*SY	� aY�Y� aY,SY.SY0SY7SY2SY4SY6SY8S�;SY�Y� aY0SYGSY=SYISY2SY?SY6SY8S�;SS�;��           �     _ �     "     �                `a     -     �Y5SYES�                bc     "     ��                     ����  - � 
SourceFile ?E:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\accessmanager.cfc /cfaccessmanager2ecfc705156299$funcCANACCESSPAGE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 1Lcfaccessmanager2ecfc705156299$funcCANACCESSPAGE; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;    javax/servlet/jsp/PageContext "
 # ! parent Ljavax/servlet/jsp/tagext/Tag; % &	  ' PAGE ) string + getVariable  (I)Lcoldfusion/runtime/Variable; - . %coldfusion/runtime/ArgumentCollection 0
 1 / _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 3 4
  5 putVariable  (Lcoldfusion/runtime/Variable;)V 7 8
  9 
		 ; _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V = >
  ? _setCurrentLineNo (I)V A B
  C SECURITY E _get &(Ljava/lang/String;)Ljava/lang/Object; G H
  I canAccessPage K java/lang/Object M _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; O P
  Q _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; S T
  U 
	 W java/lang/String Y metaData Ljava/lang/Object; [ \	  ] boolean _ public a false c &coldfusion/runtime/AttributeCollection e name g access i output k 
returntype m hint o GIndicates whether or not the current user can access the specified page q 
Parameters s TYPE u REQUIRED w true y NAME { page } ([Ljava/lang/Object;)V  
 f � 	getOutput ()Ljava/lang/String; getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       [ \   	        #     *� 
�                 � �     !     d�                 � �     !     `�                 � �     !     L�                 � �         k+� :+,� :	-� � $:-� (:**,� 2� 6:
+
� :-<� @-V� D--F� JL� NY-
� RS� V�-X� @�       p    k       k � �    k � \    k � �    k � �    k � �    k � \    k % &    k  �    k  � 	   k ) � 
 �       T H V V V G V G V G V  �      �     �� fY� NYhSYLSYjSYbSYlSYdSYnSY`SYpSY	rSY
tSY� NY� fY� NYvSY,SYxSYzSY|SY~S� �SS� �� ^�           �      � �     !     b�                 � �     (     
� ZY*S�           
      � �     "     � ^�                     ����  -A 
SourceFile ?E:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\accessmanager.cfc cfaccessmanager2ecfc705156299  coldfusion/runtime/CFComponent  <init> ()V  
  	 this Lcfaccessmanager2ecfc705156299; LocalVariableTable Code bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   SECURITY Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   FACTORY   	    REQUEST " " 	  $ CFACCESSDENIED & & 	  ( com.macromedia.SourceModTime  ��� pageContext #Lcoldfusion/runtime/NeoPageContext; - .	  / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/PageContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	  9 

	
	 ; _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V = >
  ? set (Ljava/lang/Object;)V A B coldfusion/runtime/Variable D
 E C 

	 G 
	 I LOCALE K REQUEST.LOCALE M _setCurrentLineNo (I)V O P
  Q java S java.util.Locale U CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; W X coldfusion/runtime/CFPage Z
 [ Y 
getDefault ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
  c getLanguage e checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V g h
  i  coldfusion.server.ServiceFactory k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
  o getSecurityService q 	VARIABLES s java/lang/String u 
LOCALEFILE w java/lang/StringBuffer y ./CFIDE/adminapi/customtags/resources/adminapi_ { (Ljava/lang/String;)V  }
 z ~ _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 z � .xml � toString ()Ljava/lang/String; � �
 ` � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � ./customtags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � invalidUser � var � file � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � 9The current user is not authorized to invoke this method. � write � } java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally � 
 � � 	
	
	
	 � 
	
	 � 
	
 � canAccessPage Lcoldfusion/runtime/UDFMethod; /cfaccessmanager2ecfc705156299$funcCANACCESSPAGE �
 � 	 � �	  � CANACCESSPAGE � registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V � �
  � checkAdminRoles 1cfaccessmanager2ecfc705156299$funcCHECKADMINROLES
 	  �	  CHECKADMINROLES checkRootAdminUser 4cfaccessmanager2ecfc705156299$funcCHECKROOTADMINUSER	

 	 �	  CHECKROOTADMINUSER metaData Ljava/lang/Object;	  name accessmanager displayname Access Manager hint kProvides functions to check  whether the current user has the access rights required for invoking functions Name  	Functions"	 �		
 varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; value module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 LineNumberTable java/lang/Throwable< <clinit> getMetadata registerUDFs 1     	            "     &     � �    � �     �    �              #     *� 
�                       i     7*+,� **+,� � **+,� � !**#+,� � %**'+,� � )�            7       7'(    7)*  +,    	    �*� 0� 6L*� :N*+<� @*� )'� F*+H� @*+J� @**� %LN*� R**� R**� R*TV� \^� `� df� `� d� j*+J� @*� !*� R*Tl� \� F*� *� R***� !� pr� `� d� F*t� vYxS� zY|� *#� vYLS� �� �� ��� �� �� �*+<� @*� �-� �� �:*� R���� �� �Y� `Y�SY�SY�SY�SY�SY*t� vYxS� �S� �� �� �� �Y6� 5*+� �L+Զ �� ܚ��� � :� �:*+� �L�� �� :� #�� � #:		� � � :
� 
�:� �*+� @*+� @*+H� @*+� @� Iag  >��=>��       z   �      �-.   �/   � 7 8   �01   �23   �45   �6   �7   �85 	  �95 
  �: ;   � #  
  
  
  
 $  I  K  H  A  :  :  :  w  y  v  v  l  �  �  �  �  �  �  �  �  �  �  �  l   " "  �     >      � 	    ��� �� �� �Y� �� ��Y���
Y��� �Y
� `YSYSYSYSYSYSY!SYSY#SY	� `Y�$SY�%SY�&SS� ���           �    ;     q T w  } N ?,     "     ��                @      <     *�� �� �*�� �*�� ��                      *    +����  - � 
SourceFile ?E:\cf8_updates\cfusion\wwwroot\CFIDE\adminapi\accessmanager.cfc 4cfaccessmanager2ecfc705156299$funcCHECKROOTADMINUSER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 this 6Lcfaccessmanager2ecfc705156299$funcCHECKROOTADMINUSER; LocalVariableTable Code 	ARGUMENTS  bindInternal C(Ljava/lang/String;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;    javax/servlet/jsp/PageContext "
 # ! parent Ljavax/servlet/jsp/tagext/Tag; % &	  ' 
		 ) _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V + ,
  - _setCurrentLineNo (I)V / 0
  1 SECURITY 3 _get &(Ljava/lang/String;)Ljava/lang/Object; 5 6
  7 isRootAdminUser 9 java/lang/Object ; _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; = >
  ? _boolean (Ljava/lang/Object;)Z A B coldfusion/runtime/Cast D
 E C 
			 G %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag K forName %(Ljava/lang/String;)Ljava/lang/Class; M N java/lang/Class P
 Q O I J	  S _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; U V
  W coldfusion/tagext/lang/ThrowTag Y cfthrow [ message ] INVALIDUSER _ _autoscalarize a 6
  b _String &(Ljava/lang/Object;)Ljava/lang/String; d e
 E f _validateTagAttrValue J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; h i
  j 
setMessage (Ljava/lang/String;)V l m
 Z n type p cfadminapiSecurityError r setType t m
 Z u _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z w x
  y 
	 { java/lang/String } checkRootAdminUser  metaData Ljava/lang/Object; � �	  � public � false � &coldfusion/runtime/AttributeCollection � name � access � output � hint � MChecks whether the current user is the root admin user, else throws an error. � 
Parameters � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw5 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       I J    � �           #     *� 
�                 � �     !     ��                 � �     !     ��                 � �    V     �+� :+,� :	-� � $:-� (:-*� .-O� 2--4� 8:� <� @� F�� U-H� .-� T� X� Z:
-P� 2
\^-`� c� g� k� o
\qs� k� v
� z� �-*� .-|� .�       p    �       � � �    � � �    � � �    � � �    � � �    � � �    � % &    �  �    �  � 	   � � � 
 �   * 
   N 1 O 0 O 0 O 0 O k P k P � P P P 0 O  �      n     PL� R� T� �Y
� <Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	� <S� �� ��           P      � �     !     ��                 � �     #     � ~�                 � �     "     � ��                     