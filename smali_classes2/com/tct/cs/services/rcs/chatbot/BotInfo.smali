.class public Lcom/tct/cs/services/rcs/chatbot/BotInfo;
.super Ljava/lang/Object;
.source "BotInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tct/cs/services/rcs/chatbot/BotInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private backgroundImage:Ljava/lang/String;

.field private cacheControl:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private colour:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isVerified:Z

.field private name:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private serviceDate:Ljava/lang/String;

.field private serviceDescription:Ljava/lang/String;

.field private sms:Ljava/lang/String;

.field private tcPage:Ljava/lang/String;

.field private timeStamp:J

.field private verifiedBy:Ljava/lang/String;

.field private verifiedExpires:Ljava/lang/String;

.field private webSite:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 421
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo$1;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/chatbot/BotInfo$1;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->isVerified:Z

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedBy:Ljava/lang/String;

    .line 476
    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedExpires:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->isVerified:Z

    const/4 v1, 0x0

    .line 471
    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedBy:Ljava/lang/String;

    .line 476
    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedExpires:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->id:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->name:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->icon:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->email:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->sms:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->phoneNumber:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->webSite:Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->tcPage:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->serviceDescription:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->serviceDate:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->expires:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->cacheControl:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->etag:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->timeStamp:J

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->backgroundImage:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->address:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->category:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->isVerified:Z

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedBy:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedExpires:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 466
    iput-boolean v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->isVerified:Z

    const/4 v1, 0x0

    .line 471
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedBy:Ljava/lang/String;

    .line 476
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedExpires:Ljava/lang/String;

    move-object v1, p1

    .line 373
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->id:Ljava/lang/String;

    move-object v1, p2

    .line 374
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->name:Ljava/lang/String;

    move-object v1, p3

    .line 375
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->icon:Ljava/lang/String;

    move-object v1, p4

    .line 376
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->email:Ljava/lang/String;

    move-object v1, p5

    .line 377
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->sms:Ljava/lang/String;

    move-object v1, p6

    .line 378
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->phoneNumber:Ljava/lang/String;

    move-object v1, p7

    .line 379
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->webSite:Ljava/lang/String;

    move-object v1, p8

    .line 380
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->tcPage:Ljava/lang/String;

    move-object v1, p9

    .line 381
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->serviceDescription:Ljava/lang/String;

    move-object v1, p10

    .line 382
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->colour:Ljava/lang/String;

    move-object v1, p11

    .line 383
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->serviceDate:Ljava/lang/String;

    move-object v1, p12

    .line 384
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->expires:Ljava/lang/String;

    move-object v1, p13

    .line 385
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->cacheControl:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 386
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->etag:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 387
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->backgroundImage:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 388
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->address:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 389
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->category:Ljava/lang/String;

    move/from16 v1, p18

    .line 390
    iput-boolean v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->isVerified:Z

    move-object/from16 v1, p19

    .line 391
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedBy:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 392
    iput-object v1, v0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedExpires:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundImage()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->backgroundImage:Ljava/lang/String;

    return-object v0
.end method

.method public getBotCategory()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getColour()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->colour:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->expires:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceDate()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->serviceDate:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceDescription()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->serviceDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSms()Ljava/lang/String;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->sms:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->sms:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->sms:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->sms:Ljava/lang/String;

    return-object v0
.end method

.method public getTcPage()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->tcPage:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 360
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->timeStamp:J

    return-wide v0
.end method

.method public getVerifiedBy()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifiedExpires()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedExpires:Ljava/lang/String;

    return-object v0
.end method

.method public getWebSite()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->webSite:Ljava/lang/String;

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->isVerified:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->backgroundImage:Ljava/lang/String;

    return-void
.end method

.method public setBotCategory(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->cacheControl:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public setColour(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->colour:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->etag:Ljava/lang/String;

    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->expires:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setServiceDate(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->serviceDate:Ljava/lang/String;

    return-void
.end method

.method public setServiceDescription(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->serviceDescription:Ljava/lang/String;

    return-void
.end method

.method public setSms(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->sms:Ljava/lang/String;

    return-void
.end method

.method public setTcPage(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->tcPage:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 367
    iput-wide p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->timeStamp:J

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .line 491
    iput-boolean p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->isVerified:Z

    return-void
.end method

.method public setVerifiedBy(Ljava/lang/String;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedBy:Ljava/lang/String;

    return-void
.end method

.method public setVerifiedExpires(Ljava/lang/String;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedExpires:Ljava/lang/String;

    return-void
.end method

.method public setWebSite(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->webSite:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 440
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->sms:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->webSite:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->tcPage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->serviceDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->serviceDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->expires:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->cacheControl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->etag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 454
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->backgroundImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-boolean p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->isVerified:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedBy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    iget-object p2, p0, Lcom/tct/cs/services/rcs/chatbot/BotInfo;->verifiedExpires:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
