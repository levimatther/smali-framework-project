.class public abstract Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IChatServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.chat.IChatServiceConfiguration"

.field static final TRANSACTION_getGeolocExpirationTime:I = 0x2

.field static final TRANSACTION_getGeolocLabelMaxLength:I = 0x3

.field static final TRANSACTION_getGroupChatIconMaxSize:I = 0x18

.field static final TRANSACTION_getGroupChatMaxParticipants:I = 0x4

.field static final TRANSACTION_getGroupChatMessageMaxLength:I = 0x5

.field static final TRANSACTION_getGroupChatMinParticipants:I = 0x6

.field static final TRANSACTION_getGroupChatSubjectMaxLength:I = 0x7

.field static final TRANSACTION_getIsComposingActiveStateRefreshTimeout:I = 0x12

.field static final TRANSACTION_getIsComposingTimeout:I = 0x1

.field static final TRANSACTION_getMaxStandaloneSize:I = 0x15

.field static final TRANSACTION_getOneToOneChatMessageMaxLength:I = 0x8

.field static final TRANSACTION_getOpenGroupChatMaxParticipants:I = 0x17

.field static final TRANSACTION_isChatAutoAccepted:I = 0x10

.field static final TRANSACTION_isChatWarnSF:I = 0x9

.field static final TRANSACTION_isGroupChatAutoAccepted:I = 0x11

.field static final TRANSACTION_isGroupChatSupported:I = 0xa

.field static final TRANSACTION_isRequestDisplayReportsEnabled:I = 0xe

.field static final TRANSACTION_isRespondToDisplayReportsEnabled:I = 0xb

.field static final TRANSACTION_isSmsFallback:I = 0xc

.field static final TRANSACTION_setIsComposingActiveStateRefreshTimeout:I = 0x14

.field static final TRANSACTION_setIsComposingTimeout:I = 0x13

.field static final TRANSACTION_setIsTypingEnable:I = 0x16

.field static final TRANSACTION_setMaxMMSSize:I = 0x19

.field static final TRANSACTION_setRequestDisplayReports:I = 0xf

.field static final TRANSACTION_setRespondToDisplayReports:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    .line 133
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    .line 144
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v1, :cond_1

    .line 146
    check-cast v0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    return-object v0

    .line 148
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    .locals 1

    .line 940
    sget-object v0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;)Z
    .locals 1

    .line 930
    sget-object v0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 934
    sput-object p0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 931
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

    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 372
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 363
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->setMaxMMSSize(J)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 355
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatIconMaxSize()I

    move-result p1

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 347
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getOpenGroupChatMaxParticipants()I

    move-result p1

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 338
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 341
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->setIsTypingEnable(Z)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 330
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getMaxStandaloneSize()J

    move-result-wide p1

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 321
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->setIsComposingActiveStateRefreshTimeout(J)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 312
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->setIsComposingTimeout(J)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 304
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getIsComposingActiveStateRefreshTimeout()J

    move-result-wide p1

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 296
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isGroupChatAutoAccepted()Z

    move-result p1

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 288
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isChatAutoAccepted()Z

    move-result p1

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 279
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 282
    :cond_1
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->setRequestDisplayReports(Z)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 271
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isRequestDisplayReportsEnabled()Z

    move-result p1

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 262
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 265
    :cond_2
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->setRespondToDisplayReports(Z)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 254
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isSmsFallback()Z

    move-result p1

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 246
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isRespondToDisplayReportsEnabled()Z

    move-result p1

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 238
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isGroupChatSupported()Z

    move-result p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 230
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isChatWarnSF()Z

    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 222
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getOneToOneChatMessageMaxLength()I

    move-result p1

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 214
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatSubjectMaxLength()I

    move-result p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 206
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMinParticipants()I

    move-result p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 198
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMessageMaxLength()I

    move-result p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 190
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMaxParticipants()I

    move-result p1

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 182
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGeolocLabelMaxLength()I

    move-result p1

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 174
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGeolocExpirationTime()J

    move-result-wide p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 166
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getIsComposingTimeout()J

    move-result-wide p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 161
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
