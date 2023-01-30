.class public abstract Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;
.super Landroid/os/Binder;
.source "IOneToManyService.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IOneToManyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IOneToManyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IOneToManyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.chat.IOneToManyService"

.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_addOneToManyEventListener:I = 0x4

.field static final TRANSACTION_addRecipients:I = 0x6

.field static final TRANSACTION_deleteConversation:I = 0xe

.field static final TRANSACTION_deleteMessage:I = 0xd

.field static final TRANSACTION_get1ToManyRecipients:I = 0xb

.field static final TRANSACTION_getChatMax1toManyRecipients:I = 0x9

.field static final TRANSACTION_getFTMax1ToManyRecipients:I = 0xa

.field static final TRANSACTION_getIcon:I = 0x17

.field static final TRANSACTION_getOneToManyMessageDetails:I = 0x10

.field static final TRANSACTION_getRecipientsSize:I = 0x8

.field static final TRANSACTION_getSubject:I = 0x18

.field static final TRANSACTION_getUsedTechnology:I = 0x15

.field static final TRANSACTION_isAllowedToOneToManyMessage:I = 0x19

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_reSend:I = 0xf

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_removeOneToManyEventListener:I = 0x5

.field static final TRANSACTION_removeRecipients:I = 0x7

.field static final TRANSACTION_sendOneToManyChat:I = 0x11

.field static final TRANSACTION_sendOneToManyChat2:I = 0x13

.field static final TRANSACTION_sendOneToManyFT:I = 0x12

.field static final TRANSACTION_sendOneToManyFT2:I = 0x14

.field static final TRANSACTION_setIcon:I = 0x16

.field static final TRANSACTION_setSubject:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.chat.IOneToManyService"

    .line 113
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToManyService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.chat.IOneToManyService"

    .line 124
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-eqz v1, :cond_1

    .line 126
    check-cast v0, Lcom/gsma/services/rcs/chat/IOneToManyService;

    return-object v0

    .line 128
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/chat/IOneToManyService;
    .locals 1

    .line 1062
    sget-object v0, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToManyService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/chat/IOneToManyService;)Z
    .locals 1

    .line 1052
    sget-object v0, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToManyService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1056
    sput-object p0, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IOneToManyService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1053
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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.gsma.services.rcs.chat.IOneToManyService"

    if-eq p1, v0, :cond_9

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 446
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 438
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->isAllowedToOneToManyMessage()Z

    move-result p1

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 428
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 412
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->getIcon(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {p1, p3, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 395
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 400
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/net/Uri;

    .line 405
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->setIcon(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 385
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->getUsedTechnology(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v1

    .line 365
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 370
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Landroid/net/Uri;

    .line 376
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    move v3, v1

    .line 379
    :cond_3
    invoke-virtual {p0, p1, v0, p4, v3}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->sendOneToManyFT2(Ljava/lang/String;Landroid/net/Uri;IZ)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 347
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->sendOneToManyChat2(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/OneToManyMessage;

    move-result-object p1

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 355
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {p1, p3, v1}, Lcom/gsma/services/rcs/chat/OneToManyMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 359
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 325
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 329
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 332
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    :cond_5
    move-object v7, v0

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v9, v1

    goto :goto_2

    :cond_6
    move v9, v3

    :goto_2
    move-object v4, p0

    .line 341
    invoke-virtual/range {v4 .. v9}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->sendOneToManyFT(Ljava/lang/String;Ljava/util/List;Landroid/net/Uri;IZ)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 305
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 309
    sget-object p4, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 312
    invoke-virtual {p0, p1, p4, p2}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->sendOneToManyChat(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/OneToManyMessage;

    move-result-object p1

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 315
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    invoke-virtual {p1, p3, v1}, Lcom/gsma/services/rcs/chat/OneToManyMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 319
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 289
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->getOneToManyMessageDetails(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/OneToManyMessage;

    move-result-object p1

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 295
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    invoke-virtual {p1, p3, v1}, Lcom/gsma/services/rcs/chat/OneToManyMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 299
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 280
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->reSend(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 271
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->deleteConversation(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 262
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->deleteMessage(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 250
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->setSubject(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 240
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->get1ToManyRecipients(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 232
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->getFTMax1ToManyRecipients()I

    move-result p1

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 224
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->getChatMax1toManyRecipients()I

    move-result p1

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 214
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->getRecipientsSize(Ljava/lang/String;)I

    move-result p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 202
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 206
    sget-object p4, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->removeRecipients(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 190
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    sget-object p4, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->addRecipients(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 181
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToManyListener;

    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->removeOneToManyEventListener(Lcom/gsma/services/rcs/chat/IOneToManyListener;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 172
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/chat/IOneToManyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToManyListener;

    move-result-object p1

    .line 175
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->addOneToManyEventListener(Lcom/gsma/services/rcs/chat/IOneToManyListener;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 163
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 154
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 146
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToManyService$Stub;->isServiceRegistered()Z

    move-result p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 141
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
