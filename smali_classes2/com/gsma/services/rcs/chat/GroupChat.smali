.class public Lcom/gsma/services/rcs/chat/GroupChat;
.super Ljava/lang/Object;
.source "GroupChat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;,
        Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;,
        Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;,
        Lcom/gsma/services/rcs/chat/GroupChat$State;,
        Lcom/gsma/services/rcs/chat/GroupChat$GroupType;
    }
.end annotation


# instance fields
.field private final mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/chat/IGroupChat;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    return-void
.end method

.method private tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V
    .locals 4

    .line 921
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 924
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/chat/IChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 926
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 928
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 929
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public acceptInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->acceptInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 738
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAdministrators()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getAdministrators()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 765
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBulletin()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getBulletin()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 752
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getChatId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getChatId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 388
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getDirection()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsService$Direction;->valueOf(I)Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 404
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileTransferMaxSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getFileTransferMaxSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 945
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGroupIcon()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getGroupIcon()Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 778
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGroupType()Lcom/gsma/services/rcs/chat/GroupChat$GroupType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getGroupType()I

    move-result v0

    .line 863
    invoke-static {v0}, Lcom/gsma/services/rcs/chat/GroupChat$GroupType;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$GroupType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 865
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxParticipants()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getMaxParticipants()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 646
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getParticipants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getParticipants()Ljava/util/Map;

    move-result-object v0

    .line 483
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 485
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 486
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 487
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v2

    .line 486
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 493
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getReasonCode()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 435
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 450
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/chat/GroupChat$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/GroupChat$State;->valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 419
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getSubject()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 465
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->getTimestamp()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 510
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public inviteParticipants(Ljava/util/List;)Lcom/gsma/services/rcs/chat/GroupChat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)",
            "Lcom/gsma/services/rcs/chat/GroupChat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 620
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->inviteParticipants(Ljava/util/List;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object p1

    .line 626
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/chat/GroupChat;-><init>(Lcom/gsma/services/rcs/chat/IGroupChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 629
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 621
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "participants list must not be null or empty!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAllowedToInviteParticipant(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->isAllowedToInviteParticipant(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 608
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 602
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "participant must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAllowedToLeave()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->isAllowedToLeave()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 661
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowedToSendGeoSMS()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->isAllowedToSendGeoSMS()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 796
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowedToSendGeoloc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsIllegalArgumentException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->isAllowedToSendGeoloc()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 829
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 830
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowedToSendGeolocPush()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->isAllowedToSendGeolocPush()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 812
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowedToSendMessage()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->isAllowedToSendMessage()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 527
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isGroupChatRejoinable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->isGroupChatRejoinable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 898
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public leave()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->leave()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 675
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public openChat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->openChat()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 690
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public rejectInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->rejectInvitation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 725
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeParticipants(Ljava/util/List;)Lcom/gsma/services/rcs/chat/GroupChat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)",
            "Lcom/gsma/services/rcs/chat/GroupChat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 840
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->removeParticipants(Ljava/util/List;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object p1

    .line 845
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/chat/GroupChat;-><init>(Lcom/gsma/services/rcs/chat/IGroupChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 848
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 841
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "participants list must not be null or empty!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resendMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 704
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->resendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 710
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 705
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "Group Chat messageId must not be null or empty!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendGroupDataManagement(Lcom/gsma/services/rcs/chat/group/GroupDataEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 878
    :try_start_0
    instance-of v0, p1, Lcom/gsma/services/rcs/chat/group/IconGroupDataEvent;

    if-eqz v0, :cond_0

    .line 879
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/chat/group/IconGroupDataEvent;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/chat/group/IconGroupDataEvent;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gsma/services/rcs/chat/GroupChat;->tryToGrantUriPermissionToStackServices(Landroid/net/Uri;)V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->sendGroupDataManagement(Lcom/gsma/services/rcs/chat/group/GroupDataEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 883
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sendMessage(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 562
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatMessage;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->sendMessage2(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 565
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 559
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "Geoloc message must not be null!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 539
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    :try_start_0
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatMessage;

    iget-object v1, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/chat/ChatMessage;-><init>(Lcom/gsma/services/rcs/chat/IChatMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 546
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 540
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    const-string v0, "GroupChat message must not be null or empty!"

    invoke-direct {p1, v0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setComposingStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/chat/IGroupChat;->setComposingStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 589
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public tryToRejoinGroup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/GroupChat;->mGroupChatInf:Lcom/gsma/services/rcs/chat/IGroupChat;

    invoke-interface {v0}, Lcom/gsma/services/rcs/chat/IGroupChat;->tryToRejoinGroup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 911
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
