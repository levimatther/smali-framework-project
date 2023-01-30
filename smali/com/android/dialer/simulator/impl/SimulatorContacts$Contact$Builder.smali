.class abstract Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
.super Ljava/lang/Object;
.source "SimulatorContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation


# instance fields
.field private final emails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->phoneNumbers:Ljava/util/List;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->emails:Ljava/util/List;

    return-void
.end method

.method private static getPhotoStreamWithColor(I)Ljava/io/ByteArrayOutputStream;
    .locals 6

    .line 279
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x12c

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v2, 0xff

    const/16 v3, 0x4c

    const/16 v4, 0x9c

    const/16 v5, 0x23

    .line 281
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 282
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 283
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 p0, 0x96

    int-to-float p0, p0

    const/16 v3, 0x64

    int-to-float v3, v3

    .line 285
    invoke-virtual {v1, p0, p0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 287
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 288
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    return-object p0
.end method


# virtual methods
.method addEmail(Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->emails:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->emails:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setEmails(Ljava/util/List;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object p1

    return-object p1
.end method

.method addPhoneNumber(Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->phoneNumbers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object p1, p0, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->phoneNumbers:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setPhoneNumbers(Ljava/util/List;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    move-result-object p1

    return-object p1
.end method

.method abstract build()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact;
.end method

.method abstract setAccountName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
.end method

.method abstract setAccountType(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
.end method

.method setBluePhoto()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xaa

    const/16 v2, 0xe6

    .line 261
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->getPhotoStreamWithColor(I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setPhotoStream(Ljava/io/ByteArrayOutputStream;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    return-object p0
.end method

.method abstract setEmails(Ljava/util/List;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Email;",
            ">;)",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;"
        }
    .end annotation
.end method

.method abstract setIsStarred(Z)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
.end method

.method abstract setName(Ljava/lang/String;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
.end method

.method setOrangePhoto()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 3

    const/16 v0, 0xea

    const/16 v1, 0x95

    const/4 v2, 0x0

    .line 266
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->getPhotoStreamWithColor(I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setPhotoStream(Ljava/io/ByteArrayOutputStream;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    return-object p0
.end method

.method abstract setPhoneNumbers(Ljava/util/List;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$PhoneNumber;",
            ">;)",
            "Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;"
        }
    .end annotation
.end method

.method abstract setPhotoStream(Ljava/io/ByteArrayOutputStream;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
.end method

.method setPurplePhoto()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 3

    const/16 v0, 0x99

    const/16 v1, 0x5a

    const/16 v2, 0xa0

    .line 271
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->getPhotoStreamWithColor(I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setPhotoStream(Ljava/io/ByteArrayOutputStream;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    return-object p0
.end method

.method setRedPhoto()Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;
    .locals 3

    const/16 v0, 0xe3

    const/16 v1, 0x33

    const/16 v2, 0x1c

    .line 256
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->getPhotoStreamWithColor(I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;->setPhotoStream(Ljava/io/ByteArrayOutputStream;)Lcom/android/dialer/simulator/impl/SimulatorContacts$Contact$Builder;

    return-object p0
.end method
