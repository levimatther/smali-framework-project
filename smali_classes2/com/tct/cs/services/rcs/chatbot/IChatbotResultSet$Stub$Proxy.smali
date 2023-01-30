.class Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;
.super Ljava/lang/Object;
.source "IChatbotResultSet.java"

# interfaces
.implements Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getBots()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/Bot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotResultSet"

    .line 119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;->getBots()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 124
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 125
    sget-object v2, Lcom/tct/cs/services/rcs/chatbot/Bot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.tct.cs.services.rcs.chatbot.IChatbotResultSet"

    return-object v0
.end method

.method public getMore()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tct/cs/services/rcs/chatbot/Bot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotResultSet"

    .line 159
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 162
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;->getMore()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 164
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 165
    sget-object v2, Lcom/tct/cs/services/rcs/chatbot/Bot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isMore()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.tct.cs.services.rcs.chatbot.IChatbotResultSet"

    .line 139
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    invoke-static {}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    move-result-object v2

    invoke-interface {v2}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;->isMore()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 144
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 148
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
