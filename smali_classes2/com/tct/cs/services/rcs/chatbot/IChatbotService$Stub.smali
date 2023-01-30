.class public abstract Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;
.super Landroid/os/Binder;
.source "IChatbotService.java"

# interfaces
.implements Lcom/tct/cs/services/rcs/chatbot/IChatbotService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/IChatbotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tct.cs.services.rcs.chatbot.IChatbotService"

.field static final TRANSACTION_addBotInfo:I = 0x2c

.field static final TRANSACTION_addEventListener:I = 0x3

.field static final TRANSACTION_addEventListener2:I = 0x1a

.field static final TRANSACTION_deleteChatbot:I = 0x2d

.field static final TRANSACTION_deleteChatbot2:I = 0x2f

.field static final TRANSACTION_deleteChatbotMessage:I = 0x1f

.field static final TRANSACTION_deleteChatbotMessages:I = 0x1e

.field static final TRANSACTION_downloadPreloadBots:I = 0x31

.field static final TRANSACTION_enableAnonymous:I = 0xa

.field static final TRANSACTION_getAllCriticalChatbots:I = 0x29

.field static final TRANSACTION_getAllSpams:I = 0xd

.field static final TRANSACTION_getChatbotMessage:I = 0x18

.field static final TRANSACTION_getMaxFileTransferSize:I = 0x14

.field static final TRANSACTION_getServiceRegistrationReasonCode:I = 0x2

.field static final TRANSACTION_getServiceVersion:I = 0x5

.field static final TRANSACTION_getSupportedChatbotVersion:I = 0x19

.field static final TRANSACTION_isAllowToSendFileTransfer:I = 0x13

.field static final TRANSACTION_isAllowToSendGeoloc:I = 0x10

.field static final TRANSACTION_isAllowToSendTextMessage:I = 0xf

.field static final TRANSACTION_isAnonymousOn:I = 0x9

.field static final TRANSACTION_isAvailable:I = 0x20

.field static final TRANSACTION_isChatbotDirectoryAvailable:I = 0x6

.field static final TRANSACTION_isChatbotInfoExisted:I = 0x2e

.field static final TRANSACTION_isCriticalChatbot:I = 0x28

.field static final TRANSACTION_isEnrichedChatbotSearch:I = 0x2b

.field static final TRANSACTION_isSMSAvailable:I = 0x30

.field static final TRANSACTION_isSendDisplayReportEnable:I = 0x23

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_isShareLocation:I = 0x22

.field static final TRANSACTION_isSpam:I = 0xb

.field static final TRANSACTION_markAsRead:I = 0x1c

.field static final TRANSACTION_markConversationAsRead:I = 0x1d

.field static final TRANSACTION_removeEventListener:I = 0x4

.field static final TRANSACTION_removeEventListener2:I = 0x1b

.field static final TRANSACTION_reportSpam:I = 0xc

.field static final TRANSACTION_resendMessage:I = 0x27

.field static final TRANSACTION_resetAnonymousToken:I = 0x26

.field static final TRANSACTION_responseAction:I = 0x16

.field static final TRANSACTION_retrieveBotInfo:I = 0x8

.field static final TRANSACTION_retrieveRealTimebotInfo:I = 0x33

.field static final TRANSACTION_searchBots:I = 0x7

.field static final TRANSACTION_sendAnonymousLink:I = 0x25

.field static final TRANSACTION_sendGeoloc:I = 0x12

.field static final TRANSACTION_sendHi:I = 0x32

.field static final TRANSACTION_sendText:I = 0x11

.field static final TRANSACTION_setComposing:I = 0xe

.field static final TRANSACTION_setEnrichedChatbotSearch:I = 0x2a

.field static final TRANSACTION_setSendDisplayReportEnable:I = 0x24

.field static final TRANSACTION_setShareLocation:I = 0x21

.field static final TRANSACTION_sharedDeviceData:I = 0x17

