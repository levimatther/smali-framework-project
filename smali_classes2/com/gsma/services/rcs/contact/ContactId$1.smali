.class final Lcom/gsma/services/rcs/contact/ContactId$1;
.super Ljava/lang/Object;
.source "ContactId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/contact/ContactId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gsma/services/rcs/contact/ContactId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/BotId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tct/cs/services/rcs/chatbot/BotId;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/contact/ContactId$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/gsma/services/rcs/contact/ContactId;
    .locals 0

    .line 121
    new-array p1, p1, [Lcom/gsma/services/rcs/contact/ContactId;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/contact/ContactId$1;->newArray(I)[Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object p1

    return-object p1
.end method
