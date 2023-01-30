.class public abstract Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;
.super Landroid/os/Binder;
.source "IOneToManyListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IOneToManyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IOneToManyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.chat.IOneToManyListener"

.field static final TRANSACTION_onMessageStatusChanged:I = 0x1

.field static final TRANSACTION_onMessagesDeleted:I = 0x2

.field static final TRANSACTION_onUpdateRecipientsFinished:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.chat.IOneToManyListener"

    .line 34
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToManyListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.chat.IOneToManyListener"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IOneToManyListener;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcom/gsma/services/rcs/chat/IOneToManyListener;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/chat/IOneToManyListener;
    .locals 1

    .line 195
    sget-object v0, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToManyListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/chat/IOneToManyListener;)Z
    .locals 1

    .line 185
    sget-object v0, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToManyListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 189
    sput-object p0, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToManyListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 186
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.gsma.services.rcs.chat.IOneToManyListener"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 93
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 98
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;->onUpdateRecipientsFinished(Ljava/lang/String;Z)V

    return v0

    .line 83
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;->onMessagesDeleted(Ljava/lang/String;Ljava/util/List;)V

    return v0

    .line 67
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    .line 78
    invoke-virtual/range {v1 .. v6}, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return v0
.end method
