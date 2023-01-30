.class public abstract Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "ICommonServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/ICommonServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/ICommonServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.ICommonServiceConfiguration"

.field static final TRANSACTION_getBuildVersion:I = 0x1c

.field static final TRANSACTION_getDefaultDiallerMethod:I = 0x2

.field static final TRANSACTION_getDefaultMessagingMethod:I = 0x1

.field static final TRANSACTION_getEnableRcseSwitch:I = 0xc

.field static final TRANSACTION_getMessagingUX:I = 0x3

.field static final TRANSACTION_getMinimumBatteryLevel:I = 0xa

.field static final TRANSACTION_getMyContactId:I = 0x4

.field static final TRANSACTION_getMyDisplayName:I = 0x5

.field static final TRANSACTION_getRcsVersion:I = 0x1a

.field static final TRANSACTION_getSpamNotificationText:I = 0x2d

.field static final TRANSACTION_getThrottlingValue:I = 0x17

.field static final TRANSACTION_getTokenLinkNotificationText:I = 0x2e

.field static final TRANSACTION_getUPVersion:I = 0x1b

.field static final TRANSACTION_getUnavailableEndpointText:I = 0x2c

.field static final TRANSACTION_getUserMessageContent:I = 0xe

.field static final TRANSACTION_getUserMessageTitle:I = 0xf

.field static final TRANSACTION_getVideoAndEncallUx:I = 0x28

.field static final TRANSACTION_isBlockChatEnable:I = 0x21

.field static final TRANSACTION_isBlockFiletransferEnable:I = 0x26

.field static final TRANSACTION_isBlockOneToManyEnable:I = 0x24

.field static final TRANSACTION_isBlockStandaloneEnable:I = 0x1f

.field static final TRANSACTION_isCallComposerSupported:I = 0x2f

.field static final TRANSACTION_isChatSupported:I = 0x23

.field static final TRANSACTION_isConfigValid:I = 0x6

.field static final TRANSACTION_isDisplayMsgTech:I = 0x2a

.field static final TRANSACTION_isDisplayNotificationSwitchEnable:I = 0x29

.field static final TRANSACTION_isIR94VideoAUTH:I = 0x1e

.field static final TRANSACTION_isPrivacyDisable:I = 0x2b

.field static final TRANSACTION_isSupportAggreationIMDN:I = 0x15

.field static final TRANSACTION_isSupportChatbot:I = 0x12

.field static final TRANSACTION_isSupportFToHTTP:I = 0x16

.field static final TRANSACTION_isSupportGeolocationByFT:I = 0x14

.field static final TRANSACTION_isSupportOGC:I = 0x13

.field static final TRANSACTION_isSupportOneToMany:I = 0x19

.field static final TRANSACTION_isSupportUP:I = 0x18

.field static final TRANSACTION_isSupportUserAlias:I = 0x1d

.field static final TRANSACTION_isUserMessageAcceptButton:I = 0x10

.field static final TRANSACTION_isUserMessageRejectButton:I = 0x11

.field static final TRANSACTION_setBlockChatEnable:I = 0x22

.field static final TRANSACTION_setBlockFiletransferEnable:I = 0x27

.field static final TRANSACTION_setBlockOneToManyEnable:I = 0x25

.field static final TRANSACTION_setBlockStandaloneEnable:I = 0x20

.field static final TRANSACTION_setDefaultDiallerMethod:I = 0x8

.field static final TRANSACTION_setDefaultMessagingMethod:I = 0x7

.field static final TRANSACTION_setMinimumBatteryLevel:I = 0xb

.field static final TRANSACTION_setMyDisplayName:I = 0x9

.field static final TRANSACTION_showUserMessage:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 244
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.ICommonServiceConfiguration"

    .line 245
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/ICommonServiceConfiguration;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.ICommonServiceConfiguration"

    .line 256
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    instance-of v1, v0, Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    if-eqz v1, :cond_1

    .line 258
    check-cast v0, Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    return-object v0

    .line 260
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/ICommonServiceConfiguration;
    .locals 1

    .line 1725
    sget-object v0, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/ICommonServiceConfiguration;)Z
    .locals 1

    .line 1715
    sget-object v0, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1719
    sput-object p0, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1716
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

    const-string v2, "com.gsma.services.rcs.ICommonServiceConfiguration"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 667
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 659
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isCallComposerSupported()Z

    move-result p1

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 651
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getTokenLinkNotificationText()Ljava/lang/String;

    move-result-object p1

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 643
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getSpamNotificationText()Ljava/lang/String;

    move-result-object p1

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 635
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getUnavailableEndpointText()Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 627
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isPrivacyDisable()Z

    move-result p1

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 619
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isDisplayMsgTech()Z

    move-result p1

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 611
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isDisplayNotificationSwitchEnable()Z

    move-result p1

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 603
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getVideoAndEncallUx()I

    move-result p1

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 594
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 597
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->setBlockFiletransferEnable(Z)V

    .line 598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 586
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isBlockFiletransferEnable()Z

    move-result p1

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 577
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 580
    :cond_1
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->setBlockOneToManyEnable(Z)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 569
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isBlockOneToManyEnable()Z

    move-result p1

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 561
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isChatSupported()Z

    move-result p1

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 552
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 555
    :cond_2
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->setBlockChatEnable(Z)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 544
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isBlockChatEnable()Z

    move-result p1

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 535
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 538
    :cond_3
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->setBlockStandaloneEnable(Z)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 527
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isBlockStandaloneEnable()Z

    move-result p1

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 519
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isIR94VideoAUTH()I

    move-result p1

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 511
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isSupportUserAlias()Z

    move-result p1

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 503
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getBuildVersion()Ljava/lang/String;

    move-result-object p1

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 495
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getUPVersion()Ljava/lang/String;

    move-result-object p1

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 487
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getRcsVersion()Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 479
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isSupportOneToMany()Z

    move-result p1

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 471
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isSupportUP()Z

    move-result p1

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 463
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getThrottlingValue()J

    move-result-wide p1

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 455
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isSupportFToHTTP()Z

    move-result p1

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 447
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isSupportAggreationIMDN()Z

    move-result p1

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 439
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isSupportGeolocationByFT()Z

    move-result p1

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 431
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isSupportOGC()Z

    move-result p1

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 423
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isSupportChatbot()Z

    move-result p1

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 415
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isUserMessageRejectButton()Z

    move-result p1

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 407
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isUserMessageAcceptButton()Z

    move-result p1

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 399
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getUserMessageTitle()Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 391
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getUserMessageContent()Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 384
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->showUserMessage()V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 376
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getEnableRcseSwitch()I

    move-result p1

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 367
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 370
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->setMinimumBatteryLevel(I)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 359
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getMinimumBatteryLevel()I

    move-result p1

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 350
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->setMyDisplayName(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 341
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 344
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->setDefaultDiallerMethod(I)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 332
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 335
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->setDefaultMessagingMethod(I)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 324
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->isConfigValid()Z

    move-result p1

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 316
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getMyDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 302
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getMyContactId()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object p1

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 306
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    invoke-virtual {p1, p3, v1}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 310
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 294
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getMessagingUX()I

    move-result p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 286
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getDefaultDiallerMethod()I

    move-result p1

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 278
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/gsma/services/rcs/ICommonServiceConfiguration$Stub;->getDefaultMessagingMethod()I

    move-result p1

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 273
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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
