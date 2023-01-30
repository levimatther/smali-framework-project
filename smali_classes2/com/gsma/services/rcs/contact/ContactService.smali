.class public final Lcom/gsma/services/rcs/contact/ContactService;
.super Lcom/gsma/services/rcs/RcsService;
.source "ContactService.java"


# static fields
.field private static sApiCompatible:Z = false


# instance fields
.field private apiConnection:Landroid/content/ServiceConnection;

.field private mApi:Lcom/gsma/services/rcs/contact/IContactService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 120
    new-instance p1, Lcom/gsma/services/rcs/contact/ContactService$1;

    invoke-direct {p1, p0}, Lcom/gsma/services/rcs/contact/ContactService$1;-><init>(Lcom/gsma/services/rcs/contact/ContactService;)V

    iput-object p1, p0, Lcom/gsma/services/rcs/contact/ContactService;->apiConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object p0
.end method


# virtual methods
.method public blockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mApi:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/contact/IContactService;->blockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 256
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 257
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 258
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 251
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public final connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 77
    sget-boolean v0, Lcom/gsma/services/rcs/contact/ContactService;->sApiCompatible:Z

    if-nez v0, :cond_1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isCompatible(Lcom/gsma/services/rcs/RcsService;)Z

    move-result v0

    sput-boolean v0, Lcom/gsma/services/rcs/contact/ContactService;->sApiCompatible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v1, "The TAPI client version of the contact service is not compatible with the TAPI service implementation version on this device!"

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/gsma/services/rcs/RcsServiceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Lcom/gsma/services/rcs/RcsPermissionDeniedException;

    const-string v2, "The compatibility of TAPI client version with the TAPI service implementation version of this device cannot be checked for the contact service!"

    invoke-direct {v1, v2, v0}, Lcom/gsma/services/rcs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/contact/IContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tct.cs.rcs"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mApi:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 156
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 157
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 158
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 150
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method public getRcsContacts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mApi:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->mApi:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContacts()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 180
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 181
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 174
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getRcsContactsOnline()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mApi:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->mApi:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContactsOnline()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 206
    new-instance v1, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 199
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mApi:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->mApi:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 233
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 234
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 235
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 227
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 114
    check-cast p1, Lcom/gsma/services/rcs/contact/IContactService;

    iput-object p1, p0, Lcom/gsma/services/rcs/contact/ContactService;->mApi:Lcom/gsma/services/rcs/contact/IContactService;

    return-void
.end method

.method public unblockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPersistentStorageException;,
            Lcom/gsma/services/rcs/RcsServiceNotAvailableException;,
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->mApi:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/contact/IContactService;->unblockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 278
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;->assertException(Ljava/lang/Exception;)V

    .line 279
    invoke-static {p1}, Lcom/gsma/services/rcs/RcsPersistentStorageException;->assertException(Ljava/lang/Exception;)V

    .line 280
    new-instance v0, Lcom/gsma/services/rcs/RcsGenericException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsGenericException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 273
    :cond_0
    new-instance p1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {p1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw p1
.end method
