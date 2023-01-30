.class public Lcom/gsma/services/rcs/chat/group/AdminRoleGroupDataEvent;
.super Lcom/gsma/services/rcs/chat/group/GroupDataEvent;
.source "AdminRoleGroupDataEvent.java"


# instance fields
.field public remoteContact:Lcom/gsma/services/rcs/contact/ContactId;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;-><init>(Landroid/os/Parcel;)V

    .line 33
    const-class v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/group/AdminRoleGroupDataEvent;->remoteContact:Lcom/gsma/services/rcs/contact/ContactId;

    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    invoke-direct {p0, p2}, Lcom/gsma/services/rcs/chat/group/AdminRoleGroupDataEvent;-><init>(Lcom/gsma/services/rcs/contact/ContactId;)V

    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 2

    .line 27
    sget-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->ROLE:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    sget-object v1, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->MOVE:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    invoke-direct {p0, v0, v1}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;-><init>(Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;)V

    .line 28
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/group/AdminRoleGroupDataEvent;->remoteContact:Lcom/gsma/services/rcs/contact/ContactId;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/group/AdminRoleGroupDataEvent;->remoteContact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/group/AdminRoleGroupDataEvent;->remoteContact:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 44
    invoke-super {p0, p1, p2}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/group/AdminRoleGroupDataEvent;->remoteContact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
