.class final Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;
.super Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;
.source "AutoValue_HistoryQuery.java"


# instance fields
.field private final callEndTimestamp:J

.field private final callStartTimestamp:J

.field private final number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;-><init>()V

    if-eqz p1, :cond_0

    .line 21
    iput-object p1, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->number:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->callStartTimestamp:J

    .line 23
    iput-wide p4, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->callEndTimestamp:J

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null number"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 47
    check-cast p1, Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;

    .line 48
    iget-object v1, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->callStartTimestamp:J

    .line 49
    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;->getCallStartTimestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->callEndTimestamp:J

    .line 50
    invoke-virtual {p1}, Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;->getCallEndTimestamp()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getCallEndTimestamp()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->callEndTimestamp:J

    return-wide v0
.end method

.method public getCallStartTimestamp()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->callStartTimestamp:J

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->number:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 61
    iget-wide v2, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->callStartTimestamp:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 63
    iget-wide v1, p0, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;->callEndTimestamp:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method
