.class public Lcom/gsma/services/rcs/contact/ContactId;
.super Ljava/lang/Object;
.source "ContactId.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mContactId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/contact/ContactId$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    return-void
.end method

.method public static getSafeString(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gsma/rcs/utils/logger/Logger;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 151
    :cond_1
    instance-of v2, p1, Lcom/gsma/services/rcs/contact/ContactId;

    if-nez v2, :cond_2

    return v1

    .line 154
    :cond_2
    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    .line 155
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getBotId()Lcom/tct/cs/services/rcs/chatbot/BotId;
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/gsma/services/rcs/contact/ContactId;->isBot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/BotId;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tct/cs/services/rcs/chatbot/BotId;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isBot()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    sget-object v1, Lcom/tct/cs/services/rcs/chatbot/BotId;->BOT_SERVICE_ID_IENDTIFY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/gsma/services/rcs/contact/ContactId;->isBot()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object p2, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
