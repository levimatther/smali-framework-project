.class public Lcom/tct/cs/services/rcs/chatbot/BotId;
.super Lcom/gsma/services/rcs/contact/ContactId;
.source "BotId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static BOT_SERVICE_ID_IENDTIFY:Ljava/lang/String; = "botplatform"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tct/cs/services/rcs/chatbot/BotId;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIP_URI_HEADER:Ljava/lang/String; = "sip:"


# instance fields
.field private mServiceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/BotId$1;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/chatbot/BotId$1;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/BotId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotId;->mServiceId:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "sip:"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotId;->mContactId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 77
    :cond_1
    instance-of v2, p1, Lcom/gsma/services/rcs/contact/ContactId;

    if-nez v2, :cond_2

    return v1

    .line 80
    :cond_2
    check-cast p1, Lcom/gsma/services/rcs/contact/ContactId;

    .line 81
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/tct/cs/services/rcs/chatbot/BotId;->mContactId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotId;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotId;->mServiceId:Ljava/lang/String;

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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotId;->mServiceId:Ljava/lang/String;

    return-object v0
.end method
