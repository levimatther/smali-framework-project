.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;
.super Landroid/os/Binder;
.source "IFileTransferService.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransferService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.filetransfer.IFileTransferService"

.field static final TRANSACTION_addEventListener:I = 0x3

.field static final TRANSACTION_addEventListener2:I = 0xa

.field static final TRANSACTION_addEventListener3:I = 0xc

.field static final TRANSACTION_clearFileTransferDeliveryExpiration:I = 0x16

.field static final TRANSACTION_deleteFileTransfer:I = 0x15

.field static final TRANSACTION_deleteGroupFileTransfers:I = 0x12

.field static final TRANSACTION_deleteGroupFileTransfers2:I = 0x14

.field static final TRANSACTION_deleteOneToOneFileTransfers:I = 0x11

.field static final TRANSACTION_deleteOneToOneFileTransfers2:I = 0x13

.field static final TRANSACTION_downloadFileSmsFallBack:I = 0x23

.field static final TRANSACTION_getCommonConfiguration:I = 0x17

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getFileTransfer:I = 0x6

.field static final TRANSACTION_getFileTransferMode:I = 0x21

.field static final TRANSACTION_getFtFallbackSMSCoverNote:I = 0x22

.field static final TRANSACTION_getGroupFileTransferMaxSize:I = 0x20

.field static final TRANSACTION_getOneToOneFileTransferMaxSize:I = 0x1f

.field static final TRANSACTION_getServiceRegistrationReasonCode:I = 0x2

.field static final TRANSACTION_getServiceVersion:I = 0xe

.field static final TRANSACTION_isAllowedToRealTimeHttpTransferFile:I = 0x24

.field static final TRANSACTION_isAllowedToTransferFile:I = 0xf

.field static final TRANSACTION_isAllowedToTransferFileToGroupChat:I = 0x10

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_isSupportUP:I = 0x25

.field static final TRANSACTION_isSupportUP2:I = 0x26

.field static final TRANSACTION_markFileTransferAsRead:I = 0x9

.field static final TRANSACTION_removeEventListener:I = 0x4

.field static final TRANSACTION_removeEventListener2:I = 0xb

.field static final TRANSACTION_removeEventListener3:I = 0xd

.field static final TRANSACTION_setFileTransferStateAndReasonCode:I = 0x1a

.field static final TRANSACTION_transferFile:I = 0x7

.field static final TRANSACTION_transferFile2:I = 0x18

.field static final TRANSACTION_transferFile3:I = 0x1e

.field static final TRANSACTION_transferFileToGroupChat:I = 0x8

.field static final TRANSACTION_transferFileToGroupChat2:I = 0x19

.field static final TRANSACTION_transferGeoloc:I = 0x1b

.field static final TRANSACTION_transferGeoloc2:I = 0x1d

