.class final Lcom/google/common/util/concurrent/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static saturatedToNanos(Ljava/time/Duration;)J
    .locals 2

    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 37
    :catch_0
    invoke-virtual {p0}, Ljava/time/Duration;->isNegative()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method
