.class public abstract Lcom/gsma/services/rcs/extension/MultimediaSession;
.super Ljava/lang/Object;
.source "MultimediaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;,
        Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract abortSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation
.end method

.method public abstract acceptInvitation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation
.end method

.method public abstract getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation
.end method

.method public abstract getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation
.end method

.method public abstract getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation
.end method

.method public abstract getServiceId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation
.end method

.method public abstract getSessionId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation
.end method

.method public abstract getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation
.end method

.method public abstract rejectInvitation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation
.end method
