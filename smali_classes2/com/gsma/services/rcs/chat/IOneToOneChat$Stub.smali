.class public abstract Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;
.super Landroid/os/Binder;
.source "IOneToOneChat.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IOneToOneChat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IOneToOneChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.chat.IOneToOneChat"

.field static final TRANSACTION_acceptInvitation:I = 0x9

.field static final TRANSACTION_addReadReportBlackList:I = 0xc

.field static final TRANSACTION_deleteReadReportBlackList:I = 0xd

.field static final TRANSACTION_getFileTransferMaxSize:I = 0x11

.field static final TRANSACTION_getMaxChatMessageLength:I = 0xb

.field static final TRANSACTION_getRemoteContact:I = 0x1

.field static final TRANSACTION_inviteParticipants:I = 0x8

.field static final TRANSACTION_isAllowedToSendGeoSMS:I = 0xf

.field static final TRANSACTION_isAllowedToSendGeoloc:I = 0x12

.field static final TRANSACTION_isAllowedToSendGeolocPush:I = 0x10

.field static final TRANSACTION_isAllowedToSendMessage:I = 0x7

.field static final TRANSACTION_isInOneToOneReadReportBlackList:I = 0xe

.field static final TRANSACTION_openChat:I = 0x5

.field static final TRANSACTION_rejectInvitation:I = 0xa

.field static final TRANSACTION_resendMessage:I = 0x6

.field static final TRANSACTION_sendMessage:I = 0x2

.field static final TRANSACTION_sendMessage2:I = 0x4

.field static final TRANSACTION_setComposingStatus:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.chat.IOneToOneChat"

    .line 102
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToOneChat;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.chat.IOneToOneChat"

    .line 113
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IOneToOneChat;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Lcom/gsma/services/rcs/chat/IOneToOneChat;

    return-object v0

    .line 117
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/chat/IOneToOneChat;
    .locals 1

    .line 718
    sget-object v0, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/chat/IOneToOneChat;)Z
    .locals 1

    .line 708
    sget-object v0, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 712
    sput-object p0, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToOneChat;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 709
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.gsma.services.rcs.chat.IOneToOneChat"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 284
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->isAllowedToSendGeoloc()Z

    move-result p1

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 276
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->getFileTransferMaxSize()J

    move-result-wide p1

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 268
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->isAllowedToSendGeolocPush()Z

    move-result p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 260
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->isAllowedToSendGeoSMS()Z

    move-result p1

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 252
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->isInOneToOneReadReportBlackList()Z

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 245
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->deleteReadReportBlackList()V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 238
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->addReadReportBlackList()V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 230
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->getMaxChatMessageLength()I

    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 223
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->rejectInvitation()V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 216
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->acceptInvitation()V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 207
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->inviteParticipants(Ljava/util/List;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 199
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->isAllowedToSendMessage()Z

    move-result p1

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 190
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->resendMessage(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 183
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->openChat()V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 168
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    sget-object p1, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/Geoloc;

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 176
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->sendMessage2(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object p1

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 178
    invoke-interface {p1}, Lcom/gsma/services/rcs/chat/IChatMessage;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 159
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 162
    :cond_2
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->setComposingStatus(Z)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 149
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 154
    invoke-interface {p1}, Lcom/gsma/services/rcs/chat/IChatMessage;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 135
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 139
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {p1, p3, v1}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 143
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 130
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