.field static final TRANSACTION_transferFile:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 242
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 243
    invoke-virtual {p0, p0, v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tct/cs/services/rcs/chatbot/IChatbotService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 254
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    instance-of v1, v0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-eqz v1, :cond_1

    .line 256
    check-cast v0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    return-object v0

    .line 258
    :cond_1
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;
    .locals 1

    .line 2338
    sget-object v0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->sDefaultImpl:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/tct/cs/services/rcs/chatbot/IChatbotService;)Z
    .locals 1

    .line 2328
    sget-object v0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->sDefaultImpl:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2332
    sput-object p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->sDefaultImpl:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2329
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

    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 965
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 944
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 947
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 952
    :cond_0
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->retrieveRealTimebotInfo(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/BotInfo;

    move-result-object p1

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 955
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    invoke-virtual {p1, p3, v1}, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 959
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 923
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 926
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 931
    :cond_2
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->sendHi(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 934
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    invoke-virtual {p1, p3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 938
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 915
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->downloadPreloadBots()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object p1

    .line 917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 918
    invoke-interface {p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 900
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 903
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 908
    :cond_5
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isSMSAvailable(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 890
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 893
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->deleteChatbot2(Ljava/util/List;)I

    move-result p1

    .line 894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 875
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 878
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 883
    :cond_6
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isChatbotInfoExisted(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 860
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 863
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 868
    :cond_7
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->deleteChatbot(Lcom/tct/cs/services/rcs/chatbot/BotId;)I

    move-result p1

    .line 869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 846
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 849
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotInfo;

    .line 854
    :cond_8
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->addBotInfo(Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 838
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isEnrichedChatbotSearch()Z

    move-result p1

    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 829
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    move v0, v1

    .line 832
    :cond_9
    invoke-virtual {p0, v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->setEnrichedChatbotSearch(Z)V

    .line 833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 821
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getAllCriticalChatbots()Ljava/util/List;

    move-result-object p1

    .line 823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 806
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 809
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 814
    :cond_a
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isCriticalChatbot(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1

    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 797
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 800
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->resendMessage(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 783
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 786
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 791
    :cond_b
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->resetAnonymousToken(Lcom/tct/cs/services/rcs/chatbot/BotId;)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 769
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 772
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 777
    :cond_c
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->sendAnonymousLink(Lcom/tct/cs/services/rcs/chatbot/BotId;)V

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 753
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    .line 756
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 762
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    move v0, v1

    .line 763
    :cond_e
    invoke-virtual {p0, v3, v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->setSendDisplayReportEnable(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 738
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    .line 741
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 746
    :cond_f
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isSendDisplayReportEnable(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 723
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 726
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 731
    :cond_10
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isShareLocation(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 707
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    .line 710
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 716
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12

    move v0, v1

    .line 717
    :cond_12
    invoke-virtual {p0, v3, v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->setShareLocation(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 699
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isAvailable()Z

    move-result p1

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 690
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->deleteChatbotMessage(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 676
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13

    .line 679
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 684
    :cond_13
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->deleteChatbotMessages(Lcom/tct/cs/services/rcs/chatbot/BotId;)V

    .line 685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 667
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 670
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->markConversationAsRead(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 658
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->markAsRead(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 649
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object p1

    .line 652
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->removeEventListener2(Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;)V

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 640
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;

    move-result-object p1

    .line 643
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->addEventListener2(Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 632
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getSupportedChatbotVersion()[I

    move-result-object p1

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 616
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getChatbotMessage(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_14

    .line 622
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    invoke-virtual {p1, p3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 626
    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 595
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_15

    .line 598
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 603
    :cond_15
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->sharedDeviceData(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_16

    .line 606
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    invoke-virtual {p1, p3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 610
    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 572
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    .line 575
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/BotId;

    goto :goto_4

    :cond_17
    move-object p1, v3

    .line 581
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 584
    sget-object v0, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;

    .line 589
    :cond_18
    invoke-virtual {p0, p1, p4, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->responseAction(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Lcom/tct/cs/services/rcs/chatbot/message/action/Action;)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 544
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_19

    .line 547
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/BotId;

    goto :goto_5

    :cond_19
    move-object p1, v3

    .line 553
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1a

    .line 554
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/net/Uri;

    .line 559
    :cond_1a
    invoke-virtual {p0, p1, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->transferFile(Lcom/tct/cs/services/rcs/chatbot/BotId;Landroid/net/Uri;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1b

    .line 562
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    invoke-virtual {p1, p3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 566
    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 536
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getMaxFileTransferSize()J

    move-result-wide p1

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 521
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1c

    .line 524
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 529
    :cond_1c
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isAllowToSendFileTransfer(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 493
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1d

    .line 496
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/BotId;

    goto :goto_7

    :cond_1d
    move-object p1, v3

    .line 502
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1e

    .line 503
    sget-object p4, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/gsma/services/rcs/Geoloc;

    .line 508
    :cond_1e
    invoke-virtual {p0, p1, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->sendGeoloc(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/gsma/services/rcs/Geoloc;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1f

    .line 511
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    invoke-virtual {p1, p3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 515
    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    .line 470
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_20

    .line 473
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 479
    :cond_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {p0, v3, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->sendText(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_21

    .line 483
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    invoke-virtual {p1, p3, v1}, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 487
    :cond_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 455
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22

    .line 458
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 463
    :cond_22
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isAllowToSendGeoloc(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 440
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_23

    .line 443
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 448
    :cond_23
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isAllowToSendTextMessage(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 424
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24

    .line 427
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 433
    :cond_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_25

    move v0, v1

    .line 434
    :cond_25
    invoke-virtual {p0, v3, v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->setComposing(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 416
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getAllSpams()Ljava/util/List;

    move-result-object p1

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 396
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_26

    .line 399
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 405
    :cond_26
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 410
    invoke-virtual {p0, v3, p1, p4, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->reportSpam(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 381
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_27

    .line 384
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 389
    :cond_27
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isSpam(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 365
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_28

    .line 368
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 374
    :cond_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_29

    move v0, v1

    .line 375
    :cond_29
    invoke-virtual {p0, v3, v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->enableAnonymous(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 350
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2a

    .line 353
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 358
    :cond_2a
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isAnonymousOn(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 336
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2b

    .line 339
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/tct/cs/services/rcs/chatbot/BotId;

    .line 344
    :cond_2b
    invoke-virtual {p0, v3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->retrieveBotInfo(Lcom/tct/cs/services/rcs/chatbot/BotId;)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 326
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->searchBots(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object p1

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2c

    .line 331
    invoke-interface {p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_2c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 318
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isChatbotDirectoryAvailable()Z

    move-result p1

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 310
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getServiceVersion()I

    move-result p1

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 301
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 292
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object p1

    .line 295
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 284
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getServiceRegistrationReasonCode()I

    move-result p1

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 276
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->isServiceRegistered()Z

    move-result p1

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 271
    :cond_2d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
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
