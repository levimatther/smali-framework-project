.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;
.super Ljava/lang/Object;
.source "PostCallElements.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRemote:Lcom/gsma/services/rcs/contact/ContactId;

.field private note:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements$1;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements$1;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;->note:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getRemote()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public match(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setRemote(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;->note:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 123
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/postcall/PostCallElements;->note:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
