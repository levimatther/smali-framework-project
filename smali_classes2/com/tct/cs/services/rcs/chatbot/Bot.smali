.class public Lcom/tct/cs/services/rcs/chatbot/Bot;
.super Ljava/lang/Object;
.source "Bot.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tct/cs/services/rcs/chatbot/Bot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private verified:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/Bot$1;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/chatbot/Bot$1;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/Bot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->id:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->name:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->icon:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->verified:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVerified()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->verified:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->name:Ljava/lang/String;

    return-void
.end method

.method public setVerified(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->verified:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 111
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/Bot;->verified:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
