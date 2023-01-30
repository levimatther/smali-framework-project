.class public abstract Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;
.super Landroid/os/Binder;
.source "IStandaloneListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/standalone/IStandaloneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/standalone/IStandaloneListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.standalone.IStandaloneListener"

.field static final TRANSACTION_onGroupStandaloneDeleted:I = 0x3

.field static final TRANSACTION_onMessageStatusChanged:I = 0x1

.field static final TRANSACTION_onMessagesDeleted:I = 0x2

.field static final TRANSACTION_onNewStandaloneMessageReceived:I = 0x4

.field static final TRANSACTION_onSendFailed:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.standalone.IStandaloneListener"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.standalone.IStandaloneListener"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneListener;
    .locals 1

    .line 262
    sget-object v0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/standalone/IStandaloneListener;)Z
    .locals 1

    .line 252
    sget-object v0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 256
    sput-object p0, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 253
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.gsma.services.rcs.standalone.IStandaloneListener"

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 117
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-virtual {p0, p1, p3, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->onSendFailed(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 109
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->onNewStandaloneMessageReceived(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)V

    return v0

    .line 99
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->onGroupStandaloneDeleted(Ljava/lang/String;Ljava/util/List;)V

    return v0

    .line 84
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 87
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 93
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    return v0

    .line 70
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_7

    move p2, v0

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    .line 79
    :goto_1
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/gsma/services/rcs/standalone/IStandaloneListener$Stub;->onMessageStatusChanged(Ljava/lang/String;IIZ)V

    return v0
.end method
