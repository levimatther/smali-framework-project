.class public Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;
.super Ljava/lang/Object;
.source "CallComposerElements.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private composerid:Ljava/lang/String;

.field private importance:Ljava/lang/Boolean;

.field private location:Ljava/lang/String;

.field private mRemote:Lcom/gsma/services/rcs/contact/ContactId;

.field private subject:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements$1;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements$1;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->subject:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->importance:Ljava/lang/Boolean;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->location:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->composerid:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->subject:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->importance:Ljava/lang/Boolean;

    .line 84
    iput-object p3, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->location:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getComposerid()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->composerid:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRemote()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isImportance()Ljava/lang/Boolean;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->importance:Ljava/lang/Boolean;

    return-object v0
.end method

.method public match(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1, v0}, Lcom/gsma/services/rcs/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/contact/ContactId;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setComposerid(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->composerid:Ljava/lang/String;

    return-void
.end method

.method public setImportance(Z)V
    .locals 0

    .line 109
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->importance:Ljava/lang/Boolean;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->location:Ljava/lang/String;

    return-void
.end method

.method public setRemote(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->mRemote:Lcom/gsma/services/rcs/contact/ContactId;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->subject:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composerid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->composerid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",importance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->importance:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 190
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->subject:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->importance:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->location:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->composerid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object p2, p0, Lcom/tct/cs/services/rcs/enrichedcall/elements/callcomposer/CallComposerElements;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
