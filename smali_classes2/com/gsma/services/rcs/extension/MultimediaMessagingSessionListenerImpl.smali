.class public Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListenerImpl;
.super Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;
.source "MultimediaMessagingSessionListenerImpl.java"


# static fields
.field private static final sLogger:Lcom/gsma/rcs/utils/logger/Logger;


# instance fields
.field private final mListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MultimediaMessagingSessionListenerImpl"

    .line 31
    invoke-static {v0}, Lcom/gsma/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/gsma/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    return-void
.end method

.method constructor <init>(Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListenerImpl;->mListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    return-void
.end method


# virtual methods
.method public onMMTelCallComposerInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 70
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListenerImpl;->mListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMMTelCallComposerInfoReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListenerImpl;->mListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V

    return-void
.end method

.method public onMessageReceived2(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListenerImpl;->mListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListenerImpl;->mListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListenerImpl;->mListener:Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    return-void

    :catch_0
    move-exception p1

    .line 51
    sget-object p2, Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListenerImpl;->sLogger:Lcom/gsma/rcs/utils/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gsma/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
