.class Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;
.super Lgroovy/lang/Closure;
.source "AndroidAptPlugin.groovy"

# interfaces
.implements Lorg/codehaus/groovy/runtime/GeneratedClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1;->doCall(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static transient synthetic __$stMC:Z


# instance fields
.field private synthetic aptConfiguration:Lgroovy/lang/Reference;

.field private synthetic aptTestConfiguration:Lgroovy/lang/Reference;

.field private synthetic aptUnitTestConfiguration:Lgroovy/lang/Reference;

.field private synthetic project:Lgroovy/lang/Reference;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "configureVariant"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v2, "apt"

    aput-object v2, p0, v0

    const/4 v0, 0x2

    const-string v3, "testVariant"

    aput-object v3, p0, v0

    const/4 v0, 0x3

    aput-object v1, p0, v0

    const/4 v0, 0x4

    aput-object v3, p0, v0

    const/4 v0, 0x5

    aput-object v2, p0, v0

    const/4 v0, 0x6

    const-string v3, "hasProperty"

    aput-object v3, p0, v0

    const/4 v0, 0x7

    aput-object v1, p0, v0

    const/16 v0, 0x8

    const-string v1, "unitTestVariant"

    aput-object v1, p0, v0

    const/16 v0, 0x9

    aput-object v2, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->__$swapInit()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;Lgroovy/lang/Reference;Lgroovy/lang/Reference;Lgroovy/lang/Reference;)V
    .locals 0

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0, p1, p2}, Lgroovy/lang/Closure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptConfiguration:Lgroovy/lang/Reference;

    iput-object p4, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptUnitTestConfiguration:Lgroovy/lang/Reference;

    iput-object p5, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->project:Lgroovy/lang/Reference;

    iput-object p6, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptTestConfiguration:Lgroovy/lang/Reference;

    return-void
.end method

.method public static synthetic __$swapInit()V
    .locals 1

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$callSiteArray:Ljava/lang/ref/SoftReference;

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

    const-class v1, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public doCall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v6

    const/4 v7, 0x0

    .line 39
    aget-object v0, v6, v7

    iget-object v1, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->project:Lgroovy/lang/Reference;

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v1, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptConfiguration:Lgroovy/lang/Reference;

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v8, 0x1

    aget-object v1, v6, v8

    iget-object v3, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->project:Lgroovy/lang/Reference;

    invoke-virtual {v3}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 40
    aget-object v0, v6, v0

    invoke-interface {v0, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptTestConfiguration:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 41
    aget-object v0, v6, v0

    iget-object v1, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->project:Lgroovy/lang/Reference;

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x4

    aget-object v1, v6, v1

    invoke-interface {v1, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v1, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptTestConfiguration:Lgroovy/lang/Reference;

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v1, 0x5

    aget-object v1, v6, v1

    iget-object v5, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->project:Lgroovy/lang/Reference;

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x6

    .line 43
    aget-object v0, v6, v0

    const-string v1, "unitTestVariant"

    invoke-interface {v0, p1, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptUnitTestConfiguration:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v7, v8

    :cond_2
    if-eqz v7, :cond_3

    const/4 v0, 0x7

    .line 44
    aget-object v0, v6, v0

    iget-object v1, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->project:Lgroovy/lang/Reference;

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    const/16 v1, 0x8

    aget-object v1, v6, v1

    invoke-interface {v1, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v1, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptUnitTestConfiguration:Lgroovy/lang/Reference;

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    const/16 v1, 0x9

    aget-object v1, v6, v1

    iget-object v5, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->project:Lgroovy/lang/Reference;

    invoke-virtual {v5}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAptConfiguration()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptConfiguration:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAptTestConfiguration()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptTestConfiguration:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAptUnitTestConfiguration()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->aptUnitTestConfiguration:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProject()Lorg/gradle/api/Project;
    .locals 2

    invoke-static {}, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    iget-object v0, p0, Lcom/neenbedankt/gradle/androidapt/AndroidAptPlugin$_apply_closure1_closure3;->project:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lorg/gradle/api/Project;

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gradle/api/Project;

    return-object v0
.end method
