.class public abstract Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;
.super Ljava/lang/Object;
.source "HistoryQuery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;JJ)Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;
    .locals 7

    .line 31
    new-instance v6, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/enrichedcall/historyquery/AutoValue_HistoryQuery;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method


# virtual methods
.method public abstract getCallEndTimestamp()J
.end method

.method public abstract getCallStartTimestamp()J
.end method

.method public abstract getNumber()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/common/LogUtil;->sanitizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;->getCallStartTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/dialer/enrichedcall/historyquery/HistoryQuery;->getCallEndTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "HistoryQuery{number: %s, callStartTimestamp: %d, callEndTimestamp: %d}"

    .line 42
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
