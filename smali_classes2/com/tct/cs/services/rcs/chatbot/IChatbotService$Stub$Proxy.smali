.class Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IChatbotService.java"

# interfaces
.implements Lcom/tct/cs/services/rcs/chatbot/IChatbotService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/tct/cs/services/rcs/chatbot/IChatbotService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addBotInfo(Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2065
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2067
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2068
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2071
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2073
    :goto_0
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2074
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2075
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->addBotInfo(Lcom/tct/cs/services/rcs/chatbot/BotInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2078
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1029
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1030
    invoke-interface {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1031
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1032
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1033
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1036
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public addEventListener2(Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1647
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1648
    invoke-interface {p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1649
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1650
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1651
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->addEventListener2(Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1654
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteChatbot(Lcom/tct/cs/services/rcs/chatbot/BotId;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2091
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2093
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2097
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2099
    :goto_0
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2100
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2101
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->deleteChatbot(Lcom/tct/cs/services/rcs/chatbot/BotId;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2103
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2104
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public deleteChatbot2(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2145
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2147
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2148
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2149
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->deleteChatbot2(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2151
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2152
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public deleteChatbotMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1748
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1750
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1751
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1752
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->deleteChatbotMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1755
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public deleteChatbotMessages(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1723
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1725
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1729
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    :goto_0
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1732
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1733
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->deleteChatbotMessages(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1736
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public downloadPreloadBots()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2193
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2194
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2195
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2196
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->downloadPreloadBots()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2198
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2199
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public enableAnonymous(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1187
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1189
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1193
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1195
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1197
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1198
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->enableAnonymous(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1201
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getAllCriticalChatbots()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2002
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2003
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2004
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2005
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getAllCriticalChatbots()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2007
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2008
    sget-object v2, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAllSpams()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1273
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1274
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1275
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1276
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getAllSpams()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1278
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1279
    sget-object v2, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getChatbotMessage(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1600
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1602
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1603
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1604
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getChatbotMessage(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1606
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1607
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1608
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1615
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    return-object v0
.end method

.method public getMaxFileTransferSize()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1474
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1475
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1476
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1477
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getMaxFileTransferSize()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    .line 1479
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1480
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :catchall_0
    move-exception v2

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getServiceRegistrationReasonCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1010
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1011
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1012
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1013
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getServiceRegistrationReasonCode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1015
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1016
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getServiceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1068
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1069
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1070
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1071
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getServiceVersion()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1073
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1074
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getSupportedChatbotVersion()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1626
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1627
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1628
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1629
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->getSupportedChatbotVersion()[I

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1631
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1632
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isAllowToSendFileTransfer(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1447
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1449
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1453
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    :goto_0
    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x13

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1456
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1457
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isAllowToSendFileTransfer(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1459
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1460
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1463
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isAllowToSendGeoloc(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1348
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1350
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1354
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    :goto_0
    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x10

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1357
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1358
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isAllowToSendGeoloc(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1360
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1364
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isAllowToSendTextMessage(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1321
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1323
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1327
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    :goto_0
    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1330
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1331
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isAllowToSendTextMessage(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1333
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1334
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1337
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isAnonymousOn(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1159
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1161
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1165
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    :goto_0
    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1168
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1169
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isAnonymousOn(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1171
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1175
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isAvailable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1768
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1769
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1770
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1771
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isAvailable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1773
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1777
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isChatbotDirectoryAvailable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1090
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1091
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1092
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1093
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isChatbotDirectoryAvailable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1095
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1099
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isChatbotInfoExisted(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2118
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 2120
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2121
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2124
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    :goto_0
    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x2e

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2127
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2128
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isChatbotInfoExisted(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2130
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2131
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2134
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isCriticalChatbot(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1975
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1977
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1978
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1981
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1983
    :goto_0
    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x28

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1984
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1985
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isCriticalChatbot(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1987
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1988
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1991
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isEnrichedChatbotSearch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2044
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2045
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2046
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2047
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isEnrichedChatbotSearch()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2049
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2053
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isSMSAvailable(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2166
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 2168
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2169
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2172
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    :goto_0
    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x30

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2175
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2176
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isSMSAvailable(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2178
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2179
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2182
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 2182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isSendDisplayReportEnable(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1846
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1848
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1852
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    :goto_0
    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x23

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1855
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1856
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isSendDisplayReportEnable(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1858
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1859
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1862
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isServiceRegistered()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 990
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 991
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 992
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 993
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isServiceRegistered()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 995
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    move v3, v4

    .line 999
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception v2

    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isShareLocation(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1816
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1818
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1822
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1824
    :goto_0
    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x22

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1825
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1826
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isShareLocation(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1828
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1829
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1832
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isSpam(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1214
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1216
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1220
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    :goto_0
    iget-object v4, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1223
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1224
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->isSpam(Lcom/tct/cs/services/rcs/chatbot/BotId;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1226
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1227
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1230
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public markAsRead(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1685
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1687
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1688
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1689
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->markAsRead(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1692
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public markConversationAsRead(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1704
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1706
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1707
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1708
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->markConversationAsRead(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1711
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1048
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1049
    invoke-interface {p1}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1050
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1051
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1052
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1055
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public removeEventListener2(Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1666
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1667
    invoke-interface {p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1668
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1669
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1670
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->removeEventListener2(Lcom/tct/cs/services/rcs/chatbot/IChatbotListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1673
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public reportSpam(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1242
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1244
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1248
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1251
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1253
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1254
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1255
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->reportSpam(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1258
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public resendMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1953
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1955
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1956
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1957
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->resendMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1960
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public resetAnonymousToken(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1926
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1928
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1929
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1932
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    :goto_0
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1935
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1936
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->resetAnonymousToken(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1939
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public responseAction(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Lcom/tct/cs/services/rcs/chatbot/message/action/Action;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1532
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1534
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1538
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1540
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 1542
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    invoke-virtual {p3, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/message/action/Action;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1546
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    :goto_1
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1549
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1550
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->responseAction(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;Lcom/tct/cs/services/rcs/chatbot/message/action/Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1553
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public retrieveBotInfo(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1130
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1132
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1136
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    :goto_0
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1139
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1140
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->retrieveBotInfo(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1143
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public retrieveRealTimebotInfo(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/BotInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2245
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2247
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2248
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2251
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2253
    :goto_0
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2254
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2255
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->retrieveRealTimebotInfo(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/BotInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2257
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2258
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 2259
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/BotInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 2266
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public searchBots(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1110
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1112
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1113
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1114
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->searchBots(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1116
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1117
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendAnonymousLink(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1901
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1903
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1907
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    :goto_0
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1910
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1911
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->sendAnonymousLink(Lcom/tct/cs/services/rcs/chatbot/BotId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1914
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendGeoloc(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/gsma/services/rcs/Geoloc;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1408
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1410
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1414
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 1417
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    invoke-virtual {p2, v0, v3}, Lcom/gsma/services/rcs/Geoloc;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1421
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    :goto_1
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1424
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1425
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->sendGeoloc(Lcom/tct/cs/services/rcs/chatbot/BotId;Lcom/gsma/services/rcs/Geoloc;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1427
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1428
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1429
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 1436
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendHi(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2213
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2215
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2216
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2219
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2221
    :goto_0
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2222
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2223
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->sendHi(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2225
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2226
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 2227
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 2234
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendText(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1375
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1377
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1381
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1384
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1385
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1386
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->sendText(Lcom/tct/cs/services/rcs/chatbot/BotId;Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1388
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1389
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1390
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1397
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setComposing(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1294
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1296
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1300
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1302
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1304
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1305
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->setComposing(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1308
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setEnrichedChatbotSearch(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 2024
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2025
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2026
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2027
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2028
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->setEnrichedChatbotSearch(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2031
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setSendDisplayReportEnable(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1872
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1874
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1878
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1880
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1881
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1882
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1883
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->setSendDisplayReportEnable(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1886
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setShareLocation(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1789
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1791
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1792
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1795
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1797
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1798
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1799
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1800
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->setShareLocation(Lcom/tct/cs/services/rcs/chatbot/BotId;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1803
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sharedDeviceData(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1566
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1568
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1569
    invoke-virtual {p1, v0, v2}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1572
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    :goto_0
    iget-object v3, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1575
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1576
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->sharedDeviceData(Lcom/tct/cs/services/rcs/chatbot/BotId;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1578
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1580
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1587
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public transferFile(Lcom/tct/cs/services/rcs/chatbot/BotId;Landroid/net/Uri;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotService"

    .line 1494
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1496
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1497
    invoke-virtual {p1, v0, v3}, Lcom/tct/cs/services/rcs/chatbot/BotId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1500
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 1503
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1504
    invoke-virtual {p2, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1507
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    :goto_1
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1510
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1511
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotService;->transferFile(Lcom/tct/cs/services/rcs/chatbot/BotId;Landroid/net/Uri;)Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1513
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1514
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1515
    sget-object p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tct/cs/services/rcs/chatbot/ChatbotMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 1522
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
