.class public abstract Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Scheduler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;-><init>()V

    return-void
.end method

.method public static newFixedDelaySchedule(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    .locals 8

    .line 144
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "delay must be > 0, found %s"

    .line 145
    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 146
    new-instance v0, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler$1;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler$1;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static newFixedDelaySchedule(Ljava/time/Duration;Ljava/time/Duration;)Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    .locals 3

    .line 129
    invoke-static {p0}, Lcom/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide p0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 128
    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;->newFixedDelaySchedule(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static newFixedRateSchedule(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    .locals 8

    .line 179
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "period must be > 0, found %s"

    .line 180
    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 181
    new-instance v0, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler$2;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler$2;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static newFixedRateSchedule(Ljava/time/Duration;Ljava/time/Duration;)Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    .locals 3

    .line 165
    invoke-static {p0}, Lcom/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/common/util/concurrent/Internal;->saturatedToNanos(Ljava/time/Duration;)J

    move-result-wide p0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 164
    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;->newFixedRateSchedule(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract schedule(Lcom/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractService;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end method
