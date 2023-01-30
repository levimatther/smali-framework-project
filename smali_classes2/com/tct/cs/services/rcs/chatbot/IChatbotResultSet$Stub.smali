.class public abstract Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;
.super Landroid/os/Binder;
.source "IChatbotResultSet.java"

# interfaces
.implements Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tct.cs.services.rcs.chatbot.IChatbotResultSet"

.field static final TRANSACTION_getBots:I = 0x1

.field static final TRANSACTION_getMore:I = 0x3

.field static final TRANSACTION_isMore:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tct.cs.services.rcs.chatbot.IChatbotResultSet"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.tct.cs.services.rcs.chatbot.IChatbotResultSet"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;
    .locals 1

    .line 192
    sget-object v0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;->sDefaultImpl:Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;)Z
    .locals 1

    .line 182
    sget-object v0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;->sDefaultImpl:Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 186
    sput-object p0, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub$Proxy;->sDefaultImpl:Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 183
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

    const/4 v0, 0x1

    const-string v1, "com.tct.cs.services.rcs.chatbot.IChatbotResultSet"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 86
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->getMore()Ljava/util/List;

    move-result-object p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 78
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->isMore()Z

    move-result p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 70
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/tct/cs/services/rcs/chatbot/IChatbotResultSet$Stub;->getBots()Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0
.end method
