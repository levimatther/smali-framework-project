.class public Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListenerImpl;
.super Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;
.source "MultimediaStreamingSessionListenerImpl.java"


# static fields
.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MultimediaStreamingSessionListenerImpl"

    .line 31
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method constructor <init>(Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListenerImpl;->mListener:Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;

    return-void
.end method


# virtual methods
.method public onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListenerImpl;->mListener:Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;->onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V

    return-void
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;II)V
    .locals 1

    .line 43
    :try_start_0
    invoke-static {p3}, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object p3

    .line 44
    invoke-static {p4}, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListenerImpl;->mListener:Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 51
    sget-object p2, Lcom/gsma/services/rcs/extension/MultimediaStreamingSessionListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
