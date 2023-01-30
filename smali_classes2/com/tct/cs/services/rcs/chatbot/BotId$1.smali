.class final Lcom/tct/cs/services/rcs/chatbot/BotId$1;
.super Ljava/lang/Object;
.source "BotId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/BotId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tct/cs/services/rcs/chatbot/BotId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/chatbot/BotId;
    .locals 1

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 97
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/BotId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/BotId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/BotId$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/chatbot/BotId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tct/cs/services/rcs/chatbot/BotId;
    .locals 0

    .line 102
    new-array p1, p1, [Lcom/tct/cs/services/rcs/chatbot/BotId;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/BotId$1;->newArray(I)[Lcom/tct/cs/services/rcs/chatbot/BotId;

    move-result-object p1

    return-object p1
.end method
