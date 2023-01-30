.class Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChoiceItem"
.end annotation


# instance fields
.field icon:Landroid/graphics/Bitmap;

.field id:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 3392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3393
    iput-object p1, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    .line 3394
    iput-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    .line 3395
    iput p3, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    return-void
.end method
