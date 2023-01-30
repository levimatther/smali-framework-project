.class public Lcom/android/incallui/latencyreport/LatencyReport;
.super Ljava/lang/Object;
.source "LatencyReport.java"


# static fields
.field private static final EXTRA_CALL_CREATED_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_CREATED_TIME_MILLIS"

.field private static final EXTRA_CALL_TELECOM_ROUTING_END_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_TELECOM_ROUTING_END_TIME_MILLIS"

.field private static final EXTRA_CALL_TELECOM_ROUTING_START_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_TELECOM_ROUTING_START_TIME_MILLIS"

.field public static final INVALID_TIME:J = -0x1L


# instance fields
.field private final mCallAddedTimeMillis:J

.field private mCallBlockingTimeMillis:J

.field private mCallNotificationTimeMillis:J

.field private final mCreatedTimeMillis:J

.field private mDidDisplayHeadsUpNotification:Z

.field private mInCallUiShownTimeMillis:J

.field private final mTelecomRoutingEndTimeMillis:J

.field private final mTelecomRoutingStartTimeMillis:J

.field private final mWasIncoming:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallBlockingTimeMillis:J

    .line 52
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallNotificationTimeMillis:J

    .line 55
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mInCallUiShownTimeMillis:J

    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mWasIncoming:Z

    .line 63
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCreatedTimeMillis:J

    .line 64
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mTelecomRoutingStartTimeMillis:J

    .line 65
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mTelecomRoutingEndTimeMillis:J

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallAddedTimeMillis:J

    return-void
.end method

.method public constructor <init>(Landroid/telecom/Call;)V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallBlockingTimeMillis:J

    .line 52
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallNotificationTimeMillis:J

    .line 55
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mInCallUiShownTimeMillis:J

    .line 70
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mWasIncoming:Z

    .line 71
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 73
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCreatedTimeMillis:J

    .line 74
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mTelecomRoutingStartTimeMillis:J

    .line 75
    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mTelecomRoutingEndTimeMillis:J

    goto :goto_1

    :cond_1
    const-string v2, "android.telecom.extra.CALL_CREATED_TIME_MILLIS"

    .line 77
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCreatedTimeMillis:J

    const-string v2, "android.telecom.extra.CALL_TELECOM_ROUTING_START_TIME_MILLIS"

    .line 79
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mTelecomRoutingStartTimeMillis:J

    const-string v2, "android.telecom.extra.CALL_TELECOM_ROUTING_END_TIME_MILLIS"

    .line 81
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mTelecomRoutingEndTimeMillis:J

    .line 83
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallAddedTimeMillis:J

    return-void
.end method


# virtual methods
.method public getCallAddedTimeMillis()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallAddedTimeMillis:J

    return-wide v0
.end method

.method public getCallBlockingTimeMillis()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallBlockingTimeMillis:J

    return-wide v0
.end method

.method public getCallNotificationTimeMillis()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallNotificationTimeMillis:J

    return-wide v0
.end method

.method public getCreatedTimeMillis()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCreatedTimeMillis:J

    return-wide v0
.end method

.method public getDidDisplayHeadsUpNotification()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mDidDisplayHeadsUpNotification:Z

    return v0
.end method

.method public getInCallUiShownTimeMillis()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mInCallUiShownTimeMillis:J

    return-wide v0
.end method

.method public getTelecomRoutingEndTimeMillis()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mTelecomRoutingEndTimeMillis:J

    return-wide v0
.end method

.method public getTelecomRoutingStartTimeMillis()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mTelecomRoutingStartTimeMillis:J

    return-wide v0
.end method

.method public getWasIncoming()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mWasIncoming:Z

    return v0
.end method

.method public onCallBlockingDone()V
    .locals 4

    .line 111
    iget-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallBlockingTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallBlockingTimeMillis:J

    :cond_0
    return-void
.end method

.method public onInCallUiShown(Z)V
    .locals 4

    .line 131
    iget-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mInCallUiShownTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mInCallUiShownTimeMillis:J

    .line 133
    iget-boolean v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mWasIncoming:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mDidDisplayHeadsUpNotification:Z

    :cond_1
    return-void
.end method

.method public onNotificationShown()V
    .locals 4

    .line 121
    iget-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallNotificationTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/latencyreport/LatencyReport;->mCallNotificationTimeMillis:J

    :cond_0
    return-void
.end method
