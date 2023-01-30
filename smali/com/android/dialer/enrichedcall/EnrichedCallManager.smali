.class public interface abstract Lcom/android/dialer/enrichedcall/EnrichedCallManager;
.super Ljava/lang/Object;
.source "EnrichedCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;,
        Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;,
        Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;
    }
.end annotation


# static fields
.field public static final POST_CALL_NOTE_MAX_CHAR:I = 0x3c


# virtual methods
.method public abstract acceptVideoShareSession(J)Z
.end method

.method public abstract clearCachedData()V
.end method

.method public abstract createIncomingCallComposerFilter()Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;
.end method

.method public abstract createOutgoingCallComposerFilter()Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;
.end method

.method public abstract endCallComposerSession(J)V
.end method

.method public abstract endVideoShareSession(J)V
.end method

.method public abstract getAllHistoricalData(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)Ljava/util/Map;
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
.end method

.method public abstract getAllSessionsForDisplay()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCapabilities(Ljava/lang/String;)Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;
.end method

.method public abstract getSession(J)Lcom/android/dialer/enrichedcall/Session;
.end method

.method public abstract getSession(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/enrichedcall/EnrichedCallManager$Filter;)Lcom/android/dialer/enrichedcall/Session;
.end method

.method public abstract getVideoShareInviteSessionId(Ljava/lang/String;)J
.end method

.method public abstract hasStoredData()Z
.end method

.method public abstract onCapabilitiesReceived(Ljava/lang/String;Lcom/android/dialer/enrichedcall/EnrichedCallCapabilities;)V
.end method

.method public abstract onIncomingCallComposerData(JLcom/android/dialer/multimedia/MultimediaData;)V
.end method

.method public abstract onIncomingPostCallData(JLcom/android/dialer/multimedia/MultimediaData;)V
.end method

.method public abstract onIncomingVideoShareInvite(JLjava/lang/String;)Z
.end method

.method public abstract onMessageUpdate(JLjava/lang/String;I)V
.end method

.method public abstract onSessionStatusUpdate(JLjava/lang/String;I)V
.end method

.method public abstract registerCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V
.end method

.method public abstract registerStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V
.end method

.method public abstract registerVideoShareListener(Lcom/android/dialer/enrichedcall/videoshare/VideoShareListener;)V
.end method

.method public abstract requestAllHistoricalData(Ljava/lang/String;Lcom/android/dialer/calldetails/CallDetailsEntries;)V
.end method

.method public abstract requestCapabilities(Ljava/lang/String;)V
.end method

.method public abstract sendCallComposerData(JLcom/android/dialer/multimedia/MultimediaData;)V
.end method

.method public abstract sendPostCallNote(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startCallComposerSession(Ljava/lang/String;)J
.end method

.method public abstract startVideoShareSession(Ljava/lang/String;)J
.end method

.method public abstract unregisterCapabilitiesListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$CapabilitiesListener;)V
.end method

.method public abstract unregisterStateChangedListener(Lcom/android/dialer/enrichedcall/EnrichedCallManager$StateChangedListener;)V
.end method

.method public abstract unregisterVideoShareListener(Lcom/android/dialer/enrichedcall/videoshare/VideoShareListener;)V
.end method
