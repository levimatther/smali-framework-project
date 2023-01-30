.class final Lcom/tct/cs/services/rcs/chatbot/BotInfo$1;
.super Ljava/lang/Object;
.source "BotInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/BotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tct/cs/services/rcs/chatbot/BotInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/chatbot/BotInfo;
    .locals 1

    .line 424
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/BotInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/BotInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/chatbot/BotInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tct/cs/services/rcs/chatbot/BotInfo;
    .locals 0

    .line 429
    new-array p1, p1, [Lcom/tct/cs/services/rcs/chatbot/BotInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/BotInfo$1;->newArray(I)[Lcom/tct/cs/services/rcs/chatbot/BotInfo;

    move-result-object p1

    return-object p1
.end method
