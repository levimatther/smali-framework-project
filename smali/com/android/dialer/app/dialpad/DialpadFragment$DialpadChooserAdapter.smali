.class Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialpadChooserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
    }
.end annotation


# static fields
.field static final DIALPAD_CHOICE_ADD_NEW_CALL:I = 0x67

.field static final DIALPAD_CHOICE_RETURN_TO_CALL:I = 0x66

.field static final DIALPAD_CHOICE_USE_DTMF_DIALPAD:I = 0x65

.field private static final NUM_ITEMS:I = 0x3


# instance fields
.field private mChoiceItems:[Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 3318
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 3316
    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 3320
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3326
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v2, 0x7f1101e2

    .line 3328
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f6

    .line 3329
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x65

    invoke-direct {v1, v2, v3, v4}, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3334
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v2, 0x7f1101d1

    .line 3336
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3338
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f5

    .line 3337
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x66

    invoke-direct {v1, v2, v3, v4}, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3342
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    new-instance v1, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v2, 0x7f1101cf

    .line 3344
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3346
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0800f4

    .line 3345
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 v3, 0x67

    invoke-direct {v1, v2, p1, v3}, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 3358
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 3373
    iget-object p2, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c0070

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0902f1

    .line 3376
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 3377
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090189

    .line 3379
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 3380
    iget-object v0, p0, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/dialer/app/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
