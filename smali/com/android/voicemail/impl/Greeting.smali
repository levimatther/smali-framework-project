.class public Lcom/android/voicemail/impl/Greeting;
.super Ljava/lang/Object;
.source "Greeting.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/Greeting$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/voicemail/impl/Greeting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private defaultGreeting:Z

.field private duration:Ljava/lang/Long;

.field private greetName:Ljava/lang/String;

.field private mediaContent:[B

.field private number:Ljava/lang/String;

.field private sourceData:Ljava/lang/String;

.field private timestamp:Ljava/lang/Long;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    new-instance v0, Lcom/android/voicemail/impl/Greeting$1;

    invoke-direct {v0}, Lcom/android/voicemail/impl/Greeting$1;-><init>()V

    sput-object v0, Lcom/android/voicemail/impl/Greeting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    iput-object v1, p0, Lcom/android/voicemail/impl/Greeting;->timestamp:Ljava/lang/Long;

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Greeting;->timestamp:Ljava/lang/Long;

    .line 173
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Greeting;->number:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iput-object v1, p0, Lcom/android/voicemail/impl/Greeting;->duration:Ljava/lang/Long;

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Greeting;->duration:Ljava/lang/Long;

    .line 179
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Greeting;->sourceData:Ljava/lang/String;

    .line 180
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/voicemail/impl/Greeting;->uri:Landroid/net/Uri;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Greeting;->greetName:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/android/voicemail/impl/Greeting;->defaultGreeting:Z

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting;->mediaContent:[B

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z[B)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting;->timestamp:Ljava/lang/Long;

    .line 43
    iput-object p2, p0, Lcom/android/voicemail/impl/Greeting;->number:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/android/voicemail/impl/Greeting;->duration:Ljava/lang/Long;

    .line 45
    iput-object p4, p0, Lcom/android/voicemail/impl/Greeting;->sourceData:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/android/voicemail/impl/Greeting;->uri:Landroid/net/Uri;

    .line 47
    iput-object p6, p0, Lcom/android/voicemail/impl/Greeting;->greetName:Ljava/lang/String;

    .line 48
    iput-boolean p7, p0, Lcom/android/voicemail/impl/Greeting;->defaultGreeting:Z

    .line 49
    iput-object p8, p0, Lcom/android/voicemail/impl/Greeting;->mediaContent:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z[BLcom/android/voicemail/impl/Greeting$1;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p8}, Lcom/android/voicemail/impl/Greeting;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z[B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public getGreetName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->greetName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaContent()[B
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->mediaContent:[B

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceData()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->sourceData:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDefaultGreeting()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/voicemail/impl/Greeting;->defaultGreeting:Z

    return v0
.end method

.method public setDefaultGreeting(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/android/voicemail/impl/Greeting;->defaultGreeting:Z

    return-void
.end method

.method public setDuration(Ljava/lang/Long;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting;->duration:Ljava/lang/Long;

    return-void
.end method

.method public setGreetName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting;->greetName:Ljava/lang/String;

    return-void
.end method

.method public setMediaContent([B)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting;->mediaContent:[B

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting;->number:Ljava/lang/String;

    return-void
.end method

.method public setSourceData(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting;->sourceData:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/voicemail/impl/Greeting;->uri:Landroid/net/Uri;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 205
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->timestamp:Ljava/lang/Long;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 209
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->duration:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 213
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 216
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->duration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    :goto_1
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->sourceData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/voicemail/impl/Greeting;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 220
    iget-object p2, p0, Lcom/android/voicemail/impl/Greeting;->greetName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-boolean p2, p0, Lcom/android/voicemail/impl/Greeting;->defaultGreeting:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget-object p2, p0, Lcom/android/voicemail/impl/Greeting;->mediaContent:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