.field static final TRANSACTION_transferGroupGeoloc:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    .line 183
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransferService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    .line 194
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v1, :cond_1

    .line 196
    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    return-object v0

    .line 198
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/filetransfer/IFileTransferService;
    .locals 1

    .line 1696
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/filetransfer/IFileTransferService;)Z
    .locals 1

    .line 1686
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1690
    sput-object p0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1687
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

    const-string v2, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    if-eq p1, v0, :cond_23

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 705
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 695
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 698
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isSupportUP2(Ljava/lang/String;)Z

    move-result p1

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 680
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 683
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 688
    :cond_0
    invoke-virtual {p0, v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isSupportUP(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result p1

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 665
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 668
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 673
    :cond_1
    invoke-virtual {p0, v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isAllowedToRealTimeHttpTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)I

    move-result p1

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 646
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 649
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 655
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 658
    invoke-virtual {p0, v3, p1, v4, v5}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->downloadFileSmsFallBack(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;J)Z

    move-result p1

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 638
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getFtFallbackSMSCoverNote()Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 628
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 631
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getFileTransferMode(Ljava/util/List;)I

    move-result p1

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 618
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 621
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getGroupFileTransferMaxSize(Ljava/util/List;)J

    move-result-wide p1

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 603
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 606
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 611
    :cond_3
    invoke-virtual {p0, v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getOneToOneFileTransferMaxSize(Lcom/gsma/services/rcs/contact/ContactId;)J

    move-result-wide p1

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 575
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 580
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    move-object v6, p1

    goto :goto_0

    :cond_4
    move-object v6, v3

    .line 586
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 587
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    move-object v7, p1

    goto :goto_1

    :cond_5
    move-object v7, v3

    .line 593
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v9, v1

    goto :goto_2

    :cond_6
    move v9, v0

    :goto_2
    move-object v4, p0

    .line 596
    invoke-virtual/range {v4 .. v9}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFile3(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;IZ)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 598
    invoke-interface {p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 551
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8

    .line 556
    sget-object p4, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_3

    :cond_8
    move-object p4, v3

    .line 562
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 563
    sget-object v0, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gsma/services/rcs/Geoloc;

    goto :goto_4

    :cond_9
    move-object p2, v3

    .line 568
    :goto_4
    invoke-virtual {p0, p1, p4, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferGeoloc2(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_a

    .line 570
    invoke-interface {p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 534
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    .line 539
    sget-object p4, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gsma/services/rcs/Geoloc;

    goto :goto_5

    :cond_b
    move-object p2, v3

    .line 544
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferGroupGeoloc(Ljava/lang/String;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    .line 545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    .line 546
    invoke-interface {p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 512
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    .line 515
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_6

    :cond_d
    move-object p1, v3

    .line 521
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_e

    .line 522
    sget-object p4, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gsma/services/rcs/Geoloc;

    goto :goto_7

    :cond_e
    move-object p2, v3

    .line 527
    :goto_7
    invoke-virtual {p0, p1, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 529
    invoke-interface {p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 499
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 506
    invoke-virtual {p0, p1, p4, p2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->setFileTransferStateAndReasonCode(Ljava/lang/String;II)V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 478
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_10

    .line 483
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    goto :goto_8

    :cond_10
    move-object p4, v3

    .line 489
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_11

    move v0, v1

    .line 492
    :cond_11
    invoke-virtual {p0, p1, p4, v2, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFileToGroupChat2(Ljava/lang/String;Landroid/net/Uri;IZ)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_12

    .line 494
    invoke-interface {p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 452
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13

    .line 455
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_9

    :cond_13
    move-object p1, v3

    .line 461
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_14

    .line 462
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    goto :goto_a

    :cond_14
    move-object p4, v3

    .line 468
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_15

    move v0, v1

    .line 471
    :cond_15
    invoke-virtual {p0, p1, p4, v2, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFile2(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;IZ)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_16

    .line 473
    invoke-interface {p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_16
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 444
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getCommonConfiguration()Lcom/gsma/services/rcs/ICommonServiceConfiguration;

    move-result-object p1

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_17

    .line 447
    invoke-interface {p1}, Lcom/gsma/services/rcs/ICommonServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_17
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 435
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 438
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->clearFileTransferDeliveryExpiration(Ljava/util/List;)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 426
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteFileTransfer(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 417
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteGroupFileTransfers2(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 403
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    .line 406
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 411
    :cond_18
    invoke-virtual {p0, v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteOneToOneFileTransfers2(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 396
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteGroupFileTransfers()V

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 389
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteOneToOneFileTransfers()V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 379
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isAllowedToTransferFileToGroupChat(Ljava/lang/String;)Z

    move-result p1

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 364
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_19

    .line 367
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/gsma/services/rcs/contact/ContactId;

    .line 372
    :cond_19
    invoke-virtual {p0, v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result p1

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 356
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getServiceVersion()I

    move-result p1

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 347
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    move-result-object p1

    .line 350
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeEventListener3(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 338
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    move-result-object p1

    .line 341
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addEventListener3(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 329
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    move-result-object p1

    .line 332
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeEventListener2(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 320
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    move-result-object p1

    .line 323
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addEventListener2(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 311
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->markFileTransferAsRead(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 292
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1a

    .line 297
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    goto :goto_b

    :cond_1a
    move-object p4, v3

    .line 303
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1b

    move v0, v1

    .line 304
    :cond_1b
    invoke-virtual {p0, p1, p4, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1c

    .line 306
    invoke-interface {p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_1c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 268
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1d

    .line 271
    sget-object p1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_c

    :cond_1d
    move-object p1, v3

    .line 277
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1e

    .line 278
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    goto :goto_d

    :cond_1e
    move-object p4, v3

    .line 284
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1f

    move v0, v1

    .line 285
    :cond_1f
    invoke-virtual {p0, p1, p4, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_20

    .line 287
    invoke-interface {p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_20
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 258
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object p1

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_21

    .line 263
    invoke-interface {p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_21
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 250
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getConfiguration()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    move-result-object p1

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_22

    .line 253
    invoke-interface {p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_22
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 241
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 232
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 224
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getServiceRegistrationReasonCode()I

    move-result p1

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 216
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isServiceRegistered()Z

    move-result p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 211
    :cond_23
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
