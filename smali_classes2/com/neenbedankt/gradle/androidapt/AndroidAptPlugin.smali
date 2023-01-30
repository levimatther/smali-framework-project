.class public Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;
.super Ljava/lang/Object;
.source "AndroidAptPlugin.groovy"

# interfaces
.implements Lorg/gradle/api/Plugin;
.implements Lgroovy/lang/GroovyObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/gradle/api/Plugin<",
        "Lorg/gradle/api/Project;",
        ">;",
        "Lgroovy/lang/GroovyObject;"
    }
.end annotation


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z

.field public static synthetic __timeStamp:J

.field public static synthetic __timeStamp__239_neverHappen1442847104226:J


# instance fields
.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x5a

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "findPlugin"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v2, "plugins"

    aput-object v2, p0, v0

    const/4 v0, 0x2

    aput-object v1, p0, v0

    const/4 v0, 0x3

    aput-object v2, p0, v0

    const/4 v0, 0x4

    aput-object v1, p0, v0

    const/4 v0, 0x5

    aput-object v2, p0, v0

    const/4 v0, 0x6

    aput-object v1, p0, v0

    const/4 v0, 0x7

    aput-object v2, p0, v0

    const/16 v0, 0x8

    aput-object v1, p0, v0

    const/16 v0, 0x9

    aput-object v2, p0, v0

    const/16 v0, 0xa

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0xb

    const-string v2, "extendsFrom"

    aput-object v2, p0, v0

    const/16 v0, 0xc

    const-string v3, "create"

    aput-object v3, p0, v0

    const/16 v0, 0xd

    const-string v4, "configurations"

    aput-object v4, p0, v0

    const/16 v0, 0xe

    const-string v5, "compile"

    aput-object v5, p0, v0

    const/16 v0, 0xf

    aput-object v4, p0, v0

    const/16 v0, 0x10

    const-string v5, "provided"

    aput-object v5, p0, v0

    const/16 v0, 0x11

    aput-object v4, p0, v0

    const/16 v0, 0x12

    aput-object v2, p0, v0

    const/16 v0, 0x13

    aput-object v3, p0, v0

    const/16 v0, 0x14

    aput-object v4, p0, v0

    const/16 v0, 0x15

    const-string v5, "getByName"

    aput-object v5, p0, v0

    const/16 v0, 0x16

    aput-object v4, p0, v0

    const/16 v0, 0x17

    aput-object v5, p0, v0

    const/16 v0, 0x18

    aput-object v4, p0, v0

    const/16 v0, 0x19

    aput-object v2, p0, v0

    const/16 v0, 0x1a

    aput-object v3, p0, v0

    const/16 v0, 0x1b

    aput-object v4, p0, v0

    const/16 v0, 0x1c

    aput-object v5, p0, v0

    const/16 v0, 0x1d

    aput-object v4, p0, v0

    const/16 v0, 0x1e

    aput-object v5, p0, v0

    const/16 v0, 0x1f

    aput-object v4, p0, v0

    const/16 v0, 0x20

    aput-object v3, p0, v0

    const/16 v0, 0x21

    const-string v2, "extensions"

    aput-object v2, p0, v0

    const/16 v0, 0x22

    const-string v2, "afterEvaluate"

    aput-object v2, p0, v0

    const/16 v0, 0x23

    const-string v2, "empty"

    aput-object v2, p0, v0

    const/16 v0, 0x24

    const-string v2, "info"

    aput-object v2, p0, v0

    const/16 v0, 0x25

    const-string v2, "logger"

    aput-object v2, p0, v0

    const/16 v0, 0x26

    const-string v2, "name"

    aput-object v2, p0, v0

    const/16 v0, 0x27

    const-string v2, "file"

    aput-object v2, p0, v0

    const/16 v0, 0x28

    aput-object v1, p0, v0

    const/16 v0, 0x29

    const-string v2, "buildDir"

    aput-object v2, p0, v0

    const/16 v0, 0x2a

    aput-object v1, p0, v0

    const/16 v0, 0x2b

    const-string v1, "dirName"

    aput-object v1, p0, v0

    const/16 v0, 0x2c

    const-string v1, "hasProperty"

    aput-object v1, p0, v0

    const/16 v0, 0x2d

    const-string v2, "javaCompiler"

    aput-object v2, p0, v0

    const/16 v0, 0x2e

    const-string v2, "javaCompile"

    aput-object v2, p0, v0

    const/16 v0, 0x2f

    const-string v2, "addJavaSourceFoldersToModel"

    aput-object v2, p0, v0

    const/16 v0, 0x30

    const-string v2, "asPath"

    aput-object v2, p0, v0

    const/16 v0, 0x31

    const-string v2, "plus"

    aput-object v2, p0, v0

    const/16 v0, 0x32

    const-string v3, "classpath"

    aput-object v3, p0, v0

    const/16 v0, 0x33

    const-string v3, "buildDependencies"

    aput-object v3, p0, v0

    const/16 v0, 0x34

    aput-object v2, p0, v0

    const/16 v0, 0x35

    const-string v3, "dependsOn"

    aput-object v3, p0, v0

    const/16 v0, 0x36

    const-string v3, "processors"

    aput-object v3, p0, v0

    const/16 v0, 0x37

    aput-object v2, p0, v0

    const/16 v0, 0x38

    const-string v3, "compilerArgs"

    aput-object v3, p0, v0

    const/16 v0, 0x39

    const-string v4, "options"

    aput-object v4, p0, v0

    const/16 v0, 0x3a

    aput-object v4, p0, v0

    const/16 v0, 0x3b

    aput-object v2, p0, v0

    const/16 v0, 0x3c

    aput-object v3, p0, v0

    const/16 v0, 0x3d

    aput-object v4, p0, v0

    const/16 v0, 0x3e

    aput-object v4, p0, v0

    const/16 v0, 0x3f

    const-string v5, "disableDiscovery"

    aput-object v5, p0, v0

    const/16 v0, 0x40

    aput-object v2, p0, v0

    const/16 v0, 0x41

    aput-object v3, p0, v0

    const/16 v0, 0x42

    aput-object v4, p0, v0

    const/16 v0, 0x43

    aput-object v4, p0, v0

    const/16 v0, 0x44

    const-string v5, "aptArguments"

    aput-object v5, p0, v0

    const/16 v0, 0x45

    aput-object v5, p0, v0

    const/16 v0, 0x46

    const-string v6, "android"

    aput-object v6, p0, v0

    const/16 v0, 0x47

    aput-object v5, p0, v0

    const/16 v0, 0x48

    aput-object v2, p0, v0

    const/16 v0, 0x49

    aput-object v3, p0, v0

    const/16 v0, 0x4a

    aput-object v4, p0, v0

    const/16 v0, 0x4b

    const-string v5, "arguments"

    aput-object v5, p0, v0

    const/16 v0, 0x4c

    aput-object v4, p0, v0

    const/16 v0, 0x4d

    const-string v5, "doFirst"

    aput-object v5, p0, v0

    const/16 v0, 0x4e

    const-string v5, "finalizedBy"

    aput-object v5, p0, v0

    const/16 v0, 0x4f

    const-string v5, "getDependencies"

    aput-object v5, p0, v0

    const/16 v0, 0x50

    const-string v5, "iterator"

    aput-object v5, p0, v0

    const/16 v0, 0x51

    aput-object v1, p0, v0

    const/16 v0, 0x52

    const-string v1, "groovyOptions"

    aput-object v1, p0, v0

    const/16 v0, 0x53

    aput-object v2, p0, v0

    const/16 v0, 0x54

    aput-object v3, p0, v0

    const/16 v0, 0x55

    aput-object v4, p0, v0

    const/16 v0, 0x56

    aput-object v3, p0, v0

    const/16 v0, 0x57

    aput-object v4, p0, v0

    const/16 v0, 0x58

    aput-object v4, p0, v0

    const/16 v0, 0x59

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->__$swapInit()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->__timeStamp__239_neverHappen1442847104226:J

    const-wide v0, 0x14ff0639ce1L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->__timeStamp:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-virtual {p0}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public static synthetic __$swapInit()V
    .locals 1

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static configureVariant(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-class v4, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v5

    const/16 v6, 0x23

    .line 53
    aget-object v6, v5, v6

    invoke-interface {v6, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/16 v1, 0x24

    .line 54
    aget-object v1, v5, v1

    const/16 v3, 0x25

    aget-object v3, v5, v3

    invoke-interface {v3, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v6, 0x26

    aget-object v5, v5, v6

    invoke-interface {v5, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v7

    const-string v2, "No apt dependencies for configuration "

    const-string v5, ""

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/16 v6, 0x27

    .line 58
    aget-object v6, v5, v6

    const/16 v9, 0x28

    aget-object v9, v5, v9

    const-class v10, Ljava/io/File;

    const/16 v11, 0x29

    aget-object v11, v5, v11

    invoke-interface {v11, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "generated/source/apt"

    invoke-interface {v9, v10, v11, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v0, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/16 v9, 0x2a

    .line 59
    aget-object v9, v5, v9

    const-class v10, Ljava/io/File;

    const/16 v11, 0x2b

    aget-object v11, v5, v11

    invoke-interface {v11, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v10, v6, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v9, Lgroovy/lang/Reference;

    invoke-direct {v9, v6}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    const/16 v6, 0x2c

    .line 61
    aget-object v6, v5, v6

    const-string v10, "javaCompiler"

    invoke-interface {v6, v1, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x2d

    aget-object v6, v5, v6

    goto :goto_0

    :cond_1
    const/16 v6, 0x2e

    aget-object v6, v5, v6

    :goto_0
    invoke-interface {v6, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/16 v10, 0x2f

    .line 63
    aget-object v10, v5, v10

    invoke-virtual {v9}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v1, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x30

    .line 64
    aget-object v10, v5, v10

    const/16 v11, 0x31

    aget-object v11, v5, v11

    const/16 v12, 0x32

    aget-object v12, v5, v12

    invoke-interface {v12, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v2, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/16 v11, 0x33

    .line 65
    aget-object v11, v5, v11

    invoke-interface {v11, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 66
    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    const/16 v11, 0x34

    .line 67
    aget-object v11, v5, v11

    const/16 v13, 0x35

    aget-object v13, v5, v13

    invoke-interface {v13, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v11, "dependsOn"

    invoke-static {v2, v12, v6, v11}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const/16 v2, 0x36

    .line 70
    aget-object v2, v5, v2

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v11, 0x37

    .line 72
    aget-object v11, v5, v11

    const/16 v13, 0x38

    aget-object v13, v5, v13

    const/16 v14, 0x39

    aget-object v14, v5, v14

    invoke-interface {v14, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    const-string v16, "-s"

    aput-object v16, v15, v7

    invoke-virtual {v9}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-static {v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v11, v13, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v13, 0x3a

    aget-object v13, v5, v13

    invoke-interface {v13, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-string v15, "compilerArgs"

    invoke-static {v11, v12, v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x3b

    .line 77
    aget-object v11, v5, v11

    const/16 v13, 0x3c

    aget-object v13, v5, v13

    const/16 v16, 0x3d

    aget-object v12, v5, v16

    invoke-interface {v12, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v13, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/Object;

    const-string v16, "-processor"

    aput-object v16, v13, v7

    aput-object v2, v13, v8

    invoke-static {v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0x3e

    aget-object v12, v5, v12

    invoke-interface {v12, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v13, v12, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    :cond_3
    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3f

    aget-object v2, v5, v2

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v8

    goto :goto_1

    :cond_4
    move v2, v7

    :goto_1
    xor-int/2addr v2, v8

    if-eqz v2, :cond_5

    const/16 v2, 0x40

    .line 83
    aget-object v2, v5, v2

    const/16 v11, 0x41

    aget-object v11, v5, v11

    const/16 v12, 0x42

    aget-object v12, v5, v12

    invoke-interface {v12, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    const-string v13, "-processorpath"

    aput-object v13, v12, v7

    aput-object v10, v12, v8

    invoke-static {v12}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v2, v11, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v7, 0x43

    aget-object v7, v5, v7

    invoke-interface {v7, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v2, v10, v7, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    const/16 v2, 0x44

    .line 88
    aget-object v2, v5, v2

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "variant"

    invoke-static {v1, v10, v2, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x45

    .line 89
    aget-object v1, v5, v1

    invoke-interface {v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "project"

    invoke-static {v0, v10, v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x46

    .line 90
    aget-object v1, v5, v1

    invoke-interface {v1, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x47

    aget-object v1, v5, v1

    invoke-interface {v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android"

    invoke-static {v0, v10, v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x48

    .line 92
    aget-object v0, v5, v0

    const/16 v1, 0x49

    aget-object v1, v5, v1

    const/16 v2, 0x4a

    aget-object v2, v5, v2

    invoke-interface {v2, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x4b

    aget-object v2, v5, v2

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4c

    aget-object v1, v5, v1

    invoke-interface {v1, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x4d

    .line 94
    aget-object v0, v5, v0

    new-instance v1, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_configureVariant_closure2;

    invoke-direct {v1, v4, v4, v9}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_configureVariant_closure2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v0, v6, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4e

    .line 99
    aget-object v0, v5, v0

    invoke-interface {v0, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4f

    .line 100
    aget-object v1, v5, v1

    invoke-interface {v1, v0, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x50

    .line 101
    aget-object v1, v5, v1

    invoke-interface {v1, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/util/Iterator;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    instance-of v2, v1, Lorg/gradle/api/tasks/compile/GroovyCompile;

    if-eqz v2, :cond_6

    const/16 v2, 0x51

    .line 103
    aget-object v2, v5, v2

    const/16 v3, 0x52

    aget-object v3, v5, v3

    invoke-interface {v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "javaAnnotationProcessing"

    invoke-interface {v2, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x53

    .line 104
    aget-object v2, v5, v2

    const/16 v3, 0x54

    aget-object v3, v5, v3

    const/16 v7, 0x55

    aget-object v7, v5, v7

    invoke-interface {v7, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v7, 0x56

    aget-object v7, v5, v7

    const/16 v9, 0x57

    aget-object v9, v5, v9

    invoke-interface {v9, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x58

    aget-object v3, v5, v3

    invoke-interface {v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v2, v7, v3, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x59

    aget-object v3, v5, v3

    invoke-interface {v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v7, v1, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/gradle/api/Project;

    invoke-virtual {p0, p1}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->apply(Lorg/gradle/api/Project;)V

    return-void
.end method

.method public apply(Lorg/gradle/api/Project;)V
    .locals 12

    new-instance v5, Lgroovy/lang/Reference;

    invoke-direct {v5, p1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object p1

    .line 11
    new-instance v6, Lgroovy/lang/Reference;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 12
    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gradle/api/Project;

    invoke-interface {v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "com.android.application"

    invoke-interface {v2, v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gradle/api/Project;

    invoke-interface {v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "android"

    invoke-interface {v2, v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-nez v2, :cond_3

    const/4 v2, 0x4

    .line 13
    aget-object v2, p1, v2

    const/4 v4, 0x5

    aget-object v4, p1, v4

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gradle/api/Project;

    invoke-interface {v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "com.android.test"

    invoke-interface {v2, v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_4

    .line 14
    move-object v1, v6

    check-cast v1, Lgroovy/lang/Reference;

    const-string v2, "applicationVariants"

    invoke-virtual {v1, v2}, Lgroovy/lang/Reference;->set(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    const/4 v2, 0x6

    .line 15
    aget-object v2, p1, v2

    const/4 v4, 0x7

    aget-object v4, p1, v4

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gradle/api/Project;

    invoke-interface {v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "com.android.library"

    invoke-interface {v2, v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x8

    aget-object v2, p1, v2

    const/16 v4, 0x9

    aget-object v4, p1, v4

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gradle/api/Project;

    invoke-interface {v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "android-library"

    invoke-interface {v2, v4, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v1, v3

    :cond_6
    if-eqz v1, :cond_7

    .line 16
    move-object v1, v6

    check-cast v1, Lgroovy/lang/Reference;

    const-string v2, "libraryVariants"

    invoke-virtual {v1, v2}, Lgroovy/lang/Reference;->set(Ljava/lang/Object;)V

    :goto_4
    const/16 v1, 0xb

    .line 20
    aget-object v1, p1, v1

    const/16 v2, 0xc

    aget-object v2, p1, v2

    const/16 v3, 0xd

    aget-object v3, p1, v3

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/gradle/api/Project;

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "apt"

    invoke-interface {v2, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xe

    aget-object v3, p1, v3

    const/16 v7, 0xf

    aget-object v7, p1, v7

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/gradle/api/Project;

    invoke-interface {v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v7, 0x10

    aget-object v7, p1, v7

    const/16 v8, 0x11

    aget-object v8, p1, v8

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/gradle/api/Project;

    invoke-interface {v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v2, v3, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lgroovy/lang/Reference;

    invoke-direct {v3, v1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    .line 21
    new-instance v7, Lgroovy/lang/Reference;

    invoke-direct {v7, v0}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    const/16 v1, 0x12

    .line 23
    :try_start_0
    aget-object v1, p1, v1

    const/16 v2, 0x13

    aget-object v2, p1, v2

    const/16 v8, 0x14

    aget-object v8, p1, v8

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/gradle/api/Project;

    invoke-interface {v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "androidTestApt"

    invoke-interface {v2, v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v8, 0x15

    aget-object v8, p1, v8

    const/16 v9, 0x16

    aget-object v9, p1, v9

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/gradle/api/Project;

    invoke-interface {v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "androidTestCompile"

    invoke-interface {v8, v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x17

    aget-object v9, p1, v9

    const/16 v10, 0x18

    aget-object v10, p1, v10

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/gradle/api/Project;

    invoke-interface {v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "androidTestProvided"

    invoke-interface {v9, v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v2, v8, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v7

    check-cast v2, Lgroovy/lang/Reference;

    invoke-virtual {v2, v1}, Lgroovy/lang/Reference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/gradle/api/artifacts/UnknownConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    throw p1

    .line 27
    :catch_0
    :goto_5
    new-instance v8, Lgroovy/lang/Reference;

    invoke-direct {v8, v0}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    const/16 v0, 0x19

    .line 29
    :try_start_1
    aget-object v0, p1, v0

    const/16 v1, 0x1a

    aget-object v1, p1, v1

    const/16 v2, 0x1b

    aget-object v2, p1, v2

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/gradle/api/Project;

    invoke-interface {v2, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v9, "testApt"

    invoke-interface {v1, v2, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1c

    aget-object v2, p1, v2

    const/16 v9, 0x1d

    aget-object v9, p1, v9

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/gradle/api/Project;

    invoke-interface {v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "testCompile"

    invoke-interface {v2, v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v9, 0x1e

    aget-object v9, p1, v9

    const/16 v10, 0x1f

    aget-object v10, p1, v10

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/gradle/api/Project;

    invoke-interface {v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "testProvided"

    invoke-interface {v9, v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v1, v2, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v8

    check-cast v1, Lgroovy/lang/Reference;

    invoke-virtual {v1, v0}, Lgroovy/lang/Reference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/gradle/api/artifacts/UnknownConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    throw p1

    :catch_1
    :goto_6
    const/16 v0, 0x20

    .line 33
    aget-object v0, p1, v0

    const/16 v1, 0x21

    aget-object v1, p1, v1

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gradle/api/Project;

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/neenbedankt/gradle/androidapt/AndroidAptExtension;

    invoke-interface {v0, v1, v4, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22

    .line 34
    aget-object p1, p1, v0

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/gradle/api/Project;

    new-instance v10, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;Lgroovy/lang/Reference;Lgroovy/lang/Reference;Lgroovy/lang/Reference;Lgroovy/lang/Reference;)V

    invoke-interface {p1, v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    const/16 v1, 0xa

    .line 18
    aget-object p1, p1, v1

    const-class v1, Lorg/gradle/api/ProjectConfigurationException;

    const-string v2, "The android or android-library plugin must be applied to the project"

    invoke-interface {p1, v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0

    iput-object p1, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic super$1$clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic super$1$equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic super$1$finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public synthetic super$1$getClass()Ljava/lang/Class;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public synthetic super$1$hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic super$1$notify()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method public synthetic super$1$notifyAll()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public synthetic super$1$toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic super$1$wait()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->wait()V

    return-void
.end method

.method public synthetic super$1$wait(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    return-void
.end method

.method public synthetic super$1$wait(JI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/lang/Object;->wait(JI)V

    return-void
.end method

.method public synthetic this$dist$get$1(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const-class v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;

    new-instance v1, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, ""

    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->getGroovyObjectProperty(Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic this$dist$invoke$1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const-class v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;

    new-instance v1, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, ""

    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v4

    new-array p2, v2, [I

    aput v4, p2, v4

    invoke-static {v1, v3, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->despreadList([Ljava/lang/Object;[Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->invokeMethodOnCurrentN(Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic this$dist$set$1(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const-class v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin;

    new-instance v1, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, ""

    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, v0, p0, p1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectProperty(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    return-void
.end method
