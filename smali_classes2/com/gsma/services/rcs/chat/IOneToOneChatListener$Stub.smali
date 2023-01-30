.class public abstract Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;
.super Landroid/os/Binder;
.source "IOneToOneChatListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IOneToOneChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.chat.IOneToOneChatListener"

.field static final TRANSACTION_onComposingEvent:I = 0x2

.field static final TRANSACTION_onMessageStatusChanged:I = 0x1

.field static final TRANSACTION_onMessagesDeleted:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.chat.IOneToOneChatListener"

    .line 34
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.chat.IOneToOneChatListener"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    .locals 1

    .line 228
    sget-object v0, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)Z
    .locals 1

    .line 218
    sget-object v0, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 222
    sput-object p0, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 219
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.gsma.services.rcs.chat.IOneToOneChatListener"

    if-eq p1, v1, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 103
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 112
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    return v1

    .line 88
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 91
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 97
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move p1, v1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 98
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V

    return v1

    .line 67
    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 70
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :cond_7
    move-object v3, v0

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    .line 83
    invoke-virtual/range {v2 .. v7}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V

    return v1
.end method
