.class public Lcom/gsma/services/rcs/standalone/StandaloneMessage;
.super Ljava/lang/Object;
.source "StandaloneMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;,
        Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;,
        Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;
    }
.end annotation


# instance fields
.field private final iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    return-void
.end method


# virtual methods
.method public getChatId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    invoke-interface {v0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->getChatId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    invoke-interface {v0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->getContent()Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    invoke-interface {v0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->getDirection()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    invoke-interface {v0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getContent()Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/standalone/StandaloneUtils;->getMessageType(Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;)Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    move-result-object v0

    return-object v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    invoke-interface {v0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->getParticipants()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    invoke-interface {v0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->getReasonCode()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    invoke-interface {v0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->getSender()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    invoke-interface {v0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;->valueOf(I)Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->iStandaloneMessage:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    invoke-interface {v0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    :try_start_0
    const-string v2, "Sender = "

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getSender()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Participants = "

    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MessageId = "

    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ChatId = "

    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Direction = "

    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Status = "

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getStatus()Lcom/gsma/services/rcs/standalone/StandaloneMessage$State;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Reason = "

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getReasonCode()Lcom/gsma/services/rcs/standalone/StandaloneMessage$ReasonCode;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Content = "

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getContent()Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MessageType = "

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/StandaloneMessage;->getMessageType()Lcom/gsma/services/rcs/standalone/StandaloneMessage$MessageType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 339
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
