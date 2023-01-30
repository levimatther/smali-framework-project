.class Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;
.super Ljava/lang/Object;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllogutils/CallTypeIconsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resources"
.end annotation


# instance fields
.field public final blocked:Landroid/graphics/drawable/Drawable;

.field final hdCall:Landroid/graphics/drawable/Drawable;

.field final iconMargin:I

.field public final incoming:Landroid/graphics/drawable/Drawable;

.field public final missed:Landroid/graphics/drawable/Drawable;

.field public final outgoing:Landroid/graphics/drawable/Drawable;

.field public final rejected:Landroid/graphics/drawable/Drawable;

.field final videoCall:Landroid/graphics/drawable/Drawable;

.field public final voicemail:Landroid/graphics/drawable/Drawable;

.field final wifiCall:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CallTypeIconsView"

    const-string v1, "Resources: ---"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e3

    .line 275
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0800de

    .line 282
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0800e0

    const-string v3, "Resources: missed_type"

    .line 290
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 292
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0801fa

    if-eqz p2, :cond_0

    .line 296
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->getScaledBitmap(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 297
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f060069

    .line 298
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v2, 0x7f080129

    const-string v4, "Resources: reject_type"

    .line 301
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 302
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->getScaledBitmap(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 303
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->rejected:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0800d9

    if-eqz p2, :cond_2

    .line 309
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->getScaledBitmap(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    const-string v4, "Resources: block_type"

    .line 310
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->blocked:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0801f7

    if-eqz p2, :cond_3

    .line 316
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->getScaledBitmap(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 317
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    .line 318
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v0, 0x7f0801ca

    if-eqz p2, :cond_4

    .line 321
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->getScaledBitmap(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 322
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->hdCall:Landroid/graphics/drawable/Drawable;

    .line 323
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v0, 0x7f0801f0

    if-eqz p2, :cond_5

    .line 326
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_5

    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->getScaledBitmap(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 327
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->wifiCall:Landroid/graphics/drawable/Drawable;

    .line 328
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    goto :goto_6

    :cond_6
    const p1, 0x7f0700b3

    .line 330
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_6
    iput p1, p0, Lcom/android/dialer/calllogutils/CallTypeIconsView$Resources;->iconMargin:I

    return-void
.end method

.method private getScaledBitmap(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 344
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 345
    invoke-static {p2, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 346
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
