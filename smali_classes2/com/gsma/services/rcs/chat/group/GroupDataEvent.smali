.class public abstract Lcom/gsma/services/rcs/chat/group/GroupDataEvent;
.super Ljava/lang/Object;
.source "GroupDataEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;,
        Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/chat/group/GroupDataEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isInitiateEvent:Z

.field protected final mAction:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

.field protected final mTarget:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->mTarget:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->mAction:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->mTarget:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    .line 47
    iput-object p2, p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->mAction:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->mAction:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    return-object v0
.end method

.method public abstract getContent()Ljava/lang/String;
.end method

.method public getTarget()Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->mTarget:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    return-object v0
.end method

.method public isInitiateEvent()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->isInitiateEvent:Z

    return v0
.end method

.method public setInitiateEvent(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->isInitiateEvent:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->mTarget:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Target;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/gsma/services/rcs/chat/group/GroupDataEvent;->mAction:Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/chat/group/GroupDataEvent$Action;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
