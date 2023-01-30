.class public abstract Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;
.super Landroid/os/Binder;
.source "IStandaloneMessage.java"

# interfaces
.implements Lcom/gsma/services/rcs/standalone/IStandaloneMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.standalone.IStandaloneMessage"

.field static final TRANSACTION_getChatId:I = 0x8

.field static final TRANSACTION_getContent:I = 0x4

.field static final TRANSACTION_getDirection:I = 0x5

.field static final TRANSACTION_getMessageId:I = 0x1

.field static final TRANSACTION_getMessageType:I = 0xa

.field static final TRANSACTION_getParticipants:I = 0x2

.field static final TRANSACTION_getReasonCode:I = 0x7

.field static final TRANSACTION_getSender:I = 0x9

.field static final TRANSACTION_getStatus:I = 0x6

.field static final TRANSACTION_getTimestamp:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.standalone.IStandaloneMessage"

    .line 62
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.standalone.IStandaloneMessage"

    .line 73
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    instance-of v1, v0, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    if-eqz v1, :cond_1

    .line 75
    check-cast v0, Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/standalone/IStandaloneMessage;
    .locals 1

    .line 442
    sget-object v0, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/standalone/IStandaloneMessage;)Z
    .locals 1

    .line 432
    sget-object v0, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 436
    sput-object p0, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/standalone/IStandaloneMessage;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 433
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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.gsma.services.rcs.standalone.IStandaloneMessage"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 179
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->getMessageType()I

    move-result p1

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 165
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->getSender()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object p1

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {p1, p3, v1}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 157
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->getChatId()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 149
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->getReasonCode()I

    move-result p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 141
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->getStatus()I

    move-result p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 133
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->getDirection()I

    move-result p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 119
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->getContent()Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;

    move-result-object p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {p1, p3, v1}, Lcom/gsma/services/rcs/standalone/StandaloneMessageEntity;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 111
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->getTimestamp()J

    move-result-wide p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 103
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->getParticipants()Ljava/util/List;

    move-result-object p1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 95
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/gsma/services/rcs/standalone/IStandaloneMessage$Stub;->getMessageId()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 90
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
