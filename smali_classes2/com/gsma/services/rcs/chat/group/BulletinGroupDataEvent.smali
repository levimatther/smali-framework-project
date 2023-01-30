.class public Lcom/gsma/services/rcs/chat/group/BulletinGroupDataEvent;
.super Lcom/gsma/services/rcs/chat/group/GroupDataEvent;
.source "BulletinGroupDataEvent.java"


# instance fields
.field private mBulletin:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;-><init>(Landroid/os/Parcel;)V

    .line 31
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/group/BulletinGroupDataEvent;->mAction:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    sget-object v1, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->SET:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    if-ne v0, v1, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/group/BulletinGroupDataEvent;->mBulletin:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    invoke-direct {p0, p2}, Lcom/gsma/services/rcs/chat/group/BulletinGroupDataEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 25
    sget-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->BULLETIN:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->DELETE:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->SET:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;-><init>(Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;)V

    .line 26
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/group/BulletinGroupDataEvent;->mBulletin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBulletin()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/group/BulletinGroupDataEvent;->mBulletin:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/group/BulletinGroupDataEvent;->mBulletin:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 47
    invoke-super {p0, p1, p2}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/group/BulletinGroupDataEvent;->mAction:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    sget-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->SET:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    if-ne p2, v0, :cond_0

    .line 49
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/group/BulletinGroupDataEvent;->mBulletin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
