.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IFileTransferServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

.field static final TRANSACTION_getImageResizeOption:I = 0xa

.field static final TRANSACTION_getIsDownloadUpToFtWarnSize:I = 0x10

.field static final TRANSACTION_getMaxAudioMessageDuration:I = 0x3

.field static final TRANSACTION_getMaxFileTransferIncomingSize:I = 0x12

.field static final TRANSACTION_getMaxFileTransfers:I = 0x9

.field static final TRANSACTION_getMaxSize:I = 0x2

.field static final TRANSACTION_getWarnSize:I = 0x1

.field static final TRANSACTION_isAutoAcceptEnabled:I = 0x4

.field static final TRANSACTION_isAutoAcceptInRoamingEnabled:I = 0x6

.field static final TRANSACTION_isAutoAcceptModeChangeable:I = 0x8

.field static final TRANSACTION_isFtHttpFallbackBySMS:I = 0x11

.field static final TRANSACTION_isGroupFileTransferSupported:I = 0xc

.field static final TRANSACTION_setAutoAccept:I = 0x5

.field static final TRANSACTION_setAutoAcceptInRoaming:I = 0x7

.field static final TRANSACTION_setFtAutoDeleteStorageLimitation:I = 0xe

.field static final TRANSACTION_setImageResizeOption:I = 0xb

.field static final TRANSACTION_setIsDownloadUpToFtWarnSize:I = 0xf

.field static final TRANSACTION_setWarningFileTransferSize:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    .line 109
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    .line 120
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_1

    .line 122
    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    return-object v0

    .line 124
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    .locals 1

    .line 717
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;)Z
    .locals 1

    .line 707
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 711
    sput-object p0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 708
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

    const-string v2, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 284
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxFileTransferIncomingSize()J

    move-result-wide p1

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 276
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isFtHttpFallbackBySMS()Z

    move-result p1

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 268
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getIsDownloadUpToFtWarnSize()Z

    move-result p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 259
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 262
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setIsDownloadUpToFtWarnSize(Z)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 250
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setFtAutoDeleteStorageLimitation(J)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 241
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setWarningFileTransferSize(J)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 233
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isGroupFileTransferSupported()Z

    move-result p1

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 224
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setImageResizeOption(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 216
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getImageResizeOption()I

    move-result p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 208
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxFileTransfers()I

    move-result p1

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 200
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptModeChangeable()Z

    move-result p1

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 191
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 194
    :cond_1
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setAutoAcceptInRoaming(Z)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 183
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptInRoamingEnabled()Z

    move-result p1

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 174
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 177
    :cond_2
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setAutoAccept(Z)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 166
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptEnabled()Z

    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 158
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxAudioMessageDuration()J

    move-result-wide p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 150
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxSize()J

    move-result-wide p1

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 142
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getWarnSize()J

    move-result-wide p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 137
    :cond_3
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
