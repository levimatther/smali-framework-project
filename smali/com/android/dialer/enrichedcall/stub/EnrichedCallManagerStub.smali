.class public final Lcom/android/dialer/enrichedcall/stub/EnrichedCallManagerStub;
.super Ljava/lang/Object;
.source "EnrichedCallManagerStub.java"

# interfaces
.implements Lcom/android/dialer/enrichedcall/EnrichedCallManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$createIncomingCallComposerFilter$0(Lcom/android/dialer/enrichedcall/Session;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$createOutgoingCallComposerFilter$1(Lcom/android/dialer/enrichedcall/Session;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acceptVideoShareSession(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public clearCachedData()V
    .locals 0

    return-void
.end method

.method public createIncomingCallComposerFilter()Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;
    .locals 1

    .line 100
    sget-object v0, Lcom/android/dialer/enrichedcall/stub/-$$Lambda$EnrichedCallManagerStub$QaqQ6Zuml6Y0OqVHvRhKh7hfdUA;->INSTANCE:Lcom/android/dialer/enrichedcall/stub/-$$Lambda$EnrichedCallManagerStub$QaqQ6Zuml6Y0OqVHvRhKh7hfdUA;

    return-object v0
.end method

.method public createOutgoingCallComposerFilter()Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;
    .locals 1

    .line 106
    sget-object v0, Lcom/android/dialer/enrichedcall/stub/-$$Lambda$EnrichedCallManagerStub$aWpBO8FbbCemShWZ2_QuPw1V7P0;->INSTANCE:Lcom/android/dialer/enrichedcall/stub/-$$Lambda$EnrichedCallManagerStub$aWpBO8FbbCemShWZ2_QuPw1V7P0;

    return-object v0
.end method

.method public endCallComposerSession(J)V
    .locals 0

    return-void
.end method

.method public endVideoShareSession(J)V
    .locals 0

    return-void
.end method

.method public getAllHistoricalData(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/dialer/calldetails/CallDetailsEntries;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/dialer/calldetails/CallDetailsEntries$CallDetailsEntry;",
            "Ljava/util/List<",
            "Lcom/android/dialer/enrichedcall/historyquery/proto/HistoryResult;",
            ">;>;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllSessionsForDisplay()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSession(J)Lcom/android/dialer/enrichedcall/Session;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSession(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;)Lcom/android/dialer/enrichedcall/Session;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoShareInviteSessionId(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hasStoredData()Z
    .locals 1

    .line 120
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    const/4 v0, 0x0

    return v0
.end method

.method public onCapabilitiesReceived(Ljava/lang/String;Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;)V
    .locals 0

    return-void
.end method

.method public onIncomingCallComposerData(JLcom/android/dialer/multimedia/MultimediaData;)V
    .locals 0

    return-void
.end method

.method public onIncomingPostCallData(JLcom/android/dialer/multimedia/MultimediaData;)V
    .locals 0

    return-void
.end method

.method public onIncomingVideoShareInvite(JLjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMessageUpdate(JLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSessionStatusUpdate(JLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public registerCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V
    .locals 0

    return-void
.end method

.method public registerStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V
    .locals 0

    return-void
.end method

.method public registerVideoShareListener(Lcom/android/dialer/enrichedcall/videoshare/VideoShareListener;)V
    .locals 0

    return-void
.end method

.method public requestAllHistoricalData(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)V
    .locals 0

    .line 128
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    return-void
.end method

.method public requestCapabilities(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendCallComposerData(JLcom/android/dialer/multimedia/MultimediaData;)V
    .locals 0

    return-void
.end method

.method public sendPostCallNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startCallComposerSession(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public startVideoShareSession(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public unregisterCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V
    .locals 0

    return-void
.end method

.method public unregisterStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V
    .locals 0

    return-void
.end method

.method public unregisterVideoShareListener(Lcom/android/dialer/enrichedcall/videoshare/VideoShareListener;)V
    .locals 0

    return-void
.end method
