.class public abstract Lcom/android/dialer/constants/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field private static didInitializeInstance:Z

.field private static instance:Lcom/android/dialer/constants/Constants;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/android/dialer/constants/Constants;
    .locals 4

    const-class v0, Lcom/android/dialer/constants/Constants;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-boolean v1, Lcom/android/dialer/constants/Constants;->didInitializeInstance:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 37
    sput-boolean v1, Lcom/android/dialer/constants/Constants;->didInitializeInstance:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

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

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/constants/Constants;

    sput-object v1, Lcom/android/dialer/constants/Constants;->instance:Lcom/android/dialer/constants/Constants;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "Unable to create an instance of ConstantsImpl. To fix this error include one of the constants modules (googledialer, aosp etc...) in your target."

    .line 42
    invoke-static {v1}, Lcom/android/dialer/common/Assert;->fail(Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/dialer/constants/Constants;->instance:Lcom/android/dialer/constants/Constants;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract getAnnotatedCallLogProviderAuthority()Ljava/lang/String;
.end method

.method public abstract getFileProviderAuthority()Ljava/lang/String;
.end method

.method public abstract getFilteredNumberProviderAuthority()Ljava/lang/String;
.end method
