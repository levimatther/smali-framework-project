.class public Lcom/neenbedankt/gradle/androidapt/AptArguments;
.super Ljava/lang/Object;
.source "AptArguments.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z

.field public static synthetic __timeStamp:J

.field public static synthetic __timeStamp__239_neverHappen1442847104268:J


# instance fields
.field private android:Ljava/lang/Object;

.field private arguments:Ljava/lang/Object;

.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;

.field private project:Ljava/lang/Object;

.field private variant:Ljava/lang/Object;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lcom/neenbedankt/gradle/androidapt/AptArguments;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "length"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "leftShift"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v1, "join"

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string v1, "getAt"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->__$swapInit()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->__timeStamp__239_neverHappen1442847104268:J

    const-wide v0, 0x14ff0639d0cL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->__timeStamp:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->arguments:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public static synthetic __$swapInit()V
    .locals 1

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$callSiteArray:Ljava/lang/ref/SoftReference;

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


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/neenbedankt/gradle/androidapt/AptArguments;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public getAndroid()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->android:Ljava/lang/Object;

    return-object v0
.end method

.method public getArguments()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->arguments:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public getProject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->project:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getVariant()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->variant:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public methodMissing(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    aget-object v2, v0, v1

    invoke-interface {v2, p2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "-A"

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 11
    aget-object p2, v0, v5

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->arguments:Ljava/lang/Object;

    new-instance v2, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v5, p1}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {p2, v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x2

    .line 13
    aget-object v6, v0, v2

    iget-object v7, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->arguments:Ljava/lang/Object;

    new-instance v8, Lorg/codehaus/groovy/runtime/GStringImpl;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x3

    aget-object p1, v0, p1

    const-string v0, " "

    invoke-interface {p1, p2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "="

    filled-new-array {v4, p1, v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, v2, p1}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-interface {v6, v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public propertyMissing(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x4

    .line 18
    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->project:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAndroid(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->android:Ljava/lang/Object;

    return-void
.end method

.method public setArguments(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->arguments:Ljava/lang/Object;

    return-void
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0

    iput-object p1, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public setProject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->project:Ljava/lang/Object;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVariant(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/neenbedankt/gradle/androidapt/AptArguments;->variant:Ljava/lang/Object;

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

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const-class v0, Lcom/neenbedankt/gradle/androidapt/AptArguments;

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

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const-class v0, Lcom/neenbedankt/gradle/androidapt/AptArguments;

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

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AptArguments;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const-class v0, Lcom/neenbedankt/gradle/androidapt/AptArguments;

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
