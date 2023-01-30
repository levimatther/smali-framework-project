.class public Lcom/android/dialer/buildtype/BuildType;
.super Ljava/lang/Object;
.source "BuildType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/buildtype/BuildType$Type;
    }
.end annotation


# static fields
.field public static final BUGFOOD:I = 0x1

.field public static final DOGFOOD:I = 0x3

.field public static final FISHFOOD:I = 0x2

.field public static final RELEASE:I = 0x4

.field public static final TEST:I = 0x5

.field private static cachedBuildType:I

.field private static didInitializeBuildType:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()I
    .locals 4

    const-class v0, Lcom/android/dialer/buildtype/BuildType;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-boolean v1, Lcom/android/dialer/buildtype/BuildType;->didInitializeBuildType:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 47
    sput-boolean v1, Lcom/android/dialer/buildtype/BuildType;->didInitializeBuildType:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/dialer/buildtype/BuildTypeAccessor;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Impl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/buildtype/BuildTypeAccessor;

    .line 51
    invoke-interface {v1}, Lcom/android/dialer/buildtype/BuildTypeAccessor;->getBuildType()I

    move-result v1

    sput v1, Lcom/android/dialer/buildtype/BuildType;->cachedBuildType:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BuildType.get"

    const-string v3, "error creating BuildTypeAccessorImpl"

    .line 53
    invoke-static {v2, v3, v1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "Unable to get build type. To fix this error include one of the build type modules (bugfood, etc...) in your target."

    .line 54
    invoke-static {v1}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    sget v1, Lcom/android/dialer/buildtype/BuildType;->cachedBuildType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
