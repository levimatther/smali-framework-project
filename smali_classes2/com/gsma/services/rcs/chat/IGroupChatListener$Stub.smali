.class public abstract Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;
.super Landroid/os/Binder;
.source "IGroupChatListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IGroupChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IGroupChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.chat.IGroupChatListener"

.field static final TRANSACTION_onComposingEvent:I = 0x2

.field static final TRANSACTION_onDeleted:I = 0x6

.field static final TRANSACTION_onMessageGroupDeliveryInfoChanged:I = 0x4

.field static final TRANSACTION_onMessageStatusChanged:I = 0x3

.field static final TRANSACTION_onMessagesDeleted:I = 0x7

.field static final TRANSACTION_onParticipantStatusChanged:I = 0x5

.field static final TRANSACTION_onStateChanged:I = 0x1

.field static final TRANSACTION_onUserNotify:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.chat.IGroupChatListener"

    .line 49
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IGroupChatListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.gsma.services.rcs.chat.IGroupChatListener"

    .line 60
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    return-object v0

    .line 64
    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/gsma/services/rcs/chat/IGroupChatListener;
    .locals 1

    .line 401
    sget-object v0, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IGroupChatListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/gsma/services/rcs/chat/IGroupChatListener;)Z
    .locals 1

    .line 391
    sget-object v0, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IGroupChatListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 395
    sput-object p0, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub$Proxy;->sDefaultImpl:Lcom/gsma/services/rcs/chat/IGroupChatListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 392
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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v2, 0x5f4e5446

    const/4 v7, 0x1

    const-string v3, "com.gsma.services.rcs.chat.IGroupChatListener"

    if-eq p1, v2, :cond_4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 185
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    invoke-virtual {p0, v0, v1}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onUserNotify(Ljava/lang/String;I)V

    return v7

    .line 175
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onMessagesDeleted(Ljava/lang/String;Ljava/util/List;)V

    return v7

    .line 167
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onDeleted(Ljava/util/List;)V

    return v7

    .line 150
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 161
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    invoke-virtual {p0, v0, v2, v1}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;I)V

    return v7

    .line 127
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    move-object v2, v0

    .line 138
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v8

    .line 145
    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V

    return v7

    .line 111
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return v7

    .line 94
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 105
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 106
    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V

    return v7

    .line 82
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    invoke-virtual {p0, v0, v2, v1}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onStateChanged(Ljava/lang/String;II)V

    return v7

    .line 77
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
