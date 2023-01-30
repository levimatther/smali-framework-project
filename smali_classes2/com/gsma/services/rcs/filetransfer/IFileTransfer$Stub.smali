.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;
.super Landroid/os/Binder;
.source "IFileTransfer.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.filetransfer.IFileTransfer"

.field static final TRANSACTION_abortTransfer:I = 0x13

.field static final TRANSACTION_acceptInvitation:I = 0x11

.field static final TRANSACTION_getChatId:I = 0x1

.field static final TRANSACTION_getDirection:I = 0xc

.field static final TRANSACTION_getDisposition:I = 0x1e

.field static final TRANSACTION_getFile:I = 0x9

.field static final TRANSACTION_getFileExpiration:I = 0x1b

.field static final TRANSACTION_getFileIcon:I = 0x7

.field static final TRANSACTION_getFileIconExpiration:I = 0x1c

.field static final TRANSACTION_getFileIconMimeType:I = 0x8

.field static final TRANSACTION_getFileName:I = 0x4

.field static final TRANSACTION_getFileSize:I = 0x5

.field static final TRANSACTION_getMimeType:I = 0x6

.field static final TRANSACTION_getReasonCode:I = 0xb

.field static final TRANSACTION_getRemoteContact:I = 0x3

.field static final TRANSACTION_getState:I = 0xa

.field static final TRANSACTION_getTimestamp:I = 0xd

.field static final TRANSACTION_getTimestampDelivered:I = 0xf

.field static final TRANSACTION_getTimestampDisplayed:I = 0x10

.field static final TRANSACTION_getTimestampSent:I = 0xe

.field static final TRANSACTION_getTransferId:I = 0x2

.field static final TRANSACTION_isAllowedToPauseTransfer:I = 0x19

.field static final TRANSACTION_isAllowedToResendTransfer:I = 0x17

.field static final TRANSACTION_isAllowedToResumeTransfer:I = 0x1a

.field static final TRANSACTION_isExpiredDelivery:I = 0x1d

.field static final TRANSACTION_isRead:I = 0x16

.field static final TRANSACTION_pauseTransfer:I = 0x14

.field static final TRANSACTION_rejectInvitation:I = 0x12

.field static final TRANSACTION_resendTransfer:I = 0x18

.field static final TRANSACTION_resumeTransfer:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransfer"

    .line 139
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransfer"

    .line 150
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    if-eqz v1, :cond_1

    .line 152
    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    return-object v0

    .line 154
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 1

    .line 1092
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/filetransfer/IFileTransfer;)Z
    .locals 1

    .line 1082
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1086
    sput-object p0, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1083
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

    const-string v2, "com.gsma.services.rcs.filetransfer.IFileTransfer"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 424
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 416
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getDisposition()I

    move-result p1

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 408
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isExpiredDelivery()Z

    move-result p1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 400
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileIconExpiration()J

    move-result-wide p1

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 392
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileExpiration()J

    move-result-wide p1

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 384
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isAllowedToResumeTransfer()Z

    move-result p1

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 376
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isAllowedToPauseTransfer()Z

    move-result p1

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 369
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->resendTransfer()V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 361
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isAllowedToResendTransfer()Z

    move-result p1

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 353
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isRead()Z

    move-result p1

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 346
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->resumeTransfer()V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 339
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->pauseTransfer()V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 332
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->abortTransfer()V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 325
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->rejectInvitation()V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 318
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->acceptInvitation()V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 310
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestampDisplayed()J

    move-result-wide p1

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 302
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestampDelivered()J

    move-result-wide p1

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 294
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestampSent()J

    move-result-wide p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 286
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestamp()J

    move-result-wide p1

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 278
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getDirection()I

    move-result p1

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 270
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getReasonCode()I

    move-result p1

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 262
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getState()I

    move-result p1

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 248
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFile()Landroid/net/Uri;

    move-result-object p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    invoke-virtual {p1, p3, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 240
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileIconMimeType()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 226
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileIcon()Landroid/net/Uri;

    move-result-object p1

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    invoke-virtual {p1, p3, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 218
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getMimeType()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 210
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileSize()J

    move-result-wide p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 202
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 188
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 192
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {p1, p3, v1}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 196
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 180
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTransferId()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 172
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getChatId()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 167
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
