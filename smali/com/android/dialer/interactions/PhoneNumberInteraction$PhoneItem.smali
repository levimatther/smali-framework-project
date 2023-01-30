.class Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/contacts/common/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/android/contacts/common/Collapser$Collapsible<",
        "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accountType:Ljava/lang/String;

.field dataSet:Ljava/lang/String;

.field id:J

.field label:Ljava/lang/String;

.field mimeType:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field type:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 379
    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem$1;

    invoke-direct {v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem$1;-><init>()V

    sput-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->dataSet:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->mimeType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/dialer/interactions/PhoneNumberInteraction$1;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/interactions/PhoneNumberInteraction$1;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0

    .line 376
    check-cast p1, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-virtual {p0, p1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->collapseWith(Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldCollapseWith(Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;Landroid/content/Context;)Z
    .locals 1

    .line 435
    iget-object p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, p2, v0, p1}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 0

    .line 376
    check-cast p1, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->shouldCollapseWith(Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 414
    iget-wide v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 415
    iget-object p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    iget-object p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    iget-object p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-wide v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 419
    iget-object p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget-object p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
