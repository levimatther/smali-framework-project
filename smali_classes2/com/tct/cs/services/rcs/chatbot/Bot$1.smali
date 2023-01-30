.class final Lcom/tct/cs/services/rcs/chatbot/Bot$1;
.super Ljava/lang/Object;
.source "Bot.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/Bot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tct/cs/services/rcs/chatbot/Bot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/chatbot/Bot;
    .locals 4

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v3, Lcom/tct/cs/services/rcs/chatbot/Bot;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/tct/cs/services/rcs/chatbot/Bot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/Bot$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tct/cs/services/rcs/chatbot/Bot;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tct/cs/services/rcs/chatbot/Bot;
    .locals 0

    .line 100
    new-array p1, p1, [Lcom/tct/cs/services/rcs/chatbot/Bot;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/tct/cs/services/rcs/chatbot/Bot$1;->newArray(I)[Lcom/tct/cs/services/rcs/chatbot/Bot;

    move-result-object p1

    return-object p1
.end method
